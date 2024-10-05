<?php

namespace Modules\StoreDashboard\Unit\Repositories;

use App\Helpers\ApiHelper;
use App\Interfaces\BaseRepository;

use Exception;
use Modules\StoreDashboard\Unit\Actions\Validations;
use Modules\StoreDashboard\Unit\Models\Unit;

class UnitRepository implements BaseRepository
{
    use Validations;
    public function all()
    {
        try{
            $models = Unit::query()->paginate(10);
            return ApiHelper::respondOk($models);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function find(string $id)
    {
        try{
            $model = Unit::query()->find($id);
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
            $model = Unit::create($data);
            return ApiHelper::respondOk($model);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function update($id,array $data)
    {
        try{
            $validationErrors = $this->validateUpdateRequest($data, $id);
            if(!empty($validationErrors)){
                return ApiHelper::respondValidationError($validationErrors);
            }
            $model = Unit::query()->find($id);
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
            $model = Unit::query()->find($id);
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
