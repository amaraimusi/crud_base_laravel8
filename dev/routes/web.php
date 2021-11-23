<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

// Neko
Route::get('neko', 'App\Http\Controllers\NekoController@index');
Route::post('neko/ajax_reg', 'App\Http\Controllers\NekoController@ajax_reg');
Route::post('neko/ajax_delete', 'App\Http\Controllers\NekoController@ajax_delete');
Route::post('neko/auto_save', 'App\Http\Controllers\NekoController@auto_save');
Route::post('neko/ajax_pwms', 'App\Http\Controllers\NekoController@ajax_pwms');
Route::get('neko/csv_download', 'App\Http\Controllers\NekoController@csv_download');
Route::post('neko/bulk_reg', 'App\Http\Controllers\NekoController@bulk_reg');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
