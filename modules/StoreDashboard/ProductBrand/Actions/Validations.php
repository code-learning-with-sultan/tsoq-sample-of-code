<?php

namespace Modules\StoreDashboard\ProductBrand\Actions;

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
            'description' => 'nullable',
            'image' => 'required|image',
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
            'description' => 'nullable',
            'image' => 'nullable|image',
        ];
    }


}
