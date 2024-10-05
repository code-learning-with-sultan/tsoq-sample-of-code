<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Modules\StoreDashboard\Warehouse\Models\Warehouse;

class WarehouseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        Warehouse::create([
            'title' => [
                'ar' => 'المخزن الرئيسي',
                'en' => 'Main Warehouse',
            ],
            'address' => [
                'ar' => 'المخزن الرئيسي',
                'en' => 'Main Warehouse',
            ],
        ]);
    }
}
