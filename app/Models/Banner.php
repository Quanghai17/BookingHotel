<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;
use TCG\Voyager\Traits\Translatable;

class Banner extends Model
{
  use Translatable;
  protected $translatable = ['title', 'description'];
  public function getImage($default = '') {
    if (!empty($this->image)) {
      return str_replace('\\', '/', Storage::disk(config('voyager.storage.disk'))->url($this->image));
    }
    return $default;
  }
}
