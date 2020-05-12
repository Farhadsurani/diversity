<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Repositories\Admin\CourseRepository;
use App\Repositories\Admin\EventRepository;
use App\Repositories\Admin\NewsRepository;
use Illuminate\Http\Request;

/**
 * Class HomeController
 * @package App\Http\Controllers
 */
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    private $courseRepository;
    private $eventRepository;
    private $newsRepository;

    public function __construct(CourseRepository $courseRepo, EventRepository $eventRepo, NewsRepository $newsRepo)
    {
        //$this->middleware('auth');
        $this->courseRepository = $courseRepo;
        $this->eventRepository = $eventRepo;
        $this->newsRepository = $newsRepo;
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $course = $this->courseRepository->all();
        $event = $this->eventRepository->all();
        $news = $this->newsRepository->all();
        return view('index')->with([
            'course' => $course,
            'event'  => $event,
            'news'   => $news
        ]);
    }

    public function register(Request $request, $id)
    {
        return view('web.registeruser')->with([
            'subscription_id' => $id
        ]);
    }
}
