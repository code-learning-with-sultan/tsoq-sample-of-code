<?php

namespace Modules\StoreDashboard\Option\Repositories;

use App\Helpers\ApiHelper;
use App\Interfaces\BaseRepository;

// Model
use Exception;
use Modules\StoreDashboard\Option\Actions\OptionValidations;
use Modules\StoreDashboard\Option\Models\Option;

class OptionRepository implements BaseRepository
{
    use OptionValidations;
    public function all()
    {
        try{
            $models = Option::query()->paginate(10);
            return ApiHelper::respondOk($models);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function find(string $id)
    {
        try{
            $model = Option::query()->find($id);
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
        try{
            $validationErrors = $this->validateStoreRequest($data);
            if(!empty($validationErrors)){
                return ApiHelper::respondValidationError($validationErrors);
            }
            $model = Option::create($data);
            return ApiHelper::respondOk($model);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function update($id,array $data)
    {
        try{
            $validationErrors = $this->validateUpdateRequest($data,$id);
            if(!empty($validationErrors)){
                return ApiHelper::respondValidationError($validationErrors);
            }
            $model = Option::query()->find($id);
            if(!$model){
                return ApiHelper::respondNotFound();
            }
            unset($data['_method']);
            $model->update($data);
            return ApiHelper::respondOk($model);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function destroy($id)
    {
        try{
            $model = Option::query()->find($id);
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
