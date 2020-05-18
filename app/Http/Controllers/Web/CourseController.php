<?php

namespace App\Http\Controllers\Web;

use App\Helper\BreadcrumbsRegister;
use App\DataTables\Admin\ContactUsDataTable;
use App\Http\Controllers\Controller;

use App\Http\Requests\Admin\CreateContactUsRequest;
use App\Http\Requests\Admin\UpdateContactUsRequest;
use App\Repositories\Admin\ChapterRepository;
use App\Repositories\Admin\ContactUsRepository;
use App\Http\Controllers\AppBaseController;
use App\Repositories\Admin\CourseDetailsRepository;
use App\Repositories\Admin\CourseRepository;
use App\Repositories\Admin\VideoRepository;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Auth;
use Laracasts\Flash\Flash;

/**
 * Class CoursesController
 * @package App\Http\Controllers\Web
 */
class CourseController extends Controller
{
    /** ModelName */
    private $ModelName;

    /** BreadCrumbName */
    private $BreadCrumbName;

    private $courseRepository;

    private $chapterRepository;

    private $videoRepository;

    public function __construct(CourseRepository $courseRepo, ChapterRepository $chapterRepo, VideoRepository $videoRepo)
    {
//        $this->middleware('auth');
        $this->courseRepository = $courseRepo;
        $this->chapterRepository = $chapterRepo;
        $this->videoRepository = $videoRepo;
    }

    /**
     * Display a listing of the ContactUs.
     *
     * @param ContactUsDataTable $contactUsDataTable
     * @return Response
     */
    public function index()
    {
//        $user = Auth::user();

        $course = $this->courseRepository->all();
        return view('web.courses')->with([
            'course' => $course]);

    }

    /**
     * Show the form for creating a new ContactUs.
     *
     * @return Response
     */
    public function create()
    {
        BreadcrumbsRegister::Register($this->ModelName, $this->BreadCrumbName);
        return view('admin.contactus.create');
    }

    /**
     * Store a newly created ContactUs in storage.
     *
     * @param CreateContactUsRequest $request
     *
     * @return Response
     */
    public function store(CreateContactUsRequest $request)
    {
        $contactUs = $this->contactUsRepository->saveRecord($request);

        Flash::success('Contact Us saved successfully.');
        return redirect(route('admin.contactus.index'));
    }

    /**
     * Display the specified ContactUs.
     *
     * @param int $id
     *
     * @return Response
     */
    public function show($id)
    {
        $contactUs = $this->contactUsRepository->findWithoutFail($id);
        if (empty($contactUs)) {
            Flash::error('Contact Us not found');
            return redirect(route('admin.contactus.index'));
        }

        BreadcrumbsRegister::Register($this->ModelName, $this->BreadCrumbName, $contactUs);
        return view('admin.contactus.show')->with('contactUs', $contactUs);
    }

    /**
     * Show the form for editing the specified ContactUs.
     *
     * @param int $id
     *
     * @return Response
     */
    public function edit($id)
    {
        $contactUs = $this->contactUsRepository->findWithoutFail($id);
        if (empty($contactUs)) {
            Flash::error('Contact Us not found');
            return redirect(route('admin.contactus.index'));
        }

        BreadcrumbsRegister::Register($this->ModelName, $this->BreadCrumbName, $contactUs);
        return view('admin.contactus.edit')->with('contactUs', $contactUs);
    }

    /**
     * Update the specified ContactUs in storage.
     *
     * @param int $id
     * @param UpdateContactUsRequest $request
     *
     * @return Response
     */
    public function update($id, UpdateContactUsRequest $request)
    {
        $contactUs = $this->contactUsRepository->findWithoutFail($id);
        if (empty($contactUs)) {
            Flash::error('Contact Us not found');
            return redirect(route('admin.contactus.index'));
        }

        $contactUs = $this->contactUsRepository->updateRecord($request, $id);

        Flash::success('Contact Us updated successfully.');
        return redirect(route('admin.contactus.index'));
    }

    /**
     * Remove the specified ContactUs from storage.
     *
     * @param int $id
     *
     * @return Response
     */
    public function destroy($id)
    {
        $contactUs = $this->contactUsRepository->findWithoutFail($id);
        if (empty($contactUs)) {
            Flash::error('Contact Us not found');
            return redirect(route('admin.contactus.index'));
        }

        $this->contactUsRepository->deleteRecord($id);

        Flash::success('Contact Us deleted successfully.');
        return redirect(route('admin.contactus.index'));
    }

    public function chaptersList($id){

        $chapters = $this->chapterRepository->findWhere(['course_id' => $id]);
        if (empty($chapters)) {
            Flash::error('Chapters not found');
            return redirect(route('web.courses'));
        }

        return view('web.chapters')->with([
            'chapters' => $chapters
        ]);
    }

    public function watchVideo($id){

        //Take out the Course ID from this chapter
        $chapters = $this->chapterRepository->findWhere(['id' => $id]);
        if (empty($chapters)) {
            Flash::error('Video not found');
            return redirect(route('web.chapters'));
        }
        $courses = $this->courseRepository->findWhere(['id' => $chapters[0]->course_id]);
        if (empty($courses)) {
            Flash::error('Video not found');
            return redirect(route('web.chapters'));
        }

        //Take out all the Chapters associated with the Course ID
        $all_chapters = $this->chapterRepository->findWhere(['course_id' => $courses[0]->id]);
        if (empty($all_chapters)) {
            Flash::error('Video not found');
            return redirect(route('web.chapters'));
        }

        $video = $this->videoRepository->findWhere(['chapter_id' => $id]);
        if (empty($video)) {
            Flash::error('Video not found');
            return redirect(route('web.chapters'));
        }

        //Send that Chapter List in the view alongwith the video associated with it
        return view('web.watch-video')->with([
            'video' => $video,
            'all_chapters' => $all_chapters
        ]);
    }

    public function courseDetails($id){

        $course_details = $this->courseRepository->findWhere(['id' => $id]);
        $chapters = $this->chapterRepository->findWhere(['course_id' => $id]);

        if (empty($course_details)) {
            Flash::error('Course Details not found');
            return redirect(route('web.courses'));
        }

        return view('web.course-details')->with([
            'course_details' => $course_details,
            'chapters' => $chapters
        ]);
    }
}