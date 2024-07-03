<?php

namespace App\Rules;

use Closure;
use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Contracts\Validation\Rule;


class Uppercase implements ValidationRule
{
    /**
     * Run the validation rule.
     *
     * @param  \Closure(string): \Illuminate\Translation\PotentiallyTranslatedString  $fail
     */
    public function validate(string $attribute, mixed $value, Closure $fail): void
    {
        if(strtoupper($value) !== $value){
            // $fail('The :attribute must be uppercase..');
            $fail('validation.uppercase')->translate();
        }
    }

     /**
     * Determine if the validation rule passes.
     *
     * @param  string  $attribute
     * @param  mixed  $value
     * @return bool
     */
    // public function passes($attribute, $value)
    // {
    //     return strtoupper($value) === $value;
    // }

    /**
     * Get the validation error message.
     *
     * @return string
     */
}
