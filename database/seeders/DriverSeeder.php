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

        $totalDrivers = 20;
        $nearExpire = 7;

        $drivers = [];
        for ($i = 0; $i < $totalDrivers; $i++) {
            $expireDate = ($i < $nearExpire) ? $faker->dateTimeBetween('+5 days', '+30 days')->format('Y-m-d') : $faker->dateTimeBetween('+1 year', '+4 year')->format('Y-m-d');

            $drivers[] = [
                'name' => $faker->name,
                'license_number' => $faker->numberBetween(1000, 9999),
                'exp_sim' => $expireDate,
                'experience_years' => $faker->numberBetween(1, 10)
            ];
        }

        foreach ($drivers as $driver) {
            Driver::create($driver);
        }
    }
}
