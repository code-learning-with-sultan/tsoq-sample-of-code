<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Modules\StoreDashboard\Product\Models\Product;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('product_variations', function (Blueprint $table) {
            $table->id();
            $table->foreignIdFor(Product::class);
            $table->integer('sku')->nullable();
            $table->integer('barcode');
            $table->unsignedBigInteger('price_before_discount');
            $table->unsignedBigInteger('price_after_discount')->nullable();
            $table->unsignedBigInteger('cost_per_item')->nullable();
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
