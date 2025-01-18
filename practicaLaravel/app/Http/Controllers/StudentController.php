<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\DB;
use App\Http\Requests\StudentRequest;

class StudentController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        try {
            $students = DB::table('students')->get();
            return response()->json(['message' => 'students loaded correctly', 'data' => $students], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Error loading students', 'message' => $e->getMessage()], 500);
        }

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StudentRequest $request)
    {
        try {
            $request->validated();
            $id = DB::table('students')->insertGetId([
                'name' => $request->name,
                'phone' => $request->phone,
                'age' => $request->age,
                'password' => $request->password,
                'email' => $request->email,
                'gender' => $request->gender,
            ]);
    
            $student = DB::table('students')->where('id', $id)->first();
            return response()->json(['message' => 'student saved correctly', 'data' => $student], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Error saving student', 'message' => $e->getMessage()], 500);
        }

    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        try {
            $student = DB::table('students')->where('id', $id)->first();
            return response()->json(['message' => 'student loaded correctly', 'data' => $student], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Error loading student', 'message' => $e->getMessage()], 500);
        }
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(StudentRequest $request, string $id)
    { 
        try {
            $data = $request->only(['name', 'phone', 'age', 'password', 'email', 'gender']);
            DB::table('students')->where('id', $id)->update($data);
            $student = DB::table('students')->where('id', $id)->first();
            return response()->json(['message' => 'student updated correctly', 'data' => $student], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Error updating student', 'message' => $e->getMessage()], 500);
        }

    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        try {
            $student = DB::table('students')->where('id', $id)->first();
            DB::table('students')->where('id', $id)->delete();
            return response()->json(['message' => 'student deleted correctly', 'data' => $student], 200);
        } catch (\Exception $e) {
            return response()->json(['error' => 'Error deleting student', 'message' => $e->getMessage()], 500);
        }

    }
}
