<?php

namespace App\Http\Controllers;

use App\Models\Todo;
use Illuminate\Support\Facades\Request;
use Illuminate\Support\Facades\Input;
use Illuminate\Routing\Controller as BaseController;

/**
* 
*/
class TodoController extends BaseController
{
	public $restful = true;

	public function getIndex() {
		$todos = Todo::all();
		return view('index', compact('todos'));
	}

	public function getDelete($id) {
		if ($id == null) return 'Invalid ID!';
		if (Request::ajax()) {
			$todo = Todo::whereId($id)->first();
			$todo->delete();
			return "OK";
		}
	}

	public function getDone($id) {
		if (Request::ajax()) {
			if (!isset($id)) return 'Invalid ID!';
			$todo = Todo::find($id);
			$todo->status = 1;
			$todo->save();
			return "OK";
		}
	}

	public function postAdd()
	{
		if (Request::ajax()) {
			$todo = new Todo();
			$todo->title = Input::get('title');
			$todo->save();
			$last_todo = $todo->id;
			$todos = Todo::whereId($last_todo)->get();
			return view('ajaxData', compact('todos'));
		} else {
			return 'Not allowed!';
		}
	}

	//TODO csrf mistake!
	public function postUpdate($id = null)
	{
		if (Request::ajax()) {
			if ($id == null) return 'Incorrect Task ID!';
			$task = Todo::find($id);
			if (!$task) return 'Not Found!';
			$task->title = Input::get('title');
			$task->save();
			return 'OK';
		} else {
			return 'Not allowed!';
		}
	}
}