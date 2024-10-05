<?php

use Illuminate\Support\Facades\Route;
use Modules\StoreDashboard\LoyalityPoint\Controllers\LoyalityPointController;
use Modules\StoreDashboard\LoyalityPoint\Controllers\LoyalitySystemController;
use Stancl\Tenancy\Middleware\InitializeTenancyByRequestData;
/*
|--------------------------------------------------------------------------
| LoyalityPoint API Routes
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



    Route::prefix('admin')->middleware('auth:sanctum')->group(function () {

        Route::apiResource('loyality-point', LoyalityPointController::class);

        Route::get('loyality-system', [LoyalitySystemController::class, 'index']);
        Route::post('loyality-system', [LoyalitySystemController::class, 'update']);

    });

});


