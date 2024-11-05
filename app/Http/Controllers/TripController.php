<?php

namespace App\Http\Controllers;

use App\Models\Driver;
use App\Models\Trip;
use App\Models\Truck;
use Illuminate\Http\Request;

class TripController extends Controller
{
    public function index(Request $request)
    {
        $drivers = Driver::orderBy('name')->get();
        $trips = Trip::with(['truck', 'driver']);

        if ($request->has('driver_id') && $request->driver_id != 'all') {
            $trips->where('driver_id', $request->driver_id);
        }

        $trips = $trips->get();
        return view('trips', compact('trips', 'drivers'));
    }
    
    public function apiIndex()
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

    public function create()
    {
        $trucks = Truck::where('status', 'available')->get();
        $drivers = Driver::all();
        return view('create', compact('trucks', 'drivers'));
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'truck_id' => 'required|exists:trucks,id',
            'driver_id' => 'required|exists:drivers,id',
            'start_location' => 'required|string|max:255',
            'end_location' => 'required|string|max:255',
            'distance' => 'required|numeric|min:0',
            'trip_date' => 'required|date'
        ]);

        $trip = Trip::create($validated);

        if ($request->expectsJson()) {
            return response()->json([
                'message' => 'Trip created successfully',
                'trip' => $trip
            ], 201);
        }

        return redirect()->route('trips')
            ->with('success', 'Trip created successfully.');
    }

    public function edit(Trip $trip)
    {
        $trucks = Truck::all();
        $drivers = Driver::all();
        return view('edit', compact('trip', 'trucks', 'drivers'));
    }

    public function update(Request $request, Trip $trip)
    {
        $validated = $request->validate([
            'truck_id' => 'required|exists:trucks,id',
            'driver_id' => 'required|exists:drivers,id',
            'start_location' => 'required|string|max:255',
            'end_location' => 'required|string|max:255',
            'distance' => 'required|numeric|min:0',
            'trip_date' => 'required|date'
        ]);

        $trip->update($validated);

        if ($request->expectsJson()) {
            return response()->json([
                'message' => 'Trip updated successfully',
                'trip' => $trip
            ]);
        }

        return redirect()->route('trips')
            ->with('success', 'Trip updated successfully.');
    }

    public function destroy(Request $request, Trip $trip)
    {
        $trip->delete();

        if ($request->expectsJson()) {
            return response()->json([
                'message' => 'Trip deleted successfully'
            ]);
        }

        return redirect()->route('trips')
            ->with('success', 'Trip deleted successfully.');
    }
}
