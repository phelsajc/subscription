<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Subscriptions extends Model
{
    protected $table = "subscription";

    protected $primaryKey = "id";

    public $timestamps = false;

}
