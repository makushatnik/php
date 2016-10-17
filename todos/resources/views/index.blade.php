@extends('layout')

@section('content')
	<section id="data_section" class="todo">
        <ul class="todo-controls">
            <li><img src="img/add.png" width="14px" onclick="show_form('add_task');" /></li>
        </ul>
        <ul id="task_list" class="todo-list">
        @foreach ($todos as $todo)
            @if ($todo->status)
                <li id="{{ $todo->id }}" class="done">
                    <a href="#" class="toggle"></a> 
                    <span id="span_{{ $todo->id }}">{{ $todo->title }}</span>
                    <a href="#" onclick="edit_task('{{ $todo->id }}','{{ $todo->title }}');"><span class="glyphicon glyphicon-pencil"></span></a>
                    <a href="#" onclick="delete_task('{{ $todo->id }}');"><span class="glyphicon glyphicon-trash"></span></a>
                </li>
            @else
                <li id="{{ $todo->id }}">
                    <a href="#" class="toggle" onclick="task_done('{{ $todo->id }}')"></a> 
                    <span id="span_{{ $todo->id }}">{{ $todo->title }}</span>
                    <a href="#" onclick="edit_task('{{ $todo->id }}','{{ $todo->title }}');"><span class="glyphicon glyphicon-pencil"></span></a>
                    <a href="#" onclick="delete_task('{{ $todo->id }}');"><span class="glyphicon glyphicon-trash"></span></a>
                </li>
            @endif
        @endforeach
        </ul>
    </section>
    
    <section id="form_section">
	    <form id="add_task" class="todo" style="display: none;">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
	        <input type="text" id="task_title" name="title" value="" placeholder="Enter a task name">
	        <button name="submit" class="btn pull-right">Add Task</button>
	    </form>

	    <form id="edit_task" class="todo" style="display: none;">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
	        <input type="hidden" id="edit_task_id" value="">
	        <input type="text" id="edit_task_title" name="title" value="">
	        <button name="submit" class="btn pull-right">Edit Task</button>
	    </form>
    </section>
@stop