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

// 重新发送验证邮件
Route::view('verification/resend', 'auth/resend-verificate-mail-form')->name('verification.resend.form');
Route::post('verification/resend', 'Auth\VerificateMailController@resendVerificateMail')->name('verification.resend.sub');
// 邮件验证
Route::get('verification/{token}', 'Auth\VerificateMailController@getVerification');

// 通过身份验证的系统允许的操作
Route::group(['middleware' => 'auth'], function () {
    // 主页
    Route::get('/', 'HomeController@index')->name('home');

    // 留言（每个用户最多留言十次且不能编辑）
    Route::resource('comments', 'CommentsController', ['only' => ['index', 'store', 'destroy']]);
    Route::get('comments/show', 'CommentsController@show')->name('comments.show');

    // 商城
    Route::resource('modules/shop', 'Modules\ShopController', ['only' => ['index', 'show']]);
    // 设置
    Route::resource('modules/option', 'Modules\OptionController');
    // 我的
    Route::resource('modules/mine', 'Modules\MineController');
    // 论坛
    Route::resource('modules/forum', 'Modules\ForumController');
    // 新闻
    Route::resource('modules/news', 'Modules\NewsController', ['only' => ['index', 'show']]);
});