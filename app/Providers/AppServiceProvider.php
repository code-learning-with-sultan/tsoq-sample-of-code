<?php

namespace App\Providers;

use App\Helpers\ApiHelper;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Model::unguard();
        \Stancl\Tenancy\Middleware\InitializeTenancyByRequestData::$onFail = function ($exception, $request, $next) {
            return ApiHelper::respondNotFound('X-Tenant Header Not Found');
        };
    }
}
