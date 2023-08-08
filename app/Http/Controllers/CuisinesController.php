<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CuisinesController extends Controller
{
    public function index()
    {
        
        $foods = \App\Models\Cuisine::Where('status' , 'ACTIVE')->Where('category_id' , 'food')->paginate(12);
        // dd( $rooms );
        $pageMeta = [
        'title' => 'Ẩm thực',
        // 'meta_description' => $about->meta_description,
        // 'image' => $about->images
        ];

        return view('screens.cuisine', compact('foods'));
    }
}
