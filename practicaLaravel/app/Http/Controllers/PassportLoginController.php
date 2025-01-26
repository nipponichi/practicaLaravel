<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;

class PassportLoginController extends Controller
{
    public function login(Request $request)
    {
        $Data = $request->validate([
            'name' => 'required|string|email',
            'password' => 'required|string',
        ]);
    
        if (!auth()->attempt($Data)) {
            return response()->json(['message' => 'Invalid credentials'], 401);
        }
    
        $user = auth()->user();
        $accessToken = $user->createToken('token')->accessToken;
    
        return response()->json([
            'user' => $user,
            'access_token' => $accessToken,
        ]);
    }
}
