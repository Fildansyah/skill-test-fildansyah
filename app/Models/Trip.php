<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Trip extends Model
{
    protected $fillable = [
        'truck_id',
        'driver_id',
        'start_location',
        'end_location',
        'distance',
        'trip_date'
    ];

    protected $dates = ['trip_date'];

    public function truck()
    {
        return $this->belongsTo(Truck::class);
    }

    public function driver()
    {
        return $this->belongsTo(Driver::class);
    }
}
