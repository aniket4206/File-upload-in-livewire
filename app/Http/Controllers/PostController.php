<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\Tag;

use Illuminate\Http\Request;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */

    public function index()
    {
        // $post = Post::with('most_likes_comment')->find(1);

        // return response()->json($post);
        // $comment = $post->leastLikesComment;

        // return $post;
        $posts = Post::with('tags')->get();

        // foreach ($post->tags as $tag) {
        //     return $tag;
        // }
        // return $post;
        foreach($posts as $post){
            echo "<h2>$post->title</h2>";
            echo "<p>$post->body</p>";

            foreach ($post->tags as $tag) {
                echo "<h4>$tag->tags /</h4>";
            }

        }
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $post = Post::find(3);
        // $post = Post::create([
        //     'title' => 'Post 3',
        //     'body' => 'Show the form for creating a new resource.'
        // ]);

        $post->tags()->attach(['1','3']);


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
