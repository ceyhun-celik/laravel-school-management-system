<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UsersRequest extends FormRequest
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
                'name' => 'required|string',
                'email' => 'required|email|unique:users',
                'role_id' => 'required|integer',
                'password' => 'required|string',
            ],
            'PUT' => [
                'name' => 'required|string',
                'email' => "required|email|unique:users,email,{$this->id}",
                'role_id' => 'required|integer',
                'password' => 'nullable|string',
            ],
            default => []
        };
    }
}
