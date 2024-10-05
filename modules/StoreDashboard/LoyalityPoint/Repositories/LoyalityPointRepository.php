<?php

namespace Modules\StoreDashboard\LoyalityPoint\Repositories;

use App\Helpers\ApiHelper;
use App\Interfaces\BaseRepository;

// Model
use Exception;
use Modules\StoreDashboard\LoyalityPoint\Actions\Validations;
use Modules\StoreDashboard\LoyalityPoint\Models\LoyalityPoint;

class LoyalityPointRepository
{
    use Validations;
    public function all()
    {
        try{
            $models = LoyalityPoint::query()->paginate(10);
            return ApiHelper::respondOk($models);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function find(string $id)
    {
        try{
            $model = LoyalityPoint::query()->find($id);
            if(!$model){
                return ApiHelper::respondNotFound();
            }
            return ApiHelper::respondOk($model);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }
    }

    public function update($id,array $data)
    {
        try{
            $validationErrors = $this->validateUpdateRequest($data);
            if(!empty($validationErrors)){
                return ApiHelper::respondValidationError($validationErrors);
            }
            $model = LoyalityPoint::query()->find($id);
            if(!$model){
                return ApiHelper::respondNotFound();
            }
            unset($data['_method']);
            $model->update($data);
            // update all loyality points value in sar in all records
            foreach(LoyalityPoint::all() as $loyalityPoint){
                $loyalityPoint->update(['one_point_equal_sar' => $model->one_point_equal_sar]);
            }
            return ApiHelper::respondOk($model);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function destroy($id)
    {
        try{
            $model = LoyalityPoint::query()->find($id);
            if(!$model){
                return ApiHelper::respondNotFound();
            }
            $model->delete();
            return ApiHelper::respondOk();
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }
    }
}
