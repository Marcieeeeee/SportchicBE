<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Comment;
use App\Models\Product;


class DashboardController extends Controller
{
    public function index()
    {
        $commentCount = Comment::count();
        $orderCount = Order::count();
        $productCount = Product::count();

        return response()->json([
            'status' => 200,
            'counts' => [
                'comments' => $commentCount,
                'orders' => $orderCount,
                'products' => $productCount,
            ],
        ]);
    }

}
