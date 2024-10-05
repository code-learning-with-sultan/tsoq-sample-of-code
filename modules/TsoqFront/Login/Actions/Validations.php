<?php

namespace Modules\TsoqFront\Login\Actions;

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
            'email' => 'required|string|email|exists:store_owners,email',
            'password' => 'required|string',
        ];
    }

}
