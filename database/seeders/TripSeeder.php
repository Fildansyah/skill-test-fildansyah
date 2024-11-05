<?php

namespace Database\Seeders;

use App\Models\Trip;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class TripSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $trips = [
            [
                'truck_id' => 1,
                'driver_id' => 1,
                'start_location' => 'Location A',
                'end_location' => 'Location B',
                'distance' => 120,
                'trip_date' => '2024-01-01'
            ],
            [
                'truck_id' => 2,
                'driver_id' => 2,
                'start_location' => 'Location B',
                'end_location' => 'Location C',
                'distance' => 150,
                'trip_date' => '2024-01-02'
            ],
            [
                'truck_id' => 3,
                'driver_id' => 3,
                'start_location' => 'Location C',
                'end_location' => 'Location A',
                'distance' => 180,
                'trip_date' => '2024-01-03'
            ],
            [
                'truck_id' => 1,
                'driver_id' => 2,
                'start_location' => 'Location A',
                'end_location' => 'Location D',
                'distance' => 200,
                'trip_date' => '2024-01-03'
            ],
            [
                'truck_id' => 2,
                'driver_id' => 1,
                'start_location' => 'Location D',
                'end_location' => 'Location B',
                'distance' => 160,
                'trip_date' => date('Y-m-d')
            ]
        ];

        foreach ($trips as $trip) {
            Trip::create($trip);
        }
    }
}
