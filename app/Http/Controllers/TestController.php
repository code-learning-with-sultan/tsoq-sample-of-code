<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Helpers\ApiHelper;
use Illuminate\Support\Facades\Validator;
use OpenApi\Annotations as OA;

class TestController extends Controller
{

    /**
     * @OA\Info(
     *      version="1.0.0",
     *      title="L5 OpenApi",
     *      description="L5 Swagger OpenApi description"
     * )
     */
    public function index(){
        $data = [
            'name' => 'Mohammed',
            'email' => 'mohammed@me.com',
            'password' => '123456'
        ];
        $validator = Validator::make($data, [
            'name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8'],
        ]);
        return ApiHelper::respondValidationError($validator->errors());
    }
}
