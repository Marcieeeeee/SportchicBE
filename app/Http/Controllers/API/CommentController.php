<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Comment;

class CommentController extends Controller
{
    public function comment(Request $request)
    {
        $validator = validator::make($request->all(), [
            'username'=>'required',
            'email'=>'required',
            'comment'=>'required',
        ]);

        if ($validator->fails()) {
            return response()->json([
                'status'=>422,
                'error'=>$validator->messages(),
            ]);
        } else {
            $comment = new Comment;
            $comment->username = $request->username;
            $comment->email = $request->email;
            $comment->comment = $request->comment;
            $comment->save();

            return response()->json([
                'status'=>200,
                'message'=>'comment added successfully',
            ]);
        }
    }

    public function viewComment()
    {
       $comments = Comment::all();
       return response()->json([
        'status'=>200,
        'comments'=>$comments,
        ]);
    }
}
