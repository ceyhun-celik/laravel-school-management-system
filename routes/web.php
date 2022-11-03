<?php

use App\Http\Controllers\ClassroomsController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\LessonsController;
use App\Http\Controllers\ScoresController;
use App\Http\Controllers\StudentsController;
use App\Http\Controllers\SystemsController;
use App\Http\Controllers\TeachersController;
use App\Http\Controllers\TimetablesController;
use App\Http\Controllers\UsersController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware(['auth', 'verified'])->group(function(){
    Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard');

    Route::resources([
        'users' => UsersController::class,
        'lessons' => LessonsController::class,
        'teachers' => TeachersController::class,
        'classrooms' => ClassroomsController::class,
        'students' => StudentsController::class,
        'timetables' => TimetablesController::class,
        'scores' => ScoresController::class,
        'systems' => SystemsController::class
    ]);
});

require __DIR__.'/auth.php';
