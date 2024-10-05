<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('coupons', function (Blueprint $table) {
            $table->id();
            $table->text('name');
            $table->text('code');
            $table->boolean('type');
            $table->float('value');
            $table->date('start_date');
            $table->date('end_date');
            $table->integer('total_number_of_uses');
            $table->boolean('status')->default(true);
            $table->float('min_order_value')->default(100);
            $table->boolean('cash_on_delivery')->default(false);
            $table->boolean('free_shipping')->default(false);
            $table->integer('number_of_uses_per_customer')->default(1);

            $table->integer('apply_coupon_on')->default(1);
            $table->text('ids')->nullable();

            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('coupons');
    }
};
