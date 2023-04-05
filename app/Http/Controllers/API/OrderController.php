<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Checkout;
use App\Models\Order;

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

    public function view($id)
    {
        $order = Order::find($id);
        if ($order) {
            return response()->json([
                'status'=>200,
                'order'=>$order,
            ]);
        } else {
            return response()->json([
                'status'=>404,
                'message'=>'No order Found',
            ]);
        }
    }
}
