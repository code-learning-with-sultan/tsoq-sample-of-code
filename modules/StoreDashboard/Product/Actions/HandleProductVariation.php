<?php

namespace Modules\StoreDashboard\Product\Actions;

use Illuminate\Support\Facades\Validator;


trait HandleProductVariation
{

    public function handleProductVariations(array $data, $model=null, $insertData=true){
        if(isset($data['has_options']) && $data['has_options'] == 1) {
           if(isset($data['variations']) && !empty($data['variations'])) {
                foreach($data['variations'] as $variation) {
                    $optionsValuesIds = $variation['options_values'];
                    unset($variation['options_values']);
                    $variation = $model->variations()->create($variation);
                    $variation->options()->attach($optionsValuesIds);
                }
           }

        }
    }


    public function validateVariations(array $data){
        if(isset($data['has_options']) && $data['has_options'] == 1) {
            if(isset($data['variations']) && !empty($data['variations'])) {
                foreach($data['variations'] as $variation) {
                    $rules = [
                        'sku' => 'required',
                        'barcode' => 'required',
                        'price_before_discount' => 'required',
                        'price_after_discount' => 'nullable',
                        'cost_per_item' => 'nullable',
                        'options_values' => 'required|array',
                        'options_values.*' => 'required|exists:option_values,id',
                    ];
                    $validator = Validator::make($variation,$rules);
                    if ($validator->fails()) {
                        return $validator->errors();
                    }
                }
            }

        }
        return [];
    }

}
