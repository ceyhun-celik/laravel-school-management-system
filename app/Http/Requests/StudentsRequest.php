<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StudentsRequest extends FormRequest
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
                'user_id' => 'required|integer|unique:students,user_id',
                'classroom_id' => 'required|integer'
            ],
            'PUT' => [
                'classroom_id' => 'required|integer'
            ],
            default => []
        };
    }

    public function attributes()
    {
        return [
            'user_id' => 'User Name',
            'classroom_id' => 'Classroom Name'
        ];
    }
}
