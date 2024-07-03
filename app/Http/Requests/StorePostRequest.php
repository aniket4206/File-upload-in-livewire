<?php

namespace App\Http\Requests;

use App\Rules\Uppercase;
use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Validator;

class StorePostRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8'],
            'name' => ['required', 'string', 'min:8', new Uppercase],
            'role' => ['required', 'string', 'min:8'],
        ];
    }

    public function messages()
    {
        return [
            'email.required' => 'The :attribute is required for validation',
            'password.required' => 'The :attribute is required for validation',
            'name.required' => 'The :attribute is required for validation',
            'role.required' => 'The :attribute is required for validation',
        ];
    }

    public function attributes()
    {
        return [
            'email' => 'User Email',
            'password' => 'User Password',
            'name' => 'User Name',
            'role' => 'User Role',
        ];
    }

    // protected $stopOnFirstFailure = true;

    // protected $redirectRoute = 'home';

}
