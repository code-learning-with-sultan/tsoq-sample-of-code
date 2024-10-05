<?php

namespace Modules\StoreDashboard\ProductBrand\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Modules\StoreDashboard\ProductBrand\Repositories\ProductBrandRepository;

class ProductBrandController extends Controller
{

    public function __construct(private ProductBrandRepository $ProductBrandRepository)
    {

    }

    /**
     * Display a listing of the resource.
     *
     * @return JsonResponse
     */
    public function index(): JsonResponse
    {
        return $this->ProductBrandRepository->all();
    }

    /**
     * Store a newly created resource in DB.
     *
     * @param Request $request
     * @return JsonResponse
     */
    public function store(Request $request): JsonResponse
    {
        return $this->ProductBrandRepository->store($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param string $id model id
     * @return JsonResponse
     */
    public function show(string $id): JsonResponse
    {
        return $this->ProductBrandRepository->find($id);
    }

    /**
     * Update the specified resource in DB.
     *
     * @param string $id model id
     * @param Request $request
     * @return JsonResponse
     */
    public function update(Request $request, string $id): JsonResponse
    {
        return $this->ProductBrandRepository->update($id, $request->all());
    }

    /**
     * Delete the specified resource from DB.
     *
     * @param string $id model id
     * @return JsonResponse
     */
    public function destroy(string $id): JsonResponse
    {
        return $this->ProductBrandRepository->destroy($id);
    }
}
