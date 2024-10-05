<?php

namespace Modules\StoreDashboard\ProductCollection\Repositories;

use App\Helpers\ApiHelper;
use App\Interfaces\BaseRepository;

// Model
use Exception;
use Modules\StoreDashboard\ProductCollection\Actions\Validations;
use Modules\StoreDashboard\ProductCollection\Models\ProductCollection;

class ProductCollectionRepository implements BaseRepository
{
    use Validations;
    public function all()
    {
        try{
            $models = ProductCollection::query()->paginate(10);
            return ApiHelper::respondOk($models);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function find(string $id)
    {
        try{
            $model = ProductCollection::query()->find($id);
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
            $model = ProductCollection::create($data);
            if(isset($data['image'])){
                $model->addMedia($data['image'])->toMediaCollection();
            }
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
            $model = ProductCollection::query()->find($id);
            if(!$model){
                return ApiHelper::respondNotFound();
            }
            unset($data['_method']);
            $model->update($data);
            if(isset($data['image'])){
                $model->clearMediaCollection();
                $model->addMedia($data['image'])->toMediaCollection();
            }
            return ApiHelper::respondOk($model);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function destroy($id)
    {
        try{
            $model = ProductCollection::query()->find($id);
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
