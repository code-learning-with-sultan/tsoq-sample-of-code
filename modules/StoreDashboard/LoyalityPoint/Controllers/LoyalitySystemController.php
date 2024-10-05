<?php

namespace Modules\StoreDashboard\LoyalityPoint\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Modules\StoreDashboard\LoyalityPoint\Repositories\LoyalitySystemRepository;

class LoyalitySystemController extends Controller
{

    public function __construct(private LoyalitySystemRepository $LoyalitySystemRepository)
    {

    }

    /**
     * Display a listing of the resource.
     *
     * @return JsonResponse
     */
    public function index(): JsonResponse
    {
        return $this->LoyalitySystemRepository->all();
    }

    /**
     * Store a newly created resource in DB.
     *
     * @param Request $request
     * @return JsonResponse
     */
    public function store(Request $request)
    {

    }

    /**
     * Display the specified resource.
     *
     * @param string $id model id
     * @return JsonResponse
     */
    public function show(string $id): JsonResponse
    {
        return $this->LoyalitySystemRepository->find($id);
    }

    /**
     * Update the specified resource in DB.
     *
     * @param string $id model id
     * @param Request $request
     * @return JsonResponse
     */
    public function update(Request $request): JsonResponse
    {
        return $this->LoyalitySystemRepository->update($request->all());
    }

    /**
     * Delete the specified resource from DB.
     *
     * @param string $id model id
     * @return JsonResponse
     */
    public function destroy(string $id)
    {

    }
}
