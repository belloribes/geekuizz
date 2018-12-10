<?php

namespace App\Http\Controllers;

use App\Repositories\AppRepository;
use Illuminate\Http\Request;

class AppController extends Controller
{
	private $appRepo;

	public function __construct(AppRepository $AppRepository)
	{
		$this->appRepo = $AppRepository;
	}

	/**
	* Página inicial
	*
	* @return Response
	*/
	public function index()
	{
		return view('pages.home');
	}

	/**
	* Página com o formulário do quiz
	*
	* @return Response
	*/
	public function perguntas()
	{
		return view('pages.perguntas', ['perguntas' => $this->appRepo->getPerguntas()]);
	}

	/**
	* Página de resposta do quiz
	*
	* @param Request $request Request
	*
	* @return Response
	*/
	public function resultado(Request $request)
	{
		return view('pages.resultado', ['serie' => $this->appRepo->getResultado($request->alternativas)]);
	}

}