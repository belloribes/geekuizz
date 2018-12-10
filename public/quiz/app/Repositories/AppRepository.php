<?php

namespace App\Repositories;

use App\Models\Alternativa;
use App\Models\Pergunta;
use App\Models\Serie;

class AppRepository
{

	/**
	 * Retorna todas as perguntas
	 * 
	 * @return Object Pergunta
	 */
	public function getPerguntas()
	{
		return Pergunta::all();
	}

	/**
	* Retorna a Série definida pela soma do score das alterenativas selecinadas
	*
	* @param Array $alternativas
	*
	* @return Object Serie
	*/
	public function getResultado($alternativas)
	{
		// Inicia o score (value) de cada série (key) com zero por padrão
		$arrSeries = [
			'A' => 0,
			'B' => 0,
			'C' => 0,
			'D' => 0,
			'E' => 0
		];

		// Soma o score de cada pergunta com o valor da key (ID da série) referente a alternativa selecionada.
		foreach($alternativas as $alt)
		{
			$alternativa = Alternativa::find($alt);
			$arrSeries[$alternativa->serie_id] += $alternativa->pergunta->score;
		}

		// Ordena o array pelo maior valor (score da série).
		arsort($arrSeries);

		// Retorna o objeto da série que foi definida como primeiro item do array.
		return Serie::find(key($arrSeries));
	}

}