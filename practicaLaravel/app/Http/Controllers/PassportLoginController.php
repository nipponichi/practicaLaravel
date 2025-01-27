<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Exception;

class PassportLoginController extends Controller
{

    public function signup(Request $request)
    {
        $data = $request->validate([
            'name' => 'required|max:55',
            'email' => 'email|required|unique:users',
            'password' => 'required'
        ]);

        $user = User::create($data);
    
        $accessToken = $user->createToken('token')->accessToken;
    
        return response(['user' => $user, 'access_token' => $accessToken], 201);
        
    }
    public function login(Request $request)
    {

        if (Auth::guard('api')->check()) {
            return response()->json(['succes'=> true, 'message' => 'Already authentified'], 200);
        }

        $fieldType = filter_var($request->name, FILTER_VALIDATE_EMAIL) ? 'email' : 'name';

        $validations = [
            'password' => 'required|string',
        ];
        
        if ($fieldType === 'email') {
            $validations['name'] = 'required|email';
        } else {
            $validations['name'] = 'required|string';
        }

        $validatedData = $request->validate($validations);

        $data = [
            $fieldType => $validatedData['name'],
            'password' => $validatedData['password'],
        ];

        if (!Auth::attempt($data)) {
            return response()->json(['message' => 'Invalid credentials'], 401);
        }

        $user = Auth::user();
        $accessToken = $user->createToken('token')->accessToken;
    
        return response()->json([
            'user' => $user,
            'access_token' => $accessToken,
        ]);
    }

    public function userProfile()
    {
        try {
            $user = Auth::guard('api')->user();
            
            if ($user) {
                return response()->json(['success' => true, 'message' => 'Your user profile', 'data' => $user], 200);
            }
            
            return response()->json(['success' => false, 'message' => 'Not logged in user'], 401);

        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error getting user profile' . $e->getMessage(), 'data' => ''], 500);
        }

    }

    public function logout()
    {
        try {
            $user = Auth::guard('api')->user();

            if (!$user) {
                return response()->json(['success' => false, 'message' => 'Not logged in user'], 401);
            }
            
            $user->tokens()->delete();
    
            return response()->json(['success' => true,'message' =>'Logged out successfully'], 200);
        } catch (Exception $e) {
            return response()->json(['success' => false, 'message' => 'Error while logout' . $e->getMessage(), 'data' => ''], 500);
        }

        
    }
}
