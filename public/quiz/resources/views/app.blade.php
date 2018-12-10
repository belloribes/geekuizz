<!doctype html>
<html lang="pt-br">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="{{ asset('favicon.ico') }}" />
	<link href="https://fonts.googleapis.com/css?family=Oswald:300,400,500,700%7CRoboto:300,400,700" rel="stylesheet">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="{{ asset('css/app.css') }}">

	<title>Geekuizz</title>
</head>
<body class="@yield('body_class')">

	<header>
		<h1 class="text-center"><a href="{{ route('home') }}">GEEKUIZZ</a></h1>
	</header>

	<main>
		@yield('content')
	</main>

	<footer class="footer">
		<div class="container">
			<p class="text-white text-center">
				Geekuizz &copy; 2018 - Developed by <a href="https://www.linkedin.com/in/gabriel-oribes/" target="_blank" class="text-white">Gabriel Oribes</a>
			</p>
		</div>
	</footer>

	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

	@stack('scripts')

</body>
</html>