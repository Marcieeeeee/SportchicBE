<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
class FEController extends Controller
{
    public function index()
    {
        $product = Product::take(4)->get();
        return response()->json([
            'status'=>200,
            'product'=>$product,
        ]);
    }

    public function nike()
    {
        $product = Product::where('category_id', '1')->get();
        return response()->json([
            'status'=>200,
            'product'=>$product,
        ]);
    }

    public function adidas()
    {
        $product = Product::where('category_id', '2')->get();
        return response()->json([
            'status'=>200,
            'product'=>$product,
        ]);
    }

    public function ortuseght()
    {
        $product = Product::where('category_id', '3')->get();
        return response()->json([
            'status'=>200,
            'product'=>$product,
        ]);
    }

    public function specs()
    {
        $product = Product::where('category_id', '4')->get();
        return response()->json([
            'status'=>200,
            'product'=>$product,
        ]);
    }
}
