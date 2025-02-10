<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Plans extends Model
{
    protected $table = "plans";

    protected $primaryKey = "id";

    public $timestamps = false;

}
