<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\TripController;
use Illuminate\Support\Facades\Route;

Route::get('/', [DashboardController::class, 'index'])->name('dashboard');
Route::resource('trips', TripController::class);
Route::get('/trips', [TripController::class, 'index'])->name('trips');
Route::get('/trips/create', [TripController::class, 'create'])->name('trips.create');
Route::get('/trips/{trip}/edit', [TripController::class, 'edit'])->name('trips.edit');

// API Routes
Route::prefix('api')->group(function () {
    Route::get('trip', [TripController::class, 'apiIndex']);
});

