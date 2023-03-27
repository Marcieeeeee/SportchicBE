<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Checkout;

class CheckoutController extends Controller
{
    public function placeOrder(Request $request)
    {
        if (auth('sanctum')->check()) {
            $validator = validator::make($request->all(), [
                'firstname'=>'required|max:100',
                'lastname'=>'required|max:100',
                'username'=>'required|max:100',
                'email'=>'required|max:100',
                'address'=>'required|max:200',
                'country'=>'required|max:100',
                'state'=>'required|max:100',
                'zipcode'=>'required|max:100',
            ]);

            if ($validator->fails()) {
                return response()->json([
                    'status'=>422,
                    'error'=>$validator->messages(),
                ]);
            } else {
                $order = new Checkout;
                $order->firstname = $request->firstname;
                $order->lastname = $request->lastname;
                $order->username = $request->username;
                $order->email = $request->email;
                $order->address = $request->address;
                $order->country = $request->country;
                $order->state = $request->state;
                $order->zipcode = $request->zipcode;
                $order->payment_mode = 'Paypal';
                $order->save();

                $order->orderitem()->createMany([
                    [
                        'product_id' => $request->product_id,
                        'product_name' => $request->product_name,
                        'price' => $request->price,
                    ]
                ]);

                return response()->json([
                    'status'=>200,
                    'message'=>'order successfully',
                ]);
            }
            
        } else {
            return response()->json([
                'status'=>401,
                'message'=>'login to checkout',
            ]);
        }
        
    }
}
