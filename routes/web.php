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

Route::get('/', 'HomeController@index');
Route::get('/index2', 'Web\Index2Controller@index');
Route::get('/index3', 'Web\Index3Controller@index');
Route::get('/about', 'Web\AboutController@index');
Route::get('/contact', 'Web\ContactController@index');
Route::get('/blog', 'Web\BlogController@index');
Route::get('/courses', 'Web\CourseController@index');
Route::get('/faq', 'Web\FaqController@index');
Route::get('/membership', 'Web\MembershipController@index');
Route::get('/portfolio', 'Web\PortfolioController@index');

Route::get('/loginuser', 'Web\LoginUserController@index')->name('loginuser');
Route::get('/registeruser/{id}', 'HomeController@register')->name('registeruser');
Route::get('/event', 'Web\EventController@index');
Route::get('/event-details', 'Web\EventDetailsController@index');

Route::get('/payment', 'Web\PaymentController@index');

// route for processing payment
Route::post('/paypal', 'Web\PaymentController@payWithpaypal');

// route for check status of the payment
Route::get('/status', 'Web\PaymentController@getPaymentStatus');

Route::post('/edit-profile', 'Web\ProfileController@updateProfile')->name('edit-profile');

//composer.bat
//@echo OFF
//:: in case DelayedExpansion is on and a path contains !
//setlocal DISABLEDELAYEDEXPANSION
//php "%~dp0composer.phar" %*


Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
Route::get('/redirectgoogle', 'GoogleLoginController@redirectToProvider')->name('redirectgoogle');
Route::get('/callbackgoogle', 'GoogleLoginController@handleProviderCallback')->name('callbackgoogle');
Route::get('/redirect', 'SocialAuthFacebookController@redirect')->name('redirect');
Route::get('/callback', 'SocialAuthFacebookController@callback');
Route::get('/profile', 'Web\ProfileController@index')->name('profile');