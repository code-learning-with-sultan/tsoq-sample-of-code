<?php

use Illuminate\Support\Facades\Route;
use Modules\StoreDashboard\Auth\Controllers\AuthController;
use Stancl\Tenancy\Middleware\InitializeTenancyByRequestData;
/*
|--------------------------------------------------------------------------
| Auth API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/



Route::middleware([
    InitializeTenancyByRequestData::class,
])->group(function () {


    Route::apiResource('Auth', AuthController::class);

    Route::middleware('auth:sanctum')->group(function () {



    });

});


