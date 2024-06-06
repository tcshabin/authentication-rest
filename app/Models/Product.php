<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Product extends Model
{
    use HasFactory, SoftDeletes;

    protected $connection = 'mysql2';

    // Define the fillable attributes
    protected $fillable = [
        'name',
        'description',
        'price',
        'quantity',
    ];
}
