<?php

function module_path($name = '')
{
    return base_path("modules\\$name");
}

function module_database_migrations_paths()
{
    $paths = [
        database_path('migrations/tenant')
    ];
    $modules = array_filter(scandir(base_path('modules/StoreDashboard')), function ($module, $key) {
        return !str_contains($module, '.');
    }, ARRAY_FILTER_USE_BOTH);
    foreach ($modules as $module) {
        $paths[] = base_path('modules/StoreDashboard/' . $module . '/Database/Migrations/Tenant');
    }
    return $paths;
}


function module_database_controllers_paths()
{
    $paths = [
        base_path('app'),
    ];
    $modules = array_filter(scandir(base_path('modules/StoreDashboard')), function ($module, $key) {
        return !str_contains($module, '.');
    }, ARRAY_FILTER_USE_BOTH);
    $modules2 = array_filter(scandir(base_path('modules/TsoqFront')), function ($module, $key) {
        return !str_contains($module, '.');
    }, ARRAY_FILTER_USE_BOTH);
    foreach ($modules as $module) {
        $paths[] = base_path('modules/StoreDashboard/' . $module . '/Controllers');
    }
    foreach ($modules2 as $module) {
        $paths[] = base_path('modules/TsoqFront/' . $module . '/Controllers');
    }
    return $paths;
}
