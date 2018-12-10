@extends('app')

@section('body_class', 'resultado')

@section('content')

<section class="text-center">

	<div class="jumbotron">
		<div class="container">
			<h2>{{ $serie->nome }}!</h2>
			<div class="thumbnail">
				<img src="{{ asset('img/' . $serie->img) }}" alt="{{ $serie->nome }}">
			</div>
			<p>{{ $serie->msg }}</p>
			<p>
				<a class="btn btn-primary" href="{{ route('perguntas') }}" role="button"><i class="fas fa-arrow-left"></i> Refazer</a>
				<a class="btn btn-primary" href="#" role="button"><i class="fab fa-facebook-square"></i> Compartilhar</a>
			</p>
		</div>
	</div>

</section>

@endsection