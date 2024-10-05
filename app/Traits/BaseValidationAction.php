<?php

namespace App\Traits;

use Illuminate\Support\Facades\Validator;

trait BaseValidationAction
{

    public function validateStoreRequest(array $data)
    {
        return $this->getErrorsBag($data,'store');
    }

    public function validateUpdateRequest(array $data, $modelID=null)
    {
        return $this->getErrorsBag($data,'update', $modelID);

    }

    public function getErrorsBag(array $data,string $requestType, $modelID=null){
        $requestType == 'store' ? $rules = $this->storeRequestValidationRules() : $rules = $this->updateRequestValidationRules($modelID);
        $validator = Validator::make($data,$rules);
        if ($validator->fails()) {
            return $validator->errors();
        }
        return [];
    }
}
