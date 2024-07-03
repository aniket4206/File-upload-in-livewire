<?php

namespace App\Http\Controllers;

use App\Http\Requests\StorePostRequest;
use Illuminate\Http\Request;
use Illuminate\Support\validation;
use Illuminate\Support\Facades\Validator;
use App\Rules\Uppercase;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Log;


class AuthorizationController extends Controller
{
    //
    public function index(){

        Log::debug('An informational message.');


        // $request->validate([
        //     'name' => ['required'],
        // ]);

        // $validatedData = $req->validate([
        //     'email' => 'required|email',  // Added 'email' validation rule for a more complete example
        // ]);

        return view('form');
    }

    public function showForm()
    {
        return view('form');
    }

    // protected function validator(array $data)
    // {
    //     return Validator::make($data, [
    //         'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
    //         'password' => ['required', 'string', 'min:8'],
    //         'name' => ['required', 'string', 'min:8'],
    //         'role' => ['required', 'string', 'min:8']
    //     ]);
    // }



    public function handleForm(StorePostRequest $request)
    {

        return $request->all();
        // $validatedData = $request->validated();

        // return redirect('form');
        // $validator = Validator::make($request->all(), [
        //     'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
        //     'password' => ['required', 'string', 'min:8'],
        //     'name' => ['required', 'string', 'min:8'],
        //     'role' => ['required', 'string', 'min:8', new Uppercase],
        // ]);//->validate();

        // if ($validator->fails()) {
        //     return redirect('form')
        //                 ->withErrors($validator)
        //                 ->withInput();
        // }
        // $request->validate([
        //     'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
        //     'password' => ['required', 'string', 'min:8'],
        //     'name' => ['required', 'string', 'min:8'],
        //     'role' => ['required', 'string', 'min:8'],
        // ]);

        // Process the validated data (if needed)

        // $validated = $request->validated();
        // $validated = $request->safe()->only(['name', 'email']);
        // $validated = $request->safe()->except(['name', 'email']);
        // return redirect('form')->withErrors($validator);  // Adjust based on what you need to do after validation

        return redirect()->back()->with('success', 'Form submitted successfully');

    }

    protected function somethingElseIsInvalid(Request $request)
    {
        // Add your custom validation logic here
        // For example, check some condition and return true or false
        // Replace with your actual logic
        return false;
    }
}
