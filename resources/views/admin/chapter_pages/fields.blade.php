<!-- Chapter Id Field -->


{!! Form::hidden('chapter_id', isset($chapter_id) ?$chapter_id :null, ['class' => 'form-control', 'placeholder'=>'Enter chapter_id']) !!}


<!-- Number Field -->
<div class="form-group col-sm-6">
    {!! Form::label('number', 'Number:') !!}
    {!! Form::text('number', null, ['class' => 'form-control', 'placeholder'=>'Enter number']) !!}
</div>

<!-- Text Field -->
<div class="form-group col-sm-6">
    {!! Form::label('text', 'Text:') !!}
    {!! Form::text('text', null, ['class' => 'form-control', 'placeholder'=>'Enter text']) !!}
</div>

<!-- Submit Field -->
<div class="form-group col-sm-12">
    {!! Form::submit('Save', ['class' => 'btn btn-primary']) !!}
    @if(!isset($chapterPage))
        {!! Form::submit(__('Save And Add Translations'), ['class' => 'btn btn-primary', 'name'=>'translation']) !!}
    @endif
    {!! Form::submit(__('Save And Add More'), ['class' => 'btn btn-primary', 'name'=>'continue']) !!}
    <a href="{!! route('admin.chapter-pages.index') !!}" class="btn btn-default">Cancel</a>
</div>