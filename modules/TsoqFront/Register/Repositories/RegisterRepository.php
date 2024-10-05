<?php

namespace Modules\TsoqFront\Register\Repositories;

use App\Helpers\ApiHelper;
use App\Models\StoreOwner;
use App\Models\Tenant;
use App\Models\User;
use Database\Seeders\GeneralSeeder;
// Model

use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Validator;
use Modules\TsoqFront\Register\Actions\SymlinkTenantStorage;
use Modules\TsoqFront\Register\Actions\Validations;

class RegisterRepository
{
    use Validations,SymlinkTenantStorage;
    public function store(array $data)
    {
        try{
            $validationErrors = $this->validateStoreRequest($data);
            if(!empty($validationErrors)){
                return ApiHelper::respondValidationError($validationErrors);
            }
            $tenantId = $data['store'];
            $tenant = Tenant::create(['id' => $tenantId]);
            $tenant->domains()->create(['domain' => $tenantId.config('tenancy.current_central_domain')]);
            // insert data in central db
            $data = [
                'name' => $data['name'],
                'email' => $data['email'],
                'password' => bcrypt($data['password']),
                'tenant_id' => $tenantId
            ];
            StoreOwner::create($data);
            unset($data['tenant_id']);
            // insert data in tenant context
            $token = null;
            $tenant->run(function () use ($data, $tenantId,&$token) {
                $storeOwner = StoreOwner::create($data);
                Auth::login($storeOwner);
                $token = $storeOwner->createToken('token', ['role:store_owner'])->plainTextToken;
                // run general tenant seeder
                $generalTenantSeeder = new GeneralSeeder();
                $generalTenantSeeder->run(true, $tenantId);
            });


            $this->symlinkTenantStorage($tenantId);
            $tenant->token = $token;
            return ApiHelper::respondOk($tenant);
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }
    }
}
