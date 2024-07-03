<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\MorphMany;
use Illuminate\Database\Eloquent\Relations\MorphOne;
use Illuminate\Database\Eloquent\Relations\MorphToMany;

class Post extends Model
{
    use HasFactory;

    protected $guarded = [];

    public function image(): MorphOne
    {
        return $this->morphOne(Image::class, 'imageable');
    }

    public function comment() : MorphMany
    {
        return $this->morphMany(Comment::class, 'commentable');
    }

    public function latest_comment() : MorphOne
    {
        return $this->morphOne(Comment::class, 'commentable')->latestOfMany();
    }

    public function oldest_comment() : MorphOne
    {
        return $this->morphOne(Comment::class, 'commentable')->oldestOfMany();
    }

    public function most_likes_comment() : MorphOne
    {
        return $this->morphOne(Comment::class, 'commentable')->ofMany('likes', 'max');
    }

    public function leastLikesComment() : MorphOne
    {
        return $this->morphOne(Comment::class, 'commentable')->ofMany('likes', 'min');
    }

    public function tags(): MorphToMany
    {
        return $this->morphToMany(Tag::class, 'taggable');
    }
}
