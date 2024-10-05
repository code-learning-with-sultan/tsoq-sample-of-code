<?php

namespace Database\Seeders;

use App\Models\Tenant;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Modules\StoreDashboard\LoyalityPoint\Models\LoyalityPoint;

class GeneralSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run($registerForm = false, $tenantID = NULL): void
    {
        // run loyality point seeder
        $loyalityPointSeeder = new LoyalityPointSeeder();
        $warehouseSeeder = new WarehouseSeeder();
        if ($registerForm) {
            $loyalityPointSeeder->run();
            $warehouseSeeder->run();
        } else {
            Tenant::all()->runForEach(function (Tenant $tenant) use ($tenantID, $loyalityPointSeeder, $warehouseSeeder) {
                $loyalityPointSeeder->run();
                $warehouseSeeder->run();
            });
        }
    }
}
