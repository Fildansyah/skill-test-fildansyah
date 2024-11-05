<?php

namespace Database\Seeders;

use App\Models\Truck;
use Illuminate\Database\Seeder;

class TruckSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $trucks = [
            [
                'license_plate' => 'B 6670 CD',
                'model' => 'Isuzu',
                'capacity' => 8000,
                'exp_kir' => '2024-12-31',
                'status' => 'available'
            ],
            [
                'license_plate' => 'B 1234 EF',
                'model' => 'Hino',
                'capacity' => 10000,
                'exp_kir' => '2024-11-30',
                'status' => 'available'
            ],
            [
                'license_plate' => 'B 5678 GH',
                'model' => 'Mitsubishi',
                'capacity' => 6000,
                'exp_kir' => '2024-10-31',
                'status' => 'available'
            ]
        ];

        foreach ($trucks as $truck) {
            Truck::create($truck);
        }
    }
}
