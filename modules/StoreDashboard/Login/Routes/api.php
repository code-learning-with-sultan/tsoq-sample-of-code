<?php

use Illuminate\Support\Facades\Route;
use Modules\StoreDashboard\Login\Controllers\LoginController;
use Stancl\Tenancy\Middleware\InitializeTenancyByRequestData;
/*
|--------------------------------------------------------------------------
| Login API Routes
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

    Route::post('admin/tenant-login', [LoginController::class, 'postLogin']);
    Route::get('admin/tenant-logout', [LoginController::class, 'postLogout']);
});



