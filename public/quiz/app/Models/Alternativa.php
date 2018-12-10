<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Alternativa extends Model
{

    protected $table = 'alternativas';

    public $timestamps = false;

    protected $fillable = [
        'pergunta_id',
        'serie_id',
        'texto'
    ];

    public function pergunta()
    {
        return $this->belongsTo(Pergunta::class);
    }

}
