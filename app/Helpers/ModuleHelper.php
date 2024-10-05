<?php

namespace App\Helpers;


class ModuleHelper
{

    public static function serviceProviderStub($moduleNameSpace)
    {
        $class = file_get_contents(base_path('stubs/module-provider.stub'));
        $class = str_replace('{{ namespace }}', $moduleNameSpace, $class);
        return $class;
    }

    public static function routeServiceProviderStub($moduleNameSpace)
    {
        $class = file_get_contents(base_path('stubs/module-route-provider.stub'));
        $class = str_replace('{{ namespace }}', $moduleNameSpace, $class);
        return $class;
    }


    public static function apiRoutesStub($moduleName, $namespace)
    {
        $class = file_get_contents(base_path('stubs/module-api-routes.stub'));
        $class = str_replace('{{ module }}', $moduleName, $class);
        $class = str_replace('{{ namespace }}', $namespace, $class);
        return $class;
    }

    public static function controllerStub($moduleName, $moduleNameSpace)
    {
        $class = file_get_contents(base_path('stubs/module-controller.stub'));
        $class = str_replace('{{ module }}', $moduleName, $class);
        $class = str_replace('{{ namespace }}', $moduleNameSpace, $class);
        return $class;
    }

    public static function repositoryStub($moduleName, $moduleNameSpace)
    {
        $class = file_get_contents(base_path('stubs/module-repository.stub'));
        $class = str_replace('{{ module }}', $moduleName, $class);
        $class = str_replace('{{ namespace }}', $moduleNameSpace, $class);
        return $class;
    }

    public static function modelStub($moduleName, $moduleNameSpace)
    {
        $class = file_get_contents(base_path('stubs/module-model.stub'));
        $class = str_replace('{{ module }}', $moduleName, $class);
        $class = str_replace('{{ namespace }}', $moduleNameSpace, $class);
        return $class;
    }

    public static function migrationStub($moduleName)
    {
        $class = file_get_contents(base_path('stubs/module-migration.create.stub'));
        $class = str_replace('{{ table }}', $moduleName, $class);
        return $class;
    }

    public static function validationStub($moduleNameSpace)
    {
        $class = file_get_contents(base_path('stubs/module-validations.stub'));
        $class = str_replace('{{ namespace }}', $moduleNameSpace, $class);
        return $class;
    }

}
