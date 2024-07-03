<?php

namespace App\Http\Controllers;

use App\Models\ImageUpload;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;


class ImageUploadController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $images = ImageUpload::latest()->get();
        return view('image_upload', compact('images'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //


        // $file = $request->file('image');

        // $name = date('l').'_'.time().'_'.$file->getClientOriginalName();
        // $extension = $file->getClientOriginalExtension();


        $path = $request->file('image')->store('images', 'public');

        ImageUpload::create([
            'file_path' => $path,
        ]);

        return redirect()->route('upload.index')->with('status', 'user image successfully updated');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //

    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
        $image = ImageUpload::find($id);

        return view('image_update', compact('image'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
        $image = ImageUpload::find($id);

        if($request->hasFile('image')){
            $path = public_path("storage/") . $image->file_path;

            if(file_exists($path)){
                @unlink($path);
            }

            $iamge_path = $request->image->store('image','public');
            $image->file_path = $iamge_path;
            $image->save();

            return redirect()->route('upload.index')->with('status', 'user image Deleted.');

        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {

        // Storage::delete($id);
        $image = ImageUpload::find($id);

        $image->delete();

        $path = public_path("storage/") . $image->file_path;

        if(file_exists($path)){
            @unlink($path);
        }

        return redirect()->route('upload.index')->with('status', 'user image Deleted.');
    }

    public function download(string $id)
    {

        $image = ImageUpload::find($id);
        if (!$image) {
            return redirect()->route('upload.index')->with('status', 'Image not found.');
        }
        $filePath = $image->file_path; // Adjust this according to your actual column name
        if (Storage::disk('public')->exists($filePath)) {
            return Storage::disk('public')->download($filePath);
        } else {
            return redirect()->route('upload.index')->with('status', 'File not found in storage.');
        }
    }
}
