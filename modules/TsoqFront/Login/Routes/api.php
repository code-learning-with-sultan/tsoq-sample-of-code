<?php

use Illuminate\Support\Facades\Route;
use Modules\TsoqFront\Login\Controllers\LoginController;

/*
|--------------------------------------------------------------------------
| Register API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware([
])->group(function () {

    Route::post('login', [LoginController::class,'login']);

});


