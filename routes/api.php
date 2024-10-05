<?php

use App\Helpers\ApiHelper;
use App\Http\Controllers\RegisterController;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use Stancl\Tenancy\Middleware\InitializeTenancyByRequestData;

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


Route::middleware([
    InitializeTenancyByRequestData::class
])->group(function () {


    Route::get('users', function () {
        return ApiHelper::respondOk(User::all());
    });


});


Route::get('test', function () {
    return [
        'success' => true,
        'headers' => request()->headers->all(),
    ];
});
