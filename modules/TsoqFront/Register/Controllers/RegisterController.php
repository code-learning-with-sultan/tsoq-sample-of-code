<?php

namespace Modules\TsoqFront\Register\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Modules\TsoqFront\Register\Repositories\RegisterRepository;
use OpenApi\Annotations as OA;
class RegisterController extends Controller
{
    public function __construct(private RegisterRepository $RegisterRepository)
    {

    }

    /**
     * @OA\Post(
     *     path="/register",
     *     description="Register a new store",
     *      @OA\Parameter(
     *         name="name",
     *         in="query",
     *         description="Store owner name",
     *         required=true,
     *         @OA\Schema(type="string")
     *     ),
     *      @OA\Parameter(
     *         name="email",
     *         in="query",
     *         description="Store owner email",
     *         required=true,
     *         @OA\Schema(type="string")
     *     ),
     *      @OA\Parameter(
     *         name="password",
     *         in="query",
     *         description="Store owner password",
     *         required=true,
     *         @OA\Schema(type="string")
     *     ),
     *      @OA\Parameter(
     *         name="store",
     *         in="query",
     *         description="Store name",
     *         required=true,
     *         @OA\Schema(type="string")
     *     ),
     *     @OA\Response(response="200", description="Store has been created successfully"),
     *     @OA\Response(response="500", description="Server error"),
     *     @OA\Response(response="402", description="Validation error"),
     * )
     */    public function store(Request $request): JsonResponse
    {
        return $this->RegisterRepository->store($request->all());
    }
}
