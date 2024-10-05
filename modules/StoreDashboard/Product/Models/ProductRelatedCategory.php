<?php

namespace Modules\StoreDashboard\Product\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Modules\StoreDashboard\Option\Models\OptionValue;

class ProductRelatedCategory extends Model
{
    use HasFactory;

}
