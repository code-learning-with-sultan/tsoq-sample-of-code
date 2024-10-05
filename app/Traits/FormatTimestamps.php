<?php

namespace App\Traits;

use Carbon\Carbon;

trait FormatTimestamps {

    public function getCreatedAtAttribute($value)
    {
        return Carbon::parse($value)->toDateTimeString();
    }

    public function getUpdatedAtAttribute($value)
    {
        return Carbon::parse($value)->toDateTimeString();
    }
}
