<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Modules\StoreDashboard\Unit\Models\Unit;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->id();

            // basic data
            $table->string('title')->index();
            $table->longText('short_description')->nullable();
            $table->longText('description')->nullable();

            // sku && barcode
            $table->integer('sku')->nullable();
            $table->integer('barcode');

            // orders data
            $table->unsignedBigInteger('price_before_discount');
            $table->unsignedBigInteger('price_after_discount')->nullable();
            $table->unsignedBigInteger('cost_per_item')->nullable();

            // start date
            $table->date('expiry_price_before_discount')->nullable();
            // end date
            $table->date('expiry_price_after_discount')->nullable();

            $table->integer('min_quantity_per_order')->default(1);
            $table->integer('max_quantity_per_order')->nullable();
            $table->integer('weight')->nullable();

            // boolean columns
            $table->boolean('apply_tax')->default(true);
            $table->boolean('show_product')->default(true);
            $table->boolean('enable_cod')->default(true);
            $table->boolean('enable_review')->default(true);

            // expiration date
            $table->boolean('has_expiry_date')->default(false);
            $table->date('production_date')->nullable();
            $table->date('expiry_date')->nullable();

            // seo
            $table->text('seo_title')->nullable();
            $table->longText('seo_description')->nullable();
            $table->text('url_handler');

            // Unit
            $table->foreignIdFor(Unit::class);

            // Shipment
            $table->boolean('has_shipment')->default(false);
            $table->float('shipment_weight')->nullable();

            // Checkout conditions
            $table->boolean('has_checkout_file')->default(false);
            $table->boolean('has_checkout_notes')->default(false);


            // Related
            $table->boolean('show_related_products')->default(false);

            $table->boolean('active')->default(true);

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
    }
};
