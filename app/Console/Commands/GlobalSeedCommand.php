<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\DB;

class GlobalSeedCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'gs';

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
        Artisan::call('config:cache');
        $this->info('Refreshing central database');
        Artisan::call('migrate:fresh --seed');
        $this->info('Central database refreshed');
        $databases = DB::select("SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME LIKE 'tenant%'");
        $this->info('Retreiving databases');
        foreach ($databases as $database) {
            if ($database->SCHEMA_NAME != 'tenanttest') {
                $this->info('Removing database ' . $database->SCHEMA_NAME);
                DB::statement("DROP DATABASE " . $database->SCHEMA_NAME);
                $this->info('Database ' . $database->SCHEMA_NAME . ' removed');
            }
        }
        $this->info('------------------------------------');
        $this->info('Done');
    }
}
