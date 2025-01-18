<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\StudentController;


Route::middleware(['id.validation'])->group(function () {
    Route::get('/students/{id}', [StudentController::class, 'show']);
    Route::put('/students/{id}', [StudentController::class, 'update']);
    Route::delete('/students/{id}', [StudentController::class, 'destroy']);
});
 

Route::apiResource('/students', StudentController::class)->except('show', 'update', 'destroy');