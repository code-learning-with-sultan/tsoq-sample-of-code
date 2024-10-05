<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Modules\StoreDashboard\LoyalityPoint\Models\LoyalityPoint;
use Modules\StoreDashboard\LoyalityPoint\Models\LoyalitySystem;

class LoyalityPointSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        LoyalitySystem::create([
            'title' => [
                'ar' => 'Loyality Point',
                'en' => 'Loyality Point',
            ],
            'description' => [
                'ar' => 'Loyality Point',
                'en' => 'Loyality Point',
            ],
        ]);
        $loyalityPoints = [
            [
                'name' => 'Registeration',
                'key' => 'registeration',
                'description' => 'Registeration',
                'number_of_points' => 100
            ],
            [
                'name' => 'first order',
                'key' => 'first_order',
                'description' => 'first order',
                'number_of_points' => 10
            ],
            [
                'name' => 'Store review',
                'key' => 'store_review',
                'description' => 'Store review',
                'number_of_points' => 50
            ]
        ];
        foreach ($loyalityPoints as $loyalityPoint) {
            LoyalityPoint::create($loyalityPoint);
        }
    }
}
