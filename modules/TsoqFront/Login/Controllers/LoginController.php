<?php

namespace Modules\TsoqFront\Login\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Modules\TsoqFront\Login\Repositories\LoginRepository;

class LoginController extends Controller
{
    public function __construct(private LoginRepository $LoginRepository)
    {

    }

    public function login(Request $request): JsonResponse
    {
        return $this->LoginRepository->login($request->all());
    }
}
