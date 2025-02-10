<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Stores extends Model
{
    protected $table = "stores";

    protected $primaryKey = "id";

    public $timestamps = false;

    protected $fillable = [
        'id',
        'title',
        'description',
        'created_by',
        'created_dt'
    ];
}
