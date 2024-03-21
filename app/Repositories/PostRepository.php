<?php

namespace App\Repositories;

use App\Models\PostTranslation;

class PostRepository
{
    public function getAllPosts()
    {
        return PostTranslation::all();
    }
} 