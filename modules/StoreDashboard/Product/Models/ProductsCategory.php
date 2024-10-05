<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Modules\StoreDashboard\Product\Models\Product;

class ProductsCategory extends Model
{
    use HasFactory;

    public function products() {
        $this->belongsToMany(Product::class, 'products_categories');
    }
}
