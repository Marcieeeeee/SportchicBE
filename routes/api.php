<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\AuthController;
use App\Http\Controllers\API\ProductController;
use App\Http\Controllers\API\CheckoutController;
use App\Http\Controllers\API\CategoryController;
use App\Http\Controllers\API\FEController;
use App\Http\Controllers\API\OrderController;
use App\Http\Controllers\API\CommentController;
use App\Http\Controllers\API\AdminController;
use App\Http\Controllers\API\DashboardController;

Route::post('register', [AuthController::class, 'register']);
Route::post('login', [AuthController::class, 'login']);
Route::middleware(['auth:sanctum'])->group(function () {
    Route::post('logout', [AuthController::class, 'logout']);
    Route::post('logoutAdmin', [AdminController::class, 'logout']);
});

//products
Route::get('all-category', [CategoryController::class, 'allcategory'])->middleware('cors.preflight');
Route::get('view-all', [FEController::class, 'index'])->middleware('cors.preflight');
Route::get('view-nike', [FEController::class, 'nike'])->middleware('cors.preflight');
Route::get('view-adidas', [FEController::class, 'adidas'])->middleware('cors.preflight');
Route::get('view-ortuseght', [FEController::class, 'ortuseght'])->middleware('cors.preflight');
Route::get('view-specs', [FEController::class, 'specs'])->middleware('cors.preflight');

//admin
Route::post('registerAdmin', [AdminController::class, 'register']);
Route::post('loginAdmin', [AdminController::class, 'login']);
Route::get('view-order', [OrderController::class, 'index'])->middleware('cors.preflight');
Route::get('dashboard', [DashboardController::class, 'index'])->middleware('cors.preflight');
Route::post('store-product', [ProductController::class, 'store'])->middleware('cors.preflight');
Route::post('delete-product', [ProductController::class, 'delete'])->middleware('cors.preflight');
Route::get('view-product', [ProductController::class, 'index'])->middleware('cors.preflight');
Route::get('edit-product/{id}', [ProductController::class, 'edit'])->middleware('cors.preflight');
Route::post('update-product/{id}', [ProductController::class, 'update'])->middleware('cors.preflight');


//user
//checkout
Route::middleware('auth:sanctum')->post('/checkout', [CheckoutController::class, 'placeOrder'])->middleware('cors.preflight');
Route::post('comment', [CommentController::class, 'comment'])->middleware('cors.preflight');
Route::get('view-comment', [CommentController::class, 'viewcomment'])->middleware('cors.preflight');

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

