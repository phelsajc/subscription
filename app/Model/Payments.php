<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Payments extends Model
{
    protected $table = "payments";

    protected $primaryKey = "id";

    public $timestamps = false;

}
