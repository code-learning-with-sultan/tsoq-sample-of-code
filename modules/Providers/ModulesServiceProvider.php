<?php

namespace Modules\Providers;

use Illuminate\Support\ServiceProvider;

class ModulesServiceProvider extends ServiceProvider
{
    /**
     * Register services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap services.
     */
    public function boot(): void
    {
        $modules = array_filter(scandir(base_path('modules/StoreDashboard')),function($module,$key){
            return !str_contains($module,'.');
        },ARRAY_FILTER_USE_BOTH);
        foreach($modules as $module){
            $provider = "\\Modules\StoreDashboard\\" .$module. "\\Providers\\AppServiceProvider";
            $provider2 = "\\Modules\StoreDashboard\\" .$module. "\\Providers\\RouteServiceProvider";
            // dd($provider);
            $this->app->register($provider);
            $this->app->register($provider2);
        }

        $modules = array_filter(scandir(base_path('modules/TsoqFront')),function($module,$key){
            return !str_contains($module,'.');
        },ARRAY_FILTER_USE_BOTH);
        foreach($modules as $module){
            $provider = "\\Modules\TsoqFront\\" .$module. "\\Providers\\AppServiceProvider";
            $provider2 = "\\Modules\TsoqFront\\" .$module. "\\Providers\\RouteServiceProvider";
            // dd($provider);
            $this->app->register($provider);
            $this->app->register($provider2);
        }
    }
}
