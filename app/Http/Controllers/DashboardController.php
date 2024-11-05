<?php

namespace App\Http\Controllers;

use App\Models\Driver;
use App\Models\Trip;
use App\Models\Truck;
use Carbon\Carbon;
use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function index()
    {
        $todayTrips = Trip::whereDate('trip_date', Carbon::today())->count();

        $expiringKir = Truck::whereBetween('exp_kir', [
            Carbon::now(),
            Carbon::now()->addDays(30)
        ])->get();

        $expiringSim = Driver::whereBetween('exp_sim', [
            Carbon::now(),
            Carbon::now()->addDays(30)
        ])->get();

        return view('dashboard', compact(
            'todayTrips',
            'expiringKir',
            'expiringSim'
        ));
    }
}
