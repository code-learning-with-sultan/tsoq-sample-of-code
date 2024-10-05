<?php

namespace App\Http\Middleware;

use App\Helpers\ApiHelper;
use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class CheckIfTenantHeaderExists
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {
        // Check if X-Tenant header exists
        if (!$request->headers->has('X-Tenant')) {
            return ApiHelper::respondNotFound('X-Tenant header not found');
        }
        return $next($request);
    }
}
