<?php

namespace Modules\StoreDashboard\Unit\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Request;
use Modules\StoreDashboard\Unit\Repositories\UnitRepository;

class UnitController extends Controller
{

    public function __construct(private UnitRepository $UnitRepository)
    {

    }

    /**
     * Display a listing of the resource.
     *
     * @return JsonResponse
     */
    public function index(): JsonResponse
    {
        return $this->UnitRepository->all();
    }

    /**
     * Store a newly created resource in DB.
     *
     * @param Request $request
     * @return JsonResponse
     */
    public function store(Request $request): JsonResponse
    {
        return $this->UnitRepository->store($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param string $id model id
     * @return JsonResponse
     */
    public function show(string $id): JsonResponse
    {
        return $this->UnitRepository->find($id);
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
        return $this->UnitRepository->update($id, $request->all());
    }

    /**
     * Delete the specified resource from DB.
     *
     * @param string $id model id
     * @return JsonResponse
     */
    public function destroy(string $id): JsonResponse
    {
        return $this->UnitRepository->destroy($id);
    }
}
