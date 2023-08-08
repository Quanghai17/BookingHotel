<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;


class RoomController extends Controller
{
    public function index()
    {
        
        $rooms = \App\Models\Product::where('status', 1)->paginate(12);
        $services = \App\Models\Service::orderBy('id', 'DESC')->get();
        // dd( $rooms );
        $pageMeta = [
        // 'title' => $about->title,
        // 'meta_description' => $about->meta_description,
        // 'image' => $about->images
        ];

        return view('screens.rooms.index', compact('rooms','services'));
    }

    public function collection($slug)
    {
        // dd(1);
        $collection = \App\Models\Collection::where('slug', $slug)->first();
        // dd($collection);
        if ($collection == null) {
          return redirect()->route('home');
        }
        $rooms = \App\Models\Product::where('category_id', $collection->id)->latest()->paginate(12);
        // dd($rooms);
        $page = [
            // 'title' => $category->name,
            // 'meta_description' => $category->name,
            // 'image' => setting('site.logo'),
        ];
        $title = $collection->title;
        return view('screens.rooms.index', compact( 'rooms', 'page', 'title'));
    }

    public function show($slug)
    {
        // dd(1);
        $room = \App\Models\Product::where('slug', $slug)->first();
        $title= $room->title ?? "";
        $recentRoom = \App\Models\Product::where('category_id', $room->category_id)->limit(3)->get();
        $page = [
            'title' => $title,
            'meta_description' => $room->meta_description,
            'image' => $room->image,
        ];
        return view('screens.rooms.show', compact('room', 'title', 'recentRoom', 'page'));
    }

    public function bookDetail($slug)
    {
        // dd($slug);
        $room = \App\Models\Product::where('slug', $slug)->first();
        $title= $room->title ?? "";
        $recentRoom = \App\Models\Product::where('category_id', $room->category_id)->limit(3)->get();
        $page = [
            'title' => $title,
            'meta_description' => $room->meta_description,
            'image' => $room->image,
        ];
        return view('screens.rooms.book', compact('room', 'title', 'recentRoom', 'page'));
    }
}
