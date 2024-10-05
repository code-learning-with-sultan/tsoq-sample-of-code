<?php

namespace Modules\StoreDashboard\LoyalityPoint\Actions;

use App\Traits\BaseValidationAction;
use Illuminate\Support\Facades\Validator;

trait LoyalitySystemValidation
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
            'title' => 'required|array|max:255',
            'title.*' => 'required|string|max:255',
            'description' => 'required|array|max:255',
            'description.*' => 'required|string|max:255',
            'active' => 'required|boolean',
            'one_point_equal_sar' => 'required|numeric',
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
            'title' => 'required|array|max:255',
            'title.*' => 'required|string|max:255',
            'description' => 'required|array|max:255',
            'description.*' => 'required|string|max:255',
            'active' => 'required|boolean',
            'one_point_equal_sar' => 'required|numeric',
        ];
    }


}
