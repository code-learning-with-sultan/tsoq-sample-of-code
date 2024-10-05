<?php

namespace Modules\StoreDashboard\Option\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Spatie\Translatable\HasTranslations;
class OptionValue extends Model
{
    use HasFactory, HasTranslations;

    public $translatable = ['value'];


    public function option(): BelongsTo
    {
        return $this->belongsTo(Option::class);
    }
}
