<?php

namespace Database\Seeders;

use App\Models\Driver;
use Faker\Factory;
use Illuminate\Database\Seeder;

class DriverSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {

        $faker = Factory::create();

        $drivers = [];
        for ($i = 0; $i < 20; $i++) {
            $drivers[] = [
                'name' => $faker->name,
                'license_number' => $faker->numberBetween(1000, 9999),
                'exp_sim' => $faker->dateTimeBetween('-1 year', '+1 year')->format('Y-m-d'),
                'experience_years' => $faker->numberBetween(1, 10)
            ];
        }

        foreach ($drivers as $driver) {
            Driver::create($driver);
        }
    }
}
