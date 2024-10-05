<?php

namespace Modules\StoreDashboard\Auth\Repositories;

use App\Helpers\ApiHelper;
use App\Interfaces\BaseRepository;

// Model
use Auth;
use Exception;
use Modules\StoreDashboard\Auth\Actions\Validations;

class AuthRepository implements BaseRepository
{
    use Validations;
    public function all()
    {
        try{
            $models = Auth::query()->paginate(10);
            return ApiHelper::respondOk($models);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function find(string $id)
    {
        try{
            $model = Auth::query()->find($id);
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
            $model = Auth::create($data);
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
            $model = Auth::query()->find($id);
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
            $model = Auth::query()->find($id);
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
