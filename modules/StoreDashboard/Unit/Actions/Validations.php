<?php

namespace Modules\StoreDashboard\Unit\Actions;

use App\Traits\BaseValidationAction;

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
            'name' => 'required',
            'name.*' => 'string|max:255|unique_translation:units,name',
            'symbol' => 'required',
            'symbol.*' => 'string|max:255|unique_translation:units,symbol',
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
            'name' => 'required',
            'name.*' => 'string|max:255|unique_translation:units,name,' . $modelId,
            'symbol' => 'required',
            'symbol.*' => 'string|max:255|unique_translation:units,symbol,' . $modelId,
        ];
    }


}
