<?php

namespace Modules\StoreDashboard\LoyalityPoint\Repositories;

use App\Helpers\ApiHelper;
use Modules\StoreDashboard\LoyalityPoint\Models\LoyalitySystem;
// Model
use Exception;
use Modules\StoreDashboard\LoyalityPoint\Actions\LoyalitySystemValidation;

class LoyalitySystemRepository
{
    use LoyalitySystemValidation;
    public function all()
    {
        try{
            $models = LoyalitySystem::first();
            return ApiHelper::respondOk($models);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function find(string $id)
    {
        try{
            $model = LoyalitySystem::query()->find($id);
            if(!$model){
                return ApiHelper::respondNotFound();
            }
            return ApiHelper::respondOk($model);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }
    }

    public function store(array $data)
    {


    }

    public function update(array $data)
    {
        try{
            $validationErrors = $this->validateUpdateRequest($data);
            if(!empty($validationErrors)){
                return ApiHelper::respondValidationError($validationErrors);
            }
            $model = LoyalitySystem::first();
            if(!$model){
                return ApiHelper::respondNotFound();
            }
            $image = $data['image'];
            unset($data['_method'], $data['image']);
            $model->update($data);
            if($image) {
                $model->clearMediaCollection();
                $model->addMedia($image)->toMediaCollection();
            }
            return ApiHelper::respondOk($model);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function destroy($id)
    {

    }
}
