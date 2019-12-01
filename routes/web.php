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
Route::get('/courses/create', 'CourseController@createForm')->name('courses.create');
Route::post('/courses/create', 'CourseController@store');

Route::get('/courses', 'CourseController@list')->name('courses.list');

