<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {
        $about = \App\Models\Page::where('slug', 've-chung-toi')->where('status', 'ACTIVE')->first();
        
        return view('screens.about', compact('about'));
    }
}
