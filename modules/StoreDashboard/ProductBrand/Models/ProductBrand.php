<?php

namespace Modules\StoreDashboard\ProductBrand\Models;

use App\Traits\FormatTimestamps;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\Translatable\HasTranslations;

class ProductBrand extends Model implements HasMedia
{
    use HasFactory, HasTranslations, InteractsWithMedia, FormatTimestamps;

    public $translatable = ['name','description'];
}
