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
/**
 * Authentication
 */

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
/**
 * OAuth(OpenAuthentication)
 */
Route::get('/oauth/google', 'OAuthController@redirectToProvider');
Route::get('/oauth/callback', 'OAuthController@handleProviderCallback');

/**
 * courses
 */
Route::get('/courses/create', 'CourseController@createForm')->name('courses.create')->middleware('auth');
Route::post('/courses/create', 'CourseController@store')->middleware('auth');


Route::get('/courses', 'CourseController@list')->name('courses.list');

Route::get('/courses/playlist/{course_id}', 'CourseController@showPlaylist')->name('courses.playlist')->middleware('auth');

Route::post('/courses/{id}/enroll', 'CourseController@enroll')->name('courses.enroll')->middleware('auth');

Route::post('/courses/{id}/comment', 'CourseController@comment')->name('courses.comment')->middleware('auth');









