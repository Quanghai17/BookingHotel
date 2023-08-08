<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ServiceController extends Controller
{
    public function index()
    {
        
        $posts_01 = \App\Models\Post::where('status', 'PUBLISHED')->where('category_id', 1)->limit(4)->get();
        $posts_02 = \App\Models\Post::where('status', 'PUBLISHED')->where('category_id', 2)->limit(4)->get();
        // dd( $posts );
        $pageMeta = [
        // 'title' => $about->title,
        // 'meta_description' => $about->meta_description,
        // 'image' => $about->images
        ];

        return view('screens.service.index', compact('posts_01', 'posts_02'));
    }

    public function show($slug)
    {

        $post = \App\Models\Post::where('slug', $slug)->first();
        $title= $post->title ?? "";
        $posts = \App\Models\Post::where('status', 'PUBLISHED')->limit(6)->get();
        // dd( $recentRoom);
        
        $page = [
            'title' => $title,
            'meta_description' => $post->meta_description,
            'image' => $post->image,
        ];
        return view('screens.service.show', compact('post', 'title', 'posts', 'page'));
    }
}
