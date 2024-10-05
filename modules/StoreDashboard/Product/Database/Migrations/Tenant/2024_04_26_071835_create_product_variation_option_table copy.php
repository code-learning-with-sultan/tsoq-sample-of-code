<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Modules\StoreDashboard\Option\Models\OptionValue;
use Modules\StoreDashboard\Product\Models\Product;
use Modules\StoreDashboard\Product\Models\ProductVariation;
use Modules\StoreDashboard\ProductCategory\Models\ProductCategory;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('product_variation_option', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(OptionValue::class);
            $table->foreignIdFor(ProductVariation::class);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products_collections');
    }
};
