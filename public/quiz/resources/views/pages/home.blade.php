@extends('app')

@section('body_class', 'home')

@section('content')

<section class="text-center">
	<div class="bg-container"></div>
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<p class="text-white" style="font-size: 2.2rem;">Em um dia, que série melhor representa você?</p>
				<a href="{{ route('perguntas') }}" class="btn btn-success btn-lg text-uppercase">START QUIZ</a>
			</div>
		</div>
	</div>
</section>

@endsection