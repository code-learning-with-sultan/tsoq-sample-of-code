<?php

namespace Modules\StoreDashboard\ProductCategory\Actions;

use App\Traits\BaseValidationAction;
use Illuminate\Support\Facades\Validator;

trait Validations
{

    use BaseValidationAction;

    /**
     * Generates validation rules for storing a request.
     *
     * @param string|null $modelId The ID of the model (optional)
     * @return array The validation rules for the store request.
     */
    public function storeRequestValidationRules(string|null $modelId = null): array{
        return [
            'name' => 'required|array',
            'name.*' => 'unique_translation:product_categories,name',
            'description' => 'nullable',
            'image' => 'required|mimes:png,jpg,jpeg,webp|max:2048',
        ];
    }

    /**
     * Returns the validation rules for updating a request.
     *
     * @param string|null $modelId The ID of the model (optional)
     * @return array The validation rules for the update request.
     */
    public function updateRequestValidationRules(string|null $modelId = null): array{
        return [
            'name' => 'required|array',
            'name.*' => 'unique_translation:product_categories,name,'.$modelId,
            'description' => 'nullable',
            'image' => 'nullable|mimes:png,jpg,jpeg,webp|max:2048',
            'media_names' => 'required|array'
        ];
    }


}
