@extends('app')

@section('content')

<section class="container-fluid">

	<p class="text-center text-white description">
		O quiz é composto por 5 perguntas com 5 alternativas de resposta cada.<br>
		Baseado em suas respostas, o quiz deverá definir qual série melhor representa você.
	</p>

	<div id="steps-container" class="text-center">
		@for($i=0; $i < $perguntas->count(); $i++)
			<span class="step"></span>
		@endfor
	</div>

	<form id="regForm" method="post" action="{{ route('resultado') }}">
		{{ csrf_field() }}

		@foreach($perguntas as $pergunta)

			{{-- tab --}}
			<div class="tab">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4><span class="label label-default qid">{{ $pergunta->id }}</span> {{ $pergunta->pergunta }}</h4>
						</div>
						<div class="modal-body">
							<div class="quiz" data-toggle="buttons">
								@php
								$alternativas = $pergunta->alternativas()->orderBy(\DB::raw('RAND()'))->get();
								@endphp

								@foreach($alternativas as $alt)
									<a class="element-animation{{ $loop->iteration }} btn btn-lg btn-success btn-block" href="javascript:void(0);" onclick="selectAlternative(this);">
										<i class="fas fa-angle-right"></i> {{ $alt->texto }}
										<input type="radio" name="alternativas[{{ $pergunta->id }}]" value="{{ $alt->id }}">
									</a>
								@endforeach
							</div>
						</div>
					</div>
				</div>
			</div>
			{{-- end:tab --}}

		@endforeach

	</form>

	{{-- btn voltar --}}
	<div class="container text-center">
		<button type="button" id="prevBtn" class="btn btn-success" onclick="nextPrev(-1)">
			<i class="far fa-arrow-alt-circle-left"></i>
		</button>
	</div>
	{{-- end:btn voltar --}}

</section>

@endsection

@push('scripts')

<script type="text/javascript" src="{{ asset('js/app.js') }}"></script>

@endpush