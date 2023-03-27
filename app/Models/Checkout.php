<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Order;

class Checkout extends Model
{
    use HasFactory;
    protected $table = 'checkout';
    protected $fillable = [
        'firstname',
        'lastname',
        'username',
        'email',
        'address',
        'country',
        'city',
        'state',
        'zipcode',
        'payment_id',
        'payment_mode',
        'status',
    ];

    public function orderitem()
    {
        return $this->hasMany(Order::class, 'order_id', 'id');
    }
}
