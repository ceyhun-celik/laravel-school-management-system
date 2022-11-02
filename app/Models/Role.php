<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    use HasFactory;

    public const PRINCIPAL = 1;
    public const TEACHER = 2;
    public const STUDENT = 3;
}
