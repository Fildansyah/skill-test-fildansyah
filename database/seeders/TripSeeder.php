<?php

namespace Database\Seeders;

use App\Models\Trip;
use Faker\Factory;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Carbon\Carbon;

class TripSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create();
        $trips = [];

        $todayTripCount = 10;
        $totalTrips = 100;

        for ($i = 0; $i < $totalTrips; $i++) {
            $tripDate = ($i < $todayTripCount) 
                ? Carbon::now()->format('Y-m-d')
                : $faker->dateTimeBetween('-1 year', '+1 year')->format('Y-m-d');

            $trips[] = [
                'truck_id' => $faker->numberBetween(1, 3),
                'driver_id' => $faker->numberBetween(1, 3),
                'start_location' => $faker->city,
                'end_location' => $faker->city,
                'distance' => $faker->numberBetween(100, 300),
                'trip_date' => $tripDate
            ];
        }

        foreach ($trips as $trip) {
            Trip::create($trip);
        }
    }
}
