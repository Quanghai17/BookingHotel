<?php

namespace App\Http\Controllers;

use Illuminate\View\View;
use Illuminate\Http\Request;

class HomeController extends Controller
{
  public function index(Request $request): View
  {
    $homeBanners = \App\Models\Banner::where('type', 'home_banner')->get();
    
    $about = \App\Models\Page::Where('slug','ve-chung-toi')->first();

    $about_room = \App\Models\Page::Where('slug','rooms')->first();
 
    $rooms = \App\Models\Product::whereHas('collections', function ($q) {
      $q->where('slug', 'phong-don');
    })->with('collections', function ($q) {
      $q->first();
    })->limit(6)->get();

   
    $foods = \App\Models\Cuisine::Where('status' , 'ACTIVE')->Where('category_id' , 'food')->limit(8)->get();

    $services = \App\Models\Service::orderBy('id', 'DESC')->get();

    $posts = \App\Models\Post::where('status', 'PUBLISHED')->limit(3)->get();

    $utilities = \App\Models\Utility::Where('status' , 'ACTIVE')->get();

    $galleties = \App\Models\Gallery::get();

    $offers = \App\Models\Offer::get();

    return view('screens.home', [
      'homeBanners' => $homeBanners,
      'about' => $about,
      'about_room' =>  $about_room,
      'rooms' => $rooms,
      'foods' => $foods,
      'services' => $services,
      'posts' => $posts,
      'utilities'=> $utilities,
      'galleties' => $galleties,
      'offers' => $offers
    ]);
  }
}
