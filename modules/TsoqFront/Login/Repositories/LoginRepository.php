<?php

namespace Modules\TsoqFront\Login\Repositories;

use App\Helpers\ApiHelper;
use App\Models\StoreOwner;
use App\Models\Tenant;
use Database\Seeders\GeneralSeeder;
// Model

use Exception;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Modules\TsoqFront\Login\Actions\Validations;

class LoginRepository
{
    use Validations;
    public function login(array $data)
    {
        try{
            $validationErrors = $this->validateStoreRequest($data);
            if(!empty($validationErrors)){
                return ApiHelper::respondValidationError($validationErrors);
            }

            $storeOwner = StoreOwner::where('email', $data['email'])->first();
            if(empty($storeOwner)){
                return ApiHelper::respondValidationError(['email' => 'Invalid email or password']);
            }

            if (!Hash::check($data['password'], $storeOwner->password)) {
                return ApiHelper::respondInternalError('Credentials do not match');
            }
            Tenant::find($storeOwner->tenant_id)->run(function () use (&$storeOwner) {
                $tenantStoreOwner = StoreOwner::where('email', $storeOwner->email)->first();
                Auth::login($tenantStoreOwner);
                $token = $tenantStoreOwner->createToken('token')->plainTextToken;
                $storeOwner['token'] = $token;
            });
            return ApiHelper::respondOk($storeOwner);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }
    }
}
