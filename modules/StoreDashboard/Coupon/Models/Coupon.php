<?php

namespace Modules\StoreDashboard\Coupon\Models;

use App\Traits\FormatTimestamps;
use Carbon\Carbon;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;

class Coupon extends Model
{
    use HasFactory, FormatTimestamps, HasTranslations;

    public $translatable = ['name'];

    protected $casts = [
        'ids' => 'array',
    ];
}
