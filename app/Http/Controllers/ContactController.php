<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ContactController extends Controller
{
    public function index()
    {
        
        $pageMeta = [
            'title' => 'Liên hệ',
        ];
        return view(('screens.contact'), compact('pageMeta',));
    }

    public function store(Request $request)
    {
      $quick = $request->input('quick', false);
  
      if (!$quick) {
        $validated = $request->validate([
          'name' => 'required|max:120',
          'phone' => 'required|numeric|min:10'
        ]);
      }
  
      try {
        $alert = [
          "type" => "success",
          "title" => __("Thành công"),
          "body" => __("Cảm ơn bạn đã gửi liên hệ, chúng tôi sẽ sớm phản hồi cho bạn!")
        ];
  
        $feedback = new \App\Models\Contact();
        $feedback->name = $request->name;
        $feedback->phone = $request->phone;
        $feedback->email = $request->email;
        $feedback->subject = $request->subject;
        $feedback->comment = $request->comment;
          // dd($feedback);
        $feedback->save();
      } catch (\Exception $e) {
        $alert = [
          "type" => "error",
          "title" => __("Không thành công"),
          "body" => __("Có lỗi đã xảy ra, vui lòng thử lại!")
        ];
      }
  
      return redirect()->back()->with('alert', $alert);
    }
}
