<?php

namespace App\Http\Controllers\API;

use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\File;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    public function index()
    {
        $product = Product::all();
        return response()->json([
            'status'=>200,
            'product'=>$product,
        ]);
    }

    public function store(Request $request)
    {

        $validator = validator::make($request->all(), [
            'category_id' =>'required|max:191',
            'name' =>'required|max:191',
            'price' =>'required|max:20',
            'image' =>'required|image|mimes:jpeg,png,jpg|max:2048',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status'=>422,
                'error'=>$validator->messages(),
            ]);
        }else {
            $product = new Product;
            $product->category_id = $request->input('category_id');
            $product->name = $request->input('name');
            $product->price = $request->input('price');
            $product->description = $request->input('description');

            if ($request->hasFile('image')) {
                $file = $request->file('image');
                $extension = $file->getClientOriginalExtension();
                $filename = time() .'.'.$extension;
                $file->move('upload/product/', $filename);
                $product->image = 'upload/product/'.$filename;
            }
            
            $product->save();
            return response()->json([
                'status'=>200,
                'message'=>'Product Added Successfully',
            ]);
        }
    }

    public function edit($id)
    {
        $product = Product::find($id);
        if ($product) {
            return response()->json([
                'status'=>200,
                'product'=>$product,
            ]);
        } else {
            return response()->json([
                'status'=>404,
                'message'=>'No Product Found',
            ]);
        }
    }

    public function update(Request $request,$id)
    {
        $validator = validator::make($request->all(), [
            'category_id' =>'required|max:191',
            'name' =>'required|max:191',
            'price' =>'required|max:20',
        ]);
        
        

        if ($validator->fails()) {
            return response()->json([
                'status'=>422,
                'error'=>$validator->messages(),
            ]);
        }else {
            $product = Product::find($id);
            if ($product) {
                $product->category_id = $request->input('category_id');
                $product->name = $request->input('name');
                $product->price = $request->input('price');
                $product->description = $request->input('description');

                if ($request->hasFile('image')) {
                    $path = $product->image;
                    if (File::exist($path)) {
                        File::delete($path);
                    }
                    $file = $request->file('image');
                    $extension = $file->getClientOriginalExtension();
                    $filename = time() .'.'.$extension;
                    $file->move('upload/product/', $filename);
                    $product->image = 'upload/product/'.$filename;
                }

                $product->update();
                return response()->json([
                    'status'=>200,
                    'message'=>'Product Updated Successfully',
                ]);
            } else {
                return response()->json([
                    'status'=>404,
                    'message'=>'Product Not Found',
                ]);
            }
        }
    }
}
