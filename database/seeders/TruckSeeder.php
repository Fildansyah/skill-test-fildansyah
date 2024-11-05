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

        $trucks = [];
        for ($i = 0; $i < 30; $i++) {
            $trucks[] = [
                'license_plate' => $faker->regexify('[A-Z]{2} [0-9]{4} [A-Z]{2}'),
                'model' => $faker->randomElement(['Isuzu', 'Hino', 'Mitsubishi', 'UD']),
                'capacity' => $faker->numberBetween(1000, 3000),
                'exp_kir' => $faker->dateTimeBetween('-1 year', '+1 year')->format('Y-m-d'),
                'status' => $faker->randomElement(['available', 'maintenance', 'on_trip'])
            ];
        }


        foreach ($trucks as $truck) {
            Truck::create($truck);
        }
    }
}
