<?php

namespace Modules\StoreDashboard\Option\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;
class Option extends Model
{
    use HasFactory, HasTranslations;

    public $translatable = ['name'];
}
