<?php

namespace Modules\StoreDashboard\Product\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\Translatable\HasTranslations;
class ProductFaq extends Model
{
    use HasFactory, HasTranslations;

    public $translatable = ['question', 'answer'];
}
