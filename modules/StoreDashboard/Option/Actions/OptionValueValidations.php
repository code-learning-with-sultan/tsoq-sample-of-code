<?php

namespace Modules\StoreDashboard\Option\Actions;

use App\Traits\BaseValidationAction;
use Illuminate\Support\Facades\Validator;

trait OptionValueValidations
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
            'option_id' => 'required|exists:options,id',
            'value' => 'required|array',
            'value.*' => 'required|string|max:255|unique_translation:option_values,value',
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
            'value' => 'required|array',
            'value.*' => 'required|string|max:255|unique_translation:option_values,value,'.$modelId,
        ];
    }


}
