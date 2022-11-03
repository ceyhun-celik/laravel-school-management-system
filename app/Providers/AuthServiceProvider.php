<?php

namespace App\Providers;

// use Illuminate\Support\Facades\Gate;

use App\Models\Classroom;
use App\Models\Lesson;
use App\Models\Role;
use App\Models\Score;
use App\Models\Student;
use App\Models\System;
use App\Models\Teacher;
use App\Models\Timetable;
use App\Models\User;
use App\Policies\ClassroomPolicy;
use App\Policies\LessonPolicy;
use App\Policies\ScorePolicy;
use App\Policies\StudentPolicy;
use App\Policies\SystemPolicy;
use App\Policies\TeacherPolicy;
use App\Policies\TimetablePolicy;
use App\Policies\UserPolicy;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The model to policy mappings for the application.
     *
     * @var array<class-string, class-string>
     */
    protected $policies = [
        // 'App\Models\Model' => 'App\Policies\ModelPolicy',
        User::class => UserPolicy::class,
        Lesson::class => LessonPolicy::class,
        Teacher::class => TeacherPolicy::class,
        Classroom::class => ClassroomPolicy::class,
        Student::class => StudentPolicy::class,
        Timetable::class => TimetablePolicy::class,
        Score::class => ScorePolicy::class,
        System::class => SystemPolicy::class,
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        Gate::define('principal', fn (User $user) => $user->role_id === Role::PRINCIPAL);
        Gate::define('principal_teacher', fn(User $user) => $user->role_id === Role::PRINCIPAL || $user->role_id === Role::TEACHER);
        Gate::define('teacher', fn(User $user) => $user->role_id === Role::TEACHER);
        Gate::define('teacher_student', fn(User $user) => $user->role_id === Role::TEACHER || $user->role_id === Role::STUDENT);
    }
}
