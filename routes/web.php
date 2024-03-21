<?php

use Illuminate\Support\Facades\Route;
use App\Services\PostService;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;

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

Route::group(['prefix' => LaravelLocalization::setLocale()], function () {
    Route::get('/', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
    Route::get('/about', [App\Http\Controllers\AboutController::class, 'index'])->name('about');
    Route::get('/post/{id}', [App\Http\Controllers\HomeController::class, 'show'])->name('show');
    Route::get('/post-service', [App\Services\PostService::class, 'getAllPosts']);
});

Route::get('/hello', function(){
    return "hello";
});