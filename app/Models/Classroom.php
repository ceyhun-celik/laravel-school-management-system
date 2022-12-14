<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Classroom extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'classrooms';

    protected $fillable = [
        'classroom_name'
    ];

    public function students()
    {
        return $this->hasMany(Student::class);
    }

    public function timetables()
    {
        return $this->hasMany(Timetable::class);
    }
}
