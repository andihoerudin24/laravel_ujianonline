<?php

use Illuminate\Http\Request;

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::resource('user', 'Api\User\UserController')->except([
    'create', 'edit'
]);

Route::post('user/login', 'Api\User\UserController@login');
Route::get('user/logout/{iduser}', 'Api\User\UserController@logout');
Route::get('total_siswa', 'Api\User\UserController@total');


Route::resource('soal', 'Api\Soal\SoalController')->except([
    'create', 'edit'
]);
//update soal aktif da n nonaktif
Route::get('soal/status/{soal}', 'Api\Soal\SoalController@status');

//peraturan
Route::get('peraturan', 'Api\Peraturan\PeraturanController@index');
Route::put('peraturan', 'Api\Peraturan\PeraturanController@update');

Route::get('peraturan/testing', 'Api\Peraturan\PeraturanController@testing');

//hasil ujian
Route::get('hasil', 'Api\Hasil\HasilController@index');
Route::get('dashboard', 'Api\Hasil\HasilController@dashboard');
