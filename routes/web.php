<?php

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

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/lang/{locale}', function ($locale) {
    if (in_array($locale, ['en', 'zh-CN'])) {
        \Cookie::queue(\Cookie::forever('lang', $locale));
    }
    
    return back()->withInput();
});
