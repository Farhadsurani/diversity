@extends('admin.layouts.app')

@section('title')
    {{ $title }}
@endsection

@section('content')
    <div class="content">
        <div class="box box-primary">
            <div class="box-body">
                <div class="row" style="padding-left: 20px">
                    <dl class="dl-horizontal">
                        @include('admin.chapters.show_fields')
                    </dl>
                    {!! Form::open(['route' => ['admin.chapters.destroy', $chapter->id], 'method' => 'delete']) !!}
                    <div class='btn-group'>
                        @ability('super-admin' ,'chapters.show')
                        <a href="{!! route('admin.chapters.index') !!}" class="btn btn-default">
                            <i class="glyphicon glyphicon-arrow-left"></i> Back
                        </a>
                        @endability
                    </div>
                    <div class='btn-group'>
                        @ability('super-admin' ,'chapters.edit')
                        <a href="{{ route('admin.chapters.edit', $chapter->id) }}" class='btn btn-default'>
                            <i class="glyphicon glyphicon-edit"></i> Edit
                        </a>
                        @endability
                    </div>
                    <div class='btn-group'>
                        @ability('super-admin' ,'chapters.destroy')
                        {!! Form::button('<i class="glyphicon glyphicon-trash"></i> Delete', [
                            'type' => 'submit',
                            'class' => 'btn btn-danger',
                            'onclick' => "confirmDelete($(this).parents('form')[0]); return false;"
                        ]) !!}
                        @endability
                    </div>
                    {!! Form::close() !!}
                </div>
            </div>
        </div>
    </div>
    <div class="content">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h2 class="box-title">Add Pages</h2>
            </div>
            <div class="box-body">
                <div class="row datatable-action-urls"
                     data-action-create="{{route('admin.chapter-pages.create',['chapter_id'=>$chapter->id])}}">
                    <div class="col-sm-12">
                        @include('admin.pages.table')
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection