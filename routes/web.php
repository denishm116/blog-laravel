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



Route::get('/','BlogController@index');
Route::get('/test/ajaxTest/{slug?}', 'BlogController@ajaxTest');
Route::get('/blog/article/toggle/{slug?}', 'BlogController@toggle')->name('toggle');


Route::get('blog/category/{slug?}', 'BlogController@category')->name('category');
Route::get('blog/article/{slug?}', 'BlogController@article')->name('article');
Route::get('blog/add', 'BlogController@addpost')->name('addpost');
Route::post('blog/add/{user_id?}', 'BlogController@savepost')->name('savepost');
Route::match(['get', 'post'], 'blog/edit/{slug?}', 'BlogController@editpost')->name('editpost');
Route::get('blog/delete/{slug?}', 'BlogController@deletepost')->name('deletepost');
//Route::match(['get', 'post'], 'blog/update/{slug?}', 'BlogController@update')->name('update');
Route::post('blog/update/', 'BlogController@update')->name('update');

Route::group(['prefix'=>'comment', 'middleware' => 'auth'], function () {
    Route::match(['get', 'post'], 'create/{slug?}', 'CommentController@create')->name('comment');
    Route::get('reply/{comment_id}', 'AnswerController@create')->name('reply');
    Route::post('answer/', 'AnswerController@store')->name('answer');
});

Route::group(['prefix' => 'admin', 'namespace'=>'Admin', 'middleware' => [ 'web', 'auth', 'admincheck']], function () {
    Route::get('/', 'DashboardController@dashboard')->name('admin.index');
    Route::resource('/category', 'CategoryController', ['as' => 'admin']);
    Route::resource('/article', 'ArticleController', ['as' => 'admin']);
    Route::group(['prefix' => 'user_managment', 'namespace' => 'UserManagment'], function () {
        Route::resource('user', 'UserController', ['as' => 'admin.user_managment']);
    });

});


Route::group(['middleware' => 'web'], function () {
    Auth::routes();
    Route::get('/home', 'BlogController@index')->name('home');
});








