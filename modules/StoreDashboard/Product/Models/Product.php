<?php

namespace Modules\StoreDashboard\Product\Models;

use App\Traits\FormatTimestamps;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Database\Eloquent\Relations\HasManyThrough;
use Modules\StoreDashboard\ProductBrand\Models\ProductBrand;
use Modules\StoreDashboard\ProductCategory\Models\ProductCategory;
use Modules\StoreDashboard\ProductCollection\Models\ProductCollection;
use Spatie\Translatable\HasTranslations;
use Spatie\MediaLibrary\HasMedia;
use Spatie\MediaLibrary\InteractsWithMedia;
class Product extends Model implements HasMedia
{
    use HasFactory, HasTranslations, InteractsWithMedia, FormatTimestamps;

    public $translatable = ['title', 'short_description', 'description', 'seo_title', 'seo_description', 'url_handler'];

    public function faqs() {
        return $this->hasMany(ProductFaq::class);
    }

    public function quantity() {
        return $this->morphMany(ProductQuantity::class, 'model');
    }

    public function categories() {
        return $this->belongsToMany(ProductCategory::class, 'products_categories');
    }
    public function brands() {
        return $this->belongsToMany(ProductBrand::class, 'products_brands');
    }
    public function collections() {
        return $this->belongsToMany(ProductCollection::class, 'products_collections');
    }

    public function variations(): HasMany
    {
        return $this->hasMany(ProductVariation::class);
    }

    public function relatedCategories(): HasManyThrough{
        return $this->hasManyThrough(ProductCategory::class, ProductRelatedCategory::class,'product_category_id','id');
    }
}
