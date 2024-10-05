<?php

namespace App\Helpers;

class ApiHelper
{

    public static function respondOk($response = [])
    {
        return self::respond($response, 200);
    }

    public static function respondNotFound($response = [])
    {
        return self::respond($response, 404);
    }

    public static function respondValidationError($response = [])
    {
        return self::respond($response, 422);
    }

    public static function respondUnAuthenticated($response = [])
    {
        return self::respond($response, 401);
    }

    public static function respondForbidden($response = [])
    {
        return self::respond($response, 403);
    }

    public static function respondInternalError($response = [])
    {
        return self::respond($response, 500);
    }

    public static function respond($response, $code)
    {
        return response()->json([
            'code' => $code,
            'response' => $response
        ], $code);
    }
}
