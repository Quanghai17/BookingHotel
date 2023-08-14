<?php

use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Exports\CustomerExport;
use Maatwebsite\Excel\Facades\Excel;

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

Route::get('/', [\App\Http\Controllers\HomeController::class , 'index'])->name('home');
Route::get('/about', [\App\Http\Controllers\AboutController::class , 'index'])->name('about');
Route::get('/rooms', [\App\Http\Controllers\RoomController::class , 'index'])->name('rooms');
Route::get('/collections/{slug}', [\App\Http\Controllers\RoomController::class , 'collection'])->name('cleection');
Route::get('/rooms/{slug}', [\App\Http\Controllers\RoomController::class , 'show'])->name('room.show');
Route::get('/bookDetail/{slug}', [\App\Http\Controllers\RoomController::class , 'bookDetail'])->name('room.bookDetail');
Route::get('/book', [\App\Http\Controllers\BookController::class , 'index'])->name('booking');
Route::post('/book', [\App\Http\Controllers\BookController::class , 'store'])->name('book');
Route::get('/cuisines', [\App\Http\Controllers\CuisinesController::class , 'index'])->name('cuisines');
Route::get('/services', [\App\Http\Controllers\ServiceController::class , 'index'])->name('service');
Route::get('/services/{slug}', [\App\Http\Controllers\ServiceController::class , 'show'])->name('service.show');
Route::get('/galleries', [\App\Http\Controllers\GalleryController::class , 'index'])->name('galleries');
Route::get('/contact', [\App\Http\Controllers\ContactController::class , 'index'])->name('contact');
Route::post('/contacts', [\App\Http\Controllers\ContactController::class , 'store'])->name('contacts');
Route::get('/posts', [\App\Http\Controllers\PostController::class , 'index'])->name('posts');
Route::get('/posts/{slug}', [\App\Http\Controllers\PostController::class , 'show'])->name('posts.show');
Route::get('/search',[\App\Http\Controllers\PostController::class , 'search'])->name('search');

Route::get('/greeting/{locale}', [\App\Http\Controllers\LanguageController::class, 'changeLanguage'])->name('lang');

Route::get('customers/export', function () {
    return Excel::download(new CustomerExport, 'customers.xlsx');
});


require __DIR__.'/auth.php';
require __DIR__.'/default.php';
