<?php

use Illuminate\Support\Facades\Route;
use Modules\StoreDashboard\Unit\Controllers\UnitController;
use Stancl\Tenancy\Middleware\InitializeTenancyByRequestData;
/*
|--------------------------------------------------------------------------
| Unit API Routes
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

    Route::prefix('admin')->middleware(['auth:sanctum', 'type.store_owner'])->group(function () {
        Route::apiResource('unit', UnitController::class);
    });

});


