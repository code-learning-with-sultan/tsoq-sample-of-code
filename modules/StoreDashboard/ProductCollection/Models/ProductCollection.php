<?php

namespace Modules\StoreDashboard\ProductCollection\Models;

use App\Traits\FormatTimestamps;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\Translatable\HasTranslations;
class ProductCollection extends Model implements HasMedia
{
    use HasFactory, HasTranslations, InteractsWithMedia, FormatTimestamps;

    public $translatable = ['name','description'];
}
