<?php

namespace Modules\StoreDashboard\Coupon\Actions;

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
            'name.*' => 'required|string|max:255',
            'code' => 'required|string|max:255|unique:coupons,code',
            'type' => 'required|boolean',
            'value' => 'required|numeric',
            'start_date' => 'required|date',
            'end_date' => 'required|date',
            'total_number_of_uses' => 'required|integer',
            'status' => 'required|boolean',
            'cash_on_delivery' => 'required|boolean',
            'free_shipping' => 'required|boolean',
            'min_order_value' => 'required|numeric',
            'number_of_uses_per_customer' => 'required|integer',
            'apply_coupon_on' => 'required|integer|in:1,2,3,4,5,6',
            'ids' => 'required_if:apply_coupon_on,2,3,4|array',
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
            'name.*' => 'required|string|max:255',
            'code' => 'required|string|max:255|unique:coupons,code'.$modelId,
            'type' => 'required|boolean',
            'value' => 'required|numeric',
            'start_date' => 'required|date',
            'end_date' => 'required|date',
            'total_number_of_uses' => 'required|integer',
            'status' => 'required|boolean',
            'cash_on_delivery' => 'required|boolean',
            'free_shipping' => 'required|boolean',
            'min_order_value' => 'required|numeric',
            'number_of_uses_per_customer' => 'required|integer',
            'apply_coupon_on' => 'required|integer|in:1,2,3,4,5,6',
            'ids' => 'required_if:apply_coupon_on,2,3,4|array',
        ];
    }


}
