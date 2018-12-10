<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pergunta extends Model
{

    protected $table = 'perguntas';

    public $timestamps = false;

    protected $fillable = [
        'pergunta',
        'score'
    ];

    public function alternativas()
    {
        return $this->hasMany(Alternativa::class);
    }

}
