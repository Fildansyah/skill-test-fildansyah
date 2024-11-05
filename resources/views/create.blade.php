@extends('layout')

@section('title', 'Create New Trip')

@section('content')
<div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
    <div class="mb-6">
        <h2 class="text-2xl font-bold text-gray-900">Create New Trip</h2>
    </div>

    <div class="bg-white shadow rounded-lg">
        <div class="p-6">
            <form action="{{ route('trips.store') }}" method="POST">
                @csrf

                <div class="grid grid-cols-1 gap-6 md:grid-cols-2">
                    <!-- Driver Selection -->
                    <div>
                        <label for="driver_id" class="block text-sm font-medium text-gray-700">Driver</label>
                        <select id="driver_id" name="driver_id" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
                            <option value="">Select Driver</option>
                            @foreach($drivers as $driver)
                                <option value="{{ $driver->id }}" {{ old('driver_id') == $driver->id ? 'selected' : '' }}>
                                    {{ $driver->name }}
                                </option>
                            @endforeach
                        </select>
                        @error('driver_id')
                            <p class="mt-1 text-sm text-red-600">{{ $message }}</p>
                        @enderror
                    </div>

                    <!-- Truck Selection -->
                    <div>
                        <label for="truck_id" class="block text-sm font-medium text-gray-700">Truck</label>
                        <select id="truck_id" name="truck_id" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
                            <option value="">Select Truck</option>
                            @foreach($trucks as $truck)
                                <option value="{{ $truck->id }}" {{ old('truck_id') == $truck->id ? 'selected' : '' }}>
                                    {{ $truck->license_plate }} ({{ $truck->model }})
                                </option>
                            @endforeach
                        </select>
                        @error('truck_id')
                            <p class="mt-1 text-sm text-red-600">{{ $message }}</p>
                        @enderror
                    </div>

                    <!-- Start Location -->
                    <div>
                        <label for="start_location" class="block text-sm font-medium text-gray-700">Start Location</label>
                        <input type="text" name="start_location" id="start_location" 
                            value="{{ old('start_location') }}"
                            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
                        @error('start_location')
                            <p class="mt-1 text-sm text-red-600">{{ $message }}</p>
                        @enderror
                    </div>

                    <!-- End Location -->
                    <div>
                        <label for="end_location" class="block text-sm font-medium text-gray-700">End Location</label>
                        <input type="text" name="end_location" id="end_location" 
                            value="{{ old('end_location') }}"
                            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
                        @error('end_location')
                            <p class="mt-1 text-sm text-red-600">{{ $message }}</p>
                        @enderror
                    </div>

                    <!-- Distance -->
                    <div>
                        <label for="distance" class="block text-sm font-medium text-gray-700">Distance (km)</label>
                        <input type="number" step="0.1" name="distance" id="distance" 
                            value="{{ old('distance') }}"
                            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
                        @error('distance')
                            <p class="mt-1 text-sm text-red-600">{{ $message }}</p>
                        @enderror
                    </div>

                    <!-- Trip Date -->
                    <div>
                        <label for="trip_date" class="block text-sm font-medium text-gray-700">Trip Date</label>
                        <input type="date" name="trip_date" id="trip_date" 
                            value="{{ old('trip_date') }}"
                            class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-indigo-500 focus:ring-indigo-500">
                        @error('trip_date')
                            <p class="mt-1 text-sm text-red-600">{{ $message }}</p>
                        @enderror
                    </div>
                </div>

                <div class="mt-6 flex items-center justify-end space-x-3">
                    <a href="{{ route('trips') }}" class="inline-flex justify-center rounded-md border border-gray-300 bg-white px-4 py-2 text-sm font-medium text-gray-700 shadow-sm hover:bg-gray-50">
                        Cancel
                    </a>
                    <button type="submit" class="inline-flex justify-center rounded-md border border-transparent bg-blue-600 px-4 py-2 text-sm font-medium text-white shadow-sm hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-blue-500 focus:ring-offset-2">
                        Create Trip
                    </button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection