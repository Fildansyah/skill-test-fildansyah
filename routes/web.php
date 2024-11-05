<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\TripController;
use Illuminate\Support\Facades\Route;

Route::get('/', [DashboardController::class, 'index'])->name('dashboard');

//api
Route::get('api/trip', [TripController::class, 'index'])->name('trip');

