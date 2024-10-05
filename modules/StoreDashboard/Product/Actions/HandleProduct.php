<?php

namespace Modules\StoreDashboard\Product\Actions;
use Modules\StoreDashboard\Product\Models\Product;
use Illuminate\Support\Str;
use Mcamara\LaravelLocalization\Facades\LaravelLocalization;
use Modules\StoreDashboard\Product\Models\ProductRelatedCategory;

trait HandleProduct
{

    use HandleProductVariation;

    public function productAction(array $data, $model=null, $insertData=true) {
        $productData = [
            'price_before_discount' => $data['price_before_discount'],
            'price_after_discount' => $data['price_after_discount'],
            'cost_per_item' => $data['cost_per_item'],
            'expiry_price_after_discount' => $data['expiry_price_after_discount'],
            'min_quantity_per_order' => $data['min_quantity_per_order'],
            'max_quantity_per_order' => $data['max_quantity_per_order'],
            'weight' => $data['weight'],
            'apply_tax' => $data['apply_tax'],
            'show_product' => $data['show_product'],
            'has_expiry_date' => $data['has_expiry_date'],
            'production_date' => $data['production_date'],
            'expiry_date' => $data['expiry_date'],
            'sku' => $data['sku'],
            'barcode' => $data['barcode'],
            'enable_cod' => $data['enable_cod'],
            'enable_review' => $data['enable_review'],
            'unit_id' => $data['unit_id'],
            'has_shipment' => $data['has_shipment'],
            'shipment_weight' => $data['shipment_weight'],
            'has_checkout_file' => $data['has_checkout_file'],
            'has_checkout_notes' => $data['has_checkout_notes'],
            'shipment_weight' => $data['shipment_weight'],
            'show_related_products' => $data['show_related_products'],
            'url_handler' => $data['url_handler'],
            'active' => $data['active']
        ];
        foreach(LaravelLocalization::getSupportedLanguagesKeys() as $locale){
            $productData['title'][$locale] = $data['title'][$locale];
            $productData['description'][$locale] = $data['description'][$locale];
            $productData['short_description'][$locale] = $data['short_description'][$locale];
            $productData['seo_title'][$locale] = $data['seo_title'][$locale];
            $productData['seo_description'][$locale] = $data['seo_description'][$locale];
            $productData['url_handler'][$locale] = $data['url_handler'][$locale];
        }
        if($insertData){
            $product = Product::create($productData);
            foreach($data['related_categories_ids'] as $id){
                ProductRelatedCategory::create([
                    'product_id' => $product->id,
                    'product_category_id' => $id
                ]);
            }
            return $product;
        } else {
            $model->update($productData);
            ProductRelatedCategory::where('product_id', $model->id)->delete();
            foreach($data['related_categories_ids'] as $id){
                ProductRelatedCategory::create([
                    'product_id' => $model->id,
                    'product_category_id' => $id
                ]);
            }
            return $model;
        }
    }

    public function faqAction(array $data, $model, $insertData=true) {
        $faqData = [];
        // insert faqs
        $questions = $data['question'];
        $answers = $data['answer'];
        foreach ($questions as $key => $question) {
            // foreach on lang
            foreach (LaravelLocalization::getSupportedLanguagesKeys() as $locale) {
                $faqData[$key]['question'][$locale] = $question[$locale];
                $faqData[$key]['answer'][$locale] = $answers[$key][$locale];
            }
        }
        if(!$insertData){
            $model->faqs()->delete();
        }
        return $model->faqs()->createMany($faqData);
    }

    public function mediaAction(array $data, $model, $insertData=true) {
        if(isset($data['images'])) {
            // check if action inser or update
            if(!$insertData){
                $model->clearMediaCollection('images');
            }
            // store media
            foreach($data['images'] as $image){
                $model->addMedia($image)->toMediaCollection('images');
            }
            return $model->getMedia('images');
        }
    }

    public function handleQuantity(array $data, $model, $insertData=true) {
        $warehoseIds = $data['warehouse_ids'];
        $quantities = $data['quantities'];
        if(count($warehoseIds) != count($quantities)) {
            throw new \Exception('Warehouses and quantities must be the same length');
        }
        if(!$insertData){
            $model->quantity()->delete();
        }
        $data = [];
        foreach($warehoseIds as $key => $warehouseId) {
            $data[] = [
                'warehouse_id' => $warehouseId,
                'quantity' => $quantities[$key],
            ];
        }
        return $model->quantity()->createMany($data);
    }
    /**
     *
     * Handle Brands - collections - categories
     *
     */
    public function handleBrandCollectionCategory(array $data, $model, $insertData=true) {
        if(!$insertData){
            $model->categories()->detach();
            $model->brands()->detach();
            $model->collections()->detach();
        }
        if(isset($data['category_ids']) && !empty($data['category_ids'])) {
            $model->categories()->attach($data['category_ids']);
        }
        if(isset($data['brand_ids']) && !empty($data['brand_ids'])) {
            $model->brands()->attach($data['brand_ids']);
        }
        if(isset($data['collection_ids']) && !empty($data['collection_ids'])) {
            $model->collections()->attach($data['collection_ids']);
        }
    }
}
