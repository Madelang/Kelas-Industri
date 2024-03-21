<?php

namespace App\Services;

use App\Repositories\PostRepository;

// class PostService
// {
//     public static function listAllPost(){
//         $listPost =  PostRepository::getAllPosts();
//         foreach ($listPost as $row){
//             $row->replace_title = "Bolog berjudul ".$row->title;
//         }
//         return $listPost;
//     }
// }

class PostService
{
    protected $postRepository;

    public function __construct(PostRepository $postRepository)
    {
        $this->postRepository = $postRepository;
    }

    public function getAllPosts()
    {
        // $listPost =  PostRepository::getAllPosts();
        // foreach ($listPost as $row){
        //     $row->replace_title = "Bolog berjudul ".$row->title;
        // }
        return $this->postRepository->getAllPosts();
    }
}