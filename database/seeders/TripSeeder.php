<?php

namespace Database\Seeders;

use App\Models\Trip;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TripSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create();


        $trips = [];
        for ($i = 0; $i < 100; $i++) {
            $trips[] = [
                'truck_id' => $faker->numberBetween(1, 3),
                'driver_id' => $faker->numberBetween(1, 3),
                'start_location' => $faker->city,
                'end_location' => $faker->city,
                'distance' => $faker->numberBetween(100, 300),
                'trip_date' => $faker->dateTimeBetween('-1 year', '+1 year')->format('Y-m-d')
            ];
        }

        foreach ($trips as $trip) {
            Trip::create($trip);
        }
    }
}
