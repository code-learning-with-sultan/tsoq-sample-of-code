<?php

namespace Modules\StoreDashboard\ProductCategory\Repositories;

use App\Helpers\ApiHelper;
use App\Interfaces\BaseRepository;

// Model
use Exception;
use Illuminate\Support\Arr;
use Modules\StoreDashboard\ProductCategory\Actions\Validations;
use Modules\StoreDashboard\ProductCategory\Models\ProductCategory;

class ProductCategoryRepository implements BaseRepository
{
    use Validations;
    public function all()
    {
        try{
            $models = ProductCategory::query()->paginate(10);
            return ApiHelper::respondOk($models);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function find(string $id)
    {
        try{
            $model = ProductCategory::query()->find($id);
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
            $modelData = Arr::except($data, ['image']);
            $model = ProductCategory::create($modelData);
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
            $model = ProductCategory::query()->find($id);
            if(!$model){
                return ApiHelper::respondNotFound();
            }
            $modelData = Arr::except($data, ['image','_method','media_names']);
            $model->update($modelData);
            $model->getMedia()->each(function($media)use ($data){
                if(!in_array($media->name, $data['media_names'])){
                    $media->delete();
                }
            });
            if(isset($data['image'])){
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
            $model = ProductCategory::query()->find($id);
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
