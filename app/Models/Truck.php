<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Truck extends Model
{
    protected $fillable = [
        'license_plate',
        'model',
        'capacity',
        'exp_kir',
        'status',
    ];

    protected $dates = ["exp_kir"];

    public function trips()
    {
        return $this->hasMany(Trip::class);
    }
}
