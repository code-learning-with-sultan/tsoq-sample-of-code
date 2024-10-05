<?php

namespace Modules\StoreDashboard\Warehouse\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;
class Warehouse extends Model
{
    use HasFactory, HasTranslations;

    public $translatable = ['title', 'address'];
}
