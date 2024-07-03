<?php

namespace App\Http\Controllers;

use App\Models\Video;
use Illuminate\Http\Request;

class VideoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        // $video = Video::find(1);

        // $video = $video->comment;

        $video = Video::with('leastLikesComment')->find(2);

        return $video;
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        // $video = Video::create([
        //     'title' => 'Video THree',
        //     'url' => '/video/demo3.mp4'
        // ]);

        $video = Video::find(1);

        $video->tags()->attach('3');
        // $video->comment()->create([
        //     'body' => 'Hiiii'
        // ]);

        // $video->tags()->create([
        //     'body' => 'Hiiii'
        // ]);

    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
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
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
