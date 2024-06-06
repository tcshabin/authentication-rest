<?php

namespace App\Http\Controllers;

class DashboardController extends Controller
{
    public function index()
    {
        return response()->json(['message' => 'Welcome to the dashboard']);
    }
}
