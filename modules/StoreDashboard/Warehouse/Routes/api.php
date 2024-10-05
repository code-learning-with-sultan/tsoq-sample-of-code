<?php

use Illuminate\Support\Facades\Route;
use Modules\StoreDashboard\Warehouse\Controllers\WarehouseController;
use Stancl\Tenancy\Middleware\InitializeTenancyByRequestData;
/*
|--------------------------------------------------------------------------
| Warehouse API Routes
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

        Route::apiResource('warehouse', WarehouseController::class);

    });

});


