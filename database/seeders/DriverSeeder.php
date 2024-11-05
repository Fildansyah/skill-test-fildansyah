<?php

namespace Database\Seeders;

use App\Models\Driver;
use Illuminate\Database\Seeder;

class DriverSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $drivers = [
            [
                'name' => 'John Doe',
                'license_number' => 'SIM-001',
                'exp_sim' => '2024-12-31',
                'experience_years' => 5
            ],
            [
                'name' => 'Jane Smith',
                'license_number' => 'SIM-002',
                'exp_sim' => '2024-11-30',
                'experience_years' => 3
            ],
            [
                'name' => 'Bob Johnson',
                'license_number' => 'SIM-003',
                'exp_sim' => '2024-10-31',
                'experience_years' => 7
            ]
        ];

        foreach ($drivers as $driver) {
            Driver::create($driver);
        }
    }
}
