<?php

namespace Modules\StoreDashboard\Warehouse\Actions;

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
            'title' => 'required|array',
            'title.*' => 'required|string|unique_translation:warehouses,title',
            'address' => 'required|array',
            'address.*' => 'required|string',
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
            'title' => 'required|array',
            'title.*' => 'required|string|unique_translation:warehouses,title,'.$modelId,
            'address' => 'required|array',
            'address.*' => 'required|string',
        ];
    }


}
