<?php

//Route::controller('/', 'TodoController');

Route::get('/', 'TodoController@getIndex');

Route::get('/done/{id}', 'TodoController@getDone');
Route::get('/delete/{id}', 'TodoController@getDelete');

Route::post('/add', 'TodoController@postAdd');
Route::post('/update/{id}', 'TodoController@postUpdate');