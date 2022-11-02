<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class TeachersRequest extends FormRequest
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
                'user_id' => 'required|integer|unique:teachers,user_id,NULL,id,deleted_at,NULL',
                'lesson_id' => 'required|integer'
            ],
            'PUT' => [
                'lesson_id' => 'required|integer'
            ],
            default => []
        };
    }

    public function attributes()
    {
        return [
            'user_id' => 'Teacher Name',
            'lesson_id' => 'Lesson Name'
        ];
    }
}
