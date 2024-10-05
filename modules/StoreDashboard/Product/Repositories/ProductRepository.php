<?php

namespace Modules\StoreDashboard\Product\Repositories;

use App\Helpers\ApiHelper;
use App\Interfaces\BaseRepository;

use Exception;
use Illuminate\Support\Facades\DB;
use Modules\StoreDashboard\Product\Actions\HandleProduct;
use Modules\StoreDashboard\Product\Actions\Validations;
use Modules\StoreDashboard\Product\Models\Product;

class ProductRepository implements BaseRepository
{
    use Validations, HandleProduct;
    public function all()
    {
        try{
            $models = Product::query()->with('variations')->paginate(10);
            return ApiHelper::respondOk($models);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function find(string $id)
    {
        try{
            $model = Product::query()->find($id);
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
            DB::beginTransaction(); // Start transaction
            $validationErrors = $this->validateStoreRequest($data);
            if(!empty($validationErrors)){
                return ApiHelper::respondValidationError($validationErrors);
            }

            $variationsValidationErrors = $this->validateVariations($data);
            if(!empty($variationsValidationErrors)){
                return ApiHelper::respondValidationError($variationsValidationErrors);
            }

            $model = $this->productAction($data);
            $this->handleQuantity($data, $model);
            $this->handleBrandCollectionCategory($data, $model);
            $this->faqAction($data, $model);
            $this->mediaAction($data, $model);
            $this->handleProductVariations($data, $model);

            DB::commit();
            return ApiHelper::respondOk($model);
        }catch(Exception $e){
            DB::rollBack(); // Rollback transaction
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
            $model = Product::query()->find($id);
            if(!$model){
                return ApiHelper::respondNotFound();
            }

            $model = $this->productAction($data, $model, false);
            $this->handleQuantity($data, $model, false);
            $this->handleBrandCollectionCategory($data, $model, false);
            $this->faqAction($data, $model, false);
            $this->mediaAction($data, $model, false);

            DB::commit();
            return ApiHelper::respondOk($model);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }

    }

    public function destroy($id)
    {
        try{
            $model = Product::query()->find($id);
            if(!$model){
                return ApiHelper::respondNotFound();
            }
            $model->clearMediaCollection('images');
            $model->delete();
            return ApiHelper::respondOk();
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }
    }
}
