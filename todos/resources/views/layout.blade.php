<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>To-do List Application</title>
    <!-- Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/styles.css">
    <!-- link rel="stylesheet" href="{{elixir('css/app.css')}}" -->
    @yield('header')
</head>
<body>
    <div class="container">
        @yield('content')
    </div>
	
    <script src="js/jquery-3.1.0.min.js" type="text/javascript"></script>
    <script src="js/todo.js" type="text/javascript"></script>
</body>
</html>