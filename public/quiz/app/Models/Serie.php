<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Serie extends Model
{

    protected $table = 'series';

    public $timestamps = false;

    protected $fillable = [
        'nome',
        'msg'
    ];

    protected $casts = [
        'id'   => 'string',
        'nome' => 'string',
        'msg'  => 'string'
    ];

}
