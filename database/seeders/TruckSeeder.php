<?php

namespace Database\Seeders;

use App\Models\Truck;
use Faker\Factory;
use Illuminate\Database\Seeder;

class TruckSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $faker = Factory::create();

        $totalTrucks = 30;
        $nearExpire = 5;

        $trucks = [];
        for ($i = 0; $i < $totalTrucks; $i++) {
            $expireDate = ($i < $nearExpire) ? $faker->dateTimeBetween('+5 days', '+30 days')->format('Y-m-d') : $faker->dateTimeBetween('+1 year', '+4 year')->format('Y-m-d');

            $trucks[] = [
                'license_plate' => $faker->regexify('[A-Z]{2} [0-9]{4} [A-Z]{2}'),
                'model' => $faker->randomElement(['Isuzu', 'Hino', 'Mitsubishi', 'UD']),
                'capacity' => $faker->numberBetween(1000, 3000),
                'exp_kir' => $expireDate,
                'status' => $faker->randomElement(['available', 'maintenance', 'on_trip'])
            ];
        }


        foreach ($trucks as $truck) {
            Truck::create($truck);
        }
    }
}
