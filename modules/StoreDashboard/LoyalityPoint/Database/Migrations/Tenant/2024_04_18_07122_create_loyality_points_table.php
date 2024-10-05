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
        Schema::create('loyality_points', function (Blueprint $table) {
            $table->id();
            $table->text('name');
            $table->text('key');
            $table->longText('description');
            $table->integer('number_of_points');
            $table->integer('expiry_period_days')->default(365);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('loyality_points');
    }
};
