<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class GalleryController extends Controller
{
    public function index()
    {
        
        $galleries = \App\Models\Gallery::get();
        
        $pageMeta = [
        // 'title' => $about->title,
        // 'meta_description' => $about->meta_description,
        // 'image' => $about->images
        ];

        return view('screens.gallery', compact('galleries'));
    }
}
