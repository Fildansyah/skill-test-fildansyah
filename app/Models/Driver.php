<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Driver extends Model
{
    protected $fillable = [
        'name',
        'license_number',
        'exp_sim',
        'experience_years'
    ];

    protected $dates = ['exp_sim'];

    public function trips()
    {
        return $this->hasMany(Trip::class);
    }
}
