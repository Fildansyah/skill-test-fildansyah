<?php

namespace Tests\Feature;

use App\Models\Driver;
use App\Models\Truck;
use Illuminate\Foundation\Testing\RefreshDatabase;
use Tests\TestCase;

class TripTest extends TestCase
{
    use RefreshDatabase;

    public function test_trip_created_successfully()
    {
        $truck = Truck::create([
            'license_plate' => 'B 2222 FDN',
            'model' => 'FUSO',
            'capacity' => 1000,
            'exp_kir' => now(),
            'status' => 'available'
        ]);

        $driver = Driver::create([
            'name' => 'John Doe',
            'license_number' => 'L123456789',
            'exp_sim' => now(),
            'experience_years' => 5
        ]);

        $response = $this->postJson(route('trips.store'), [
            'truck_id' => $truck->id,
            'driver_id' => $driver->id,
            'start_location' => 'Location A',
            'end_location' => 'Location B',
            'distance' => 100,
            'trip_date' => '2024-11-05',
        ]);

        $response->assertStatus(201)
            ->assertJson([
                'message' => 'Trip created successfully',
            ]);

        $this->assertDatabaseHas('trips', [
            'start_location' => 'Location A',
            'end_location' => 'Location B',
            'distance' => 100,
        ]);
    }

    public function test_trip_failed_with_invalid_truck_id()
    {
        $driver = Driver::create([
            'name' => 'John Doe',
            'license_number' => 'L123456789',
            'exp_sim' => now(),
            'experience_years' => 5
        ]);

        $response = $this->postJson(route('trips.store'), [
            'truck_id' => 999, // Invalid ID
            'driver_id' => $driver->id,
            'start_location' => 'Location A',
            'end_location' => 'Location B',
            'distance' => 100,
            'trip_date' => '2024-11-05',
        ]);

        $response->assertStatus(422)
            ->assertJsonValidationErrors(['truck_id']);
    }

    public function test_trip_failed_with_invalid_driver_id()
    {
        $truck = Truck::create([
            'license_plate' => 'B 2222 FDN',
            'model' => 'FUSO',
            'capacity' => 1000,
            'exp_kir' => now(),
            'status' => 'available'
        ]);

        $response = $this->postJson(route('trips.store'), [
            'truck_id' => $truck->id,
            'driver_id' => 999, // Invalid ID
            'start_location' => 'Location A',
            'end_location' => 'Location B',
            'distance' => 100,
            'trip_date' => '2024-11-05',
        ]);

        $response->assertStatus(422)
            ->assertJsonValidationErrors(['driver_id']);
    }
}
