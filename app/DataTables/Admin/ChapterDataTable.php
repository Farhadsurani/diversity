<?php

namespace App\DataTables\Admin;

use App\Helper\Util;
use App\Models\Chapter;
use Yajra\DataTables\Services\DataTable;
use Yajra\DataTables\EloquentDataTable;

/**
 * Class ChapterDataTable
 * @package App\DataTables\Admin
 */
class ChapterDataTable extends DataTable
{
    public $course_id = null;

    /**
     * Build DataTable class.
     *
     * @param mixed $query Results from query() method.
     * @return \Yajra\DataTables\DataTableAbstract
     */
    public function dataTable($query)
    {
        $dataTable = new EloquentDataTable($query);

        return $dataTable->addColumn('action', 'admin.chapters.datatables_actions');
    }

    /**
     * Get query source of dataTable.
     *
     * @param \App\Models\Chapter $model
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function query(Chapter $model)
    {
        $query = $model->newQuery();
        if (!is_null($this->course_id)) {
            $query->where('course_id', $this->course_id);
        }
        return $query;
//        return $model->newQuery();
    }

    /**
     * Optional method if you want to use html builder.
     *
     * @return \Yajra\DataTables\Html\Builder
     */
    public function html()
    {
        $buttons = [];
        if (\Entrust::can('chapters.create') || \Entrust::hasRole('super-admin')) {
            $buttons = ['create'];
        }
        $buttons = array_merge($buttons, [
            'export',
            'print',
            'reset',
            'reload',
        ]);
        return $this->builder()
            ->columns($this->getColumns())
            ->minifiedAjax()
            ->addAction(['width' => '80px', 'printable' => false])
            ->parameters(array_merge(Util::getDataTableParams(), [
                'dom'     => 'Blfrtip',
                'order'   => [[0, 'desc']],
                'buttons' => $buttons,
            ]));
    }

    /**
     * Get columns.
     *
     * @return array
     */
    protected function getColumns()
    {
        return [
            'name'
        ];
    }

    /**
     * Get filename for export.
     *
     * @return string
     */
    protected function filename()
    {
        return 'chaptersdatatable_' . time();
    }
}