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
    return view('index');
});
Route::get('/index2', function () {
    return view('index2');
});
Route::get('/index3', function () {
    return view('index3');
});
Route::get('/about', function () {
    return view('about');
});
Route::get('/contact', function () {
    return view('contact');
});
Route::get('/blog', function () {
    return view('blog');
});
Route::get('/courses', function () {
    return view('courses');
});
Route::get('/faq', function () {
    return view('faq');
});
Route::get('/membership', function () {
    return view('membership');
});
Route::get('/portfolio', function () {
    return view('portfolio');
});
Route::get('/profile', function () {
    return view('profile');
});
Route::get('/loginuser', function () {
    return view('loginuser');
});
Route::get('/registeruser', function () {
    return view('registeruser');
});
Route::get('/event', function () {
    return view('event');
});
Route::get('/event-details', function () {
    return view('event-details');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
