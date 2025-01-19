<?php

namespace Database\Seeders;

use App\Models\Student;
use App\Models\Teacher;
use App\Models\Subject;
use App\Models\Classroom;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     */
    public function run(): void
    {
        $students = Student::factory(10)->create();
        $teachers = Teacher::factory()->count(5)->create();

        $teachers->each(function ($teacher) {
            Subject::factory()->count(2)->create(['teacher_id' => $teacher->id]);
            Classroom::factory()->count(1)->create(['teacher_id' => $teacher->id]);
        });

        Subject::all()->each(function ($subject) use ($students) {
            $subject->students()->attach($students->random(5)->pluck('id')->toArray());
        });    
    }
}
