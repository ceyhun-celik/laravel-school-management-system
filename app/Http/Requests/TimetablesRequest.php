<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TimetablesRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return match(request()->method()){
            'POST' => [
                'classroom_id' => 'required|integer',
                'teacher_id' => 'required|integer'
            ],
            'PUT' => [
                'student_id' => 'required|array',
                'student_id.*' => 'nullable|integer',
                'midterm' => 'required|array',
                'midterm.*' => 'nullable|integer',
                'final' => 'required|array',
                'final.*' => 'nullable|integer',
            ],
            default => []
        };
    }
}
