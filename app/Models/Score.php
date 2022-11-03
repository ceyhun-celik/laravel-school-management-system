<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Score extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'scores';

    protected $fillable = [
        'timetable_id',
        'student_id',
        'midterm',
        'final',
        'result'
    ];

    public function timetable()
    {
        return $this->belongsTo(Timetable::class);
    }

    public function student()
    {
        return $this->belongsTo(Student::class);
    }
}
