<?php

namespace Modules\StoreDashboard\Product\Actions;

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
            'title' => 'required|array',
            'title.*' => 'required|string|max:255|unique_translation:products,title',
            'description' => 'required|array',
            'description.*' => 'required|string|string',
            'short_description' => 'required|array',
            'short_description.*' => 'required|string|string|max:255',
            'price_before_discount' => 'required|numeric',
            'price_after_discount' => 'required|numeric',
            'cost_per_item' => 'sometimes|nullable|numeric',
            'expiry_price_after_discount' => 'sometimes|nullable|date',
            'min_quantity_per_order' => 'sometimes|nullable|integer',
            'max_quantity_per_order' => 'sometimes|nullable|integer',
            'weight' => 'sometimes|nullable|integer',
            'apply_tax' => 'required|boolean',
            'show_product' => 'required|boolean',
            'has_expiry_date' => 'required|boolean',
            'production_date' => 'required_if:has_expiry_date,1|date',
            'expiry_date' => 'required_if:has_expiry_date,1|date',
            'sku' => 'required|integer|unique:products,sku',
            'barcode' => 'required|integer|unique:products,barcode',
            'enable_cod' => 'required|boolean',
            'enable_review' => 'required|boolean',
            'seo_title' => 'required|array|max:255',
            'seo_title.*' => 'required|string|max:255',
            'seo_description' => 'required|array|max:255',
            'seo_description.*' => 'required|string|max:255',
            'questions' => 'array',
            'questions.*' => 'required|string|max:255',
            'answers' => 'array',
            'answers.*' => 'required|string|max:255',
            'warehouse_ids' => 'required|array',
            'warehouse_ids.*' => 'required|integer',
            'quantities' => 'required|array',
            'quantities.*' => 'required|integer',
            'category_ids' => 'sometimes|nullable|array',
            'category_ids.*' => 'sometimes|nullable|integer',
            'brand_ids' => 'sometimes|nullable|array',
            'brand_ids.*' => 'sometimes|nullable|integer',
            'collection_ids' => 'sometimes|nullable|array',
            'collection_ids.*' => 'sometimes|nullable|integer',
            'unit_id' => 'required|integer|exists:units,id',
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
            'title.*' => 'required|string|max:255|unique_translation:products,title,'.$modelId,
            'description' => 'required|array',
            'description.*' => 'required|string|string|max:255',
            'short_description' => 'required|array',
            'short_description.*' => 'required|string|string|max:255',
            'price_before_discount' => 'required|numeric',
            'price_after_discount' => 'required|numeric',
            'cost_per_item' => 'sometimes|nullable|numeric',
            'expiry_price_after_discount' => 'sometimes|nullable|date',
            'min_quantity_per_order' => 'sometimes|nullable|integer',
            'max_quantity_per_order' => 'sometimes|nullable|integer',
            'weight' => 'sometimes|nullable|integer',
            'apply_tax' => 'required|boolean',
            'show_product' => 'required|boolean',
            'has_expiry_date' => 'required|boolean',
            'production_date' => 'required_if:has_expiry_date,1|date',
            'expiry_date' => 'required_if:has_expiry_date,1|date',
            'sku' => 'required|integer|unique:products,sku,'.$modelId,
            'barcode' => 'required|integer|unique:products,barcode,'.$modelId,
            'enable_cod' => 'required|boolean',
            'enable_review' => 'required|boolean',
            'seo_title' => 'required|array|max:255',
            'seo_title.*' => 'required|string|max:255',
            'seo_description' => 'required|array|max:255',
            'seo_description.*' => 'required|string|max:255',
            'questions' => 'array',
            'questions.*' => 'required|string|max:255',
            'answers' => 'array',
            'answers.*' => 'required|string|max:255',
            'warehouse_ids' => 'required|array',
            'warehouse_ids.*' => 'required|integer',
            'quantities' => 'required|array',
            'quantities.*' => 'required|integer',
            'category_ids' => 'sometimes|nullable|array',
            'category_ids.*' => 'sometimes|nullable|integer',
            'brand_ids' => 'sometimes|nullable|array',
            'brand_ids.*' => 'sometimes|nullable|integer',
            'collection_ids' => 'sometimes|nullable|array',
            'collection_ids.*' => 'sometimes|nullable|integer',

            'unit_id' => 'required|integer|exists:units,id',
            'has_shipment' => 'required|boolean',
            'active' => 'required|boolean',
            'has_checkout_file' => 'required|boolean',
            'has_checkout_notes' => 'required|boolean',
            'shipment_weight' => 'requiredIf:has_shipment,1',
            'show_related_products' => 'required|boolean',
            'related_categories_ids' => 'required|array',
            'related_categories_ids.*' => 'required|integer|exists:product_categories,id',
        ];
    }


}
