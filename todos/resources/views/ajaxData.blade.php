@foreach ($todos as $todo)
	<li id="{{ $todo->id }}">
        <a href="#" class="toggle" onclick="task_done('{{ $todo->id }}')"></a>
        <span id="span_{{ $todo->id }}">{{ $todo->title }}</span>
        <a href="#" class="glyphicon glyphicon-pencil" onclick="edit_task('{{ $todo->id }}','{{ $todo->title }}');"></a>
        <a href="#" class="glyphicon glyphicon-trash" onclick="delete_task('{{ $todo->id }}');"></a>
    </li>
@endforeach