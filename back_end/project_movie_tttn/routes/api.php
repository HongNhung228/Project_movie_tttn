<?php

use App\Http\Controllers\MovieController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::prefix('movies/')->name('movies.')->group(function() {
    
    Route::get('getAllGenres', [MovieController::class, 'getAllGenres'])->name('get-all-genres');

    // Get now playing
    Route::get('getNowPlaying', [MovieController::class, 'getNowPlaying'])->name('get-now-playing');

    // Get popular
    Route::get('getPopular', [MovieController::class, 'getPopular'])->name('get-popular');

    // Get upComing
    Route::get('getUpcoming', [MovieController::class, 'getUpcoming'])->name('get-upcoming');

});
