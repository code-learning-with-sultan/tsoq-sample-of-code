<?php

namespace Modules\StoreDashboard\ProductCategory\Models;

use App\Traits\FormatTimestamps;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
use Spatie\Translatable\HasTranslations;

class ProductCategory extends Model implements HasMedia
{
    use HasFactory, InteractsWithMedia,HasTranslations, FormatTimestamps;

    public $translatable = ['name','description'];


    public $appends = ['image'];

    public function getImageAttribute(){
        return $this->getFirstMediaUrl() ?? '';
    }
}
