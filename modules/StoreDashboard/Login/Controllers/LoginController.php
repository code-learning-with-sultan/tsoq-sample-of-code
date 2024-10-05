<?php

namespace Modules\StoreDashboard\Login\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Modules\StoreDashboard\Login\Repositories\LoginRepository;

class LoginController extends Controller
{

    public function __construct(private LoginRepository $LoginRepository)
    {

    }

    public function postLogin(Request $request): JsonResponse
    {
        return $this->LoginRepository->postLogin($request->all());
    }

    public function postLogout(){
        return $this->LoginRepository->postLogout();
    }
}
