<?php

namespace App\Console\Commands;

use App\Helpers\ModuleHelper;
use Illuminate\Console\Command;
use Illuminate\Support\Str;

class MakeModuleCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'make:module {name} {--mm=}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Execute the console command.
     */
    public function handle()
    {
        $name = $this->argument('name');
        $withModelMigration = $this->option('mm');

        $explode = explode('/', $name);
        $baseFolder = $explode[0];
        $moduleName = $explode[1];

        $namespace = "Modules\\$baseFolder\\$moduleName";

        mkdir(base_path("modules/$baseFolder/$moduleName"));

        // Create Service Provider
        $serviceProviderPath = base_path("modules/$baseFolder/$moduleName/Providers");
        mkdir($serviceProviderPath);
        file_put_contents($serviceProviderPath . "/AppServiceProvider.php", ModuleHelper::serviceProviderStub($namespace));
        file_put_contents($serviceProviderPath . "/RouteServiceProvider.php", ModuleHelper::routeServiceProviderStub($namespace));

        // Create Controller
        $controllerPath = base_path("modules/$baseFolder/$moduleName/Controllers");
        mkdir($controllerPath);
        $controllerName = $moduleName . 'Controller.php';
        file_put_contents($controllerPath . "/$controllerName", ModuleHelper::controllerStub($moduleName, $namespace));

        // Create Repository
        $repositoryPath = base_path("modules/$baseFolder/$moduleName/Repositories");
        mkdir($repositoryPath);
        $repositoryName = $moduleName . 'Repository.php';
        file_put_contents($repositoryPath . "/$repositoryName", ModuleHelper::repositoryStub($moduleName, $namespace));

        if ($withModelMigration) {
            // Create Model
            $modelsPath = base_path("modules/$baseFolder/$moduleName/Models");
            mkdir($modelsPath);
            $modelName = $moduleName . '.php';
            file_put_contents($modelsPath . "/$modelName", ModuleHelper::modelStub($moduleName, $namespace));

            // Create Migration
            mkdir(base_path("modules/$baseFolder/$moduleName/Database"));
            $migrationPath = base_path("modules/$baseFolder/$moduleName/Database/Migrations");
            mkdir($migrationPath);
            $tenantMigrationPath = base_path("modules/$baseFolder/$moduleName/Database/Migrations/Tenant");
            mkdir($tenantMigrationPath);
            $migrationName = 'create_' . $this->getMigrationName($moduleName) . '_table.php';
            file_put_contents($migrationPath . "/$migrationName", ModuleHelper::migrationStub($this->getMigrationName($moduleName)));
            file_put_contents($tenantMigrationPath . "/$migrationName", ModuleHelper::migrationStub($this->getMigrationName($moduleName)));
        }



        // Create Actions and Validations
        $modelPath = base_path("modules/$baseFolder/$moduleName/Actions");
        mkdir($modelPath);
        file_put_contents($modelPath . "/Validations.php", ModuleHelper::validationStub($namespace));

        // Create api.php
        $apiRoutePath = base_path("modules/$baseFolder/$moduleName/Routes");
        mkdir($apiRoutePath);
        file_put_contents($apiRoutePath . "/api.php", ModuleHelper::apiRoutesStub($moduleName, $namespace));

        $this->info("Module $moduleName created successfully");
    }


    public function getMigrationName($moduleName)
    {

        // Convert string to snake case
        $snakeCase = Str::snake($moduleName);

        // Pluralize the last word
        $words = explode('_', $snakeCase);
        $lastWordIndex = count($words) - 1;
        $words[$lastWordIndex] = Str::plural($words[$lastWordIndex]);

        // Join the words back together with underscores
        $newString = implode('_', $words);

        return $newString;
    }
}
