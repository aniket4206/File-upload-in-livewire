<?php

use App\Http\Controllers\CommentController;
use App\Http\Controllers\ImageController;
use App\Http\Controllers\ImageUploadController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\TagController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\VideoController;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    // sleep(5);
    App\Jobs\SlowJob::dispatch();

    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

// Route::get('/form', [App\Http\Controllers\AuthorizationController::class, 'index'])->name('form');

Route::get('/form', [App\Http\Controllers\AuthorizationController::class, 'showForm'])->name('form.show');
Route::post('/form', [App\Http\Controllers\AuthorizationController::class, 'handleForm'])->name('form.handle');

Route::resource('user', UserController::class);
Route::resource('image', ImageController::class);
Route::resource('post', PostController::class);

Route::resource('video', VideoController::class);
Route::resource('comment', CommentController::class);

Route::resource('tag', TagController::class);

Route::resource('upload', ImageUploadController::class);


Route::get('upload/download/{id}', [App\Http\Controllers\ImageUploadController::class, 'download'])->name('upload.download');


