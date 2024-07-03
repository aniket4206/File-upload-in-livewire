<?php

namespace App\Http\Controllers;

use App\Models\Tag;
use Illuminate\Http\Request;

class TagController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    // public function show(string $id): View
    // {
    //     return view('user.profile', [
    //         'user' => Redis::get('user:profile:'.$id)
    //     ]);
    // }
    public function index()
    {
        //
        $tags = Tag::with(['posts', 'videos'])->get();

        // return $tags;
        foreach ($tags as $tag) {
            echo "<h2>$tag->tags</h2>";

            foreach ($tag->posts as $post) {
                echo "<h4>$post->title</h4>";
                echo "<p>$post->body</p>";
            }

            foreach ($tag->videos as $video) {
                echo "<h4>$video->title</h4>";
                echo "<p>$video->url</p>";
            }
            echo "<hr/>";
        }
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        // $post = Tag::find(3);

        $post = Tag::create([
            'tags' => 'Hollywod'
        ]);

        $post->tags()->attach(1);
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
