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

// 切换语言
Route::get('lang/{locale}', function ($locale) {
    if (in_array($locale, ['en', 'zh-CN'])) {
        \Cookie::queue(\Cookie::forever('lang', $locale));
    }
    
    return back()->withInput();
});

// 认证
Auth::routes();

// 关于我们
Route::get('about', 'AboutController@index')->name('about.index');

// 通过身份验证的系统允许的操作
Route::group(['middleware' => 'auth'], function () {
    // 主页
    Route::get('/', 'HomeController@index')->name('home');

    // 留言（每个用户最多留言十次且不能编辑）
    Route::prefix('comments')->group(function() {
        // 留言板
        Route::get('/', 'CommentsController@index')->name('comments.index');
        // 历史留言
        Route::get('show', 'CommentsController@show')->name('comments.show');
        // 留言提交
        Route::post('store', 'CommentsController@store')->name('comments.store');
        // 留言删除
        Route::post('del', 'CommentsController@destroy')->name('comments.del');
    });
});