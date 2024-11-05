<?php

namespace App\Http\Controllers;

use App\Models\Trip;
use Illuminate\Http\Request;

class TripController extends Controller
{
    public function index()
    {
        $trips = Trip::with(['truck', 'driver']);

        $remapTrips = $trips->get()->map(function ($trip) {
            return [
                "trip_id" => $trip->id,
                "truck" => [
                    "truck_id" => $trip->truck->id,
                    "license_plate" => $trip->truck->license_plate,
                ],
                "driver" => [
                    "name" => $trip->driver->name,
                ],
                "start_location" => $trip->start_location,
                "end_location" => $trip->end_location,
                "distance" => $trip->distance,
                "trip_date" => $trip->trip_date
            ];
        });


        return response()->json($remapTrips);
    }
}
