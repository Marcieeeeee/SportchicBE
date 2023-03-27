<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Checkout;

class OrderController extends Controller
{
    public function index()
    {
       $orders = Checkout::all();
       return response()->json([
        'status'=>200,
        'orders'=>$orders,
        ]);
    }
}
