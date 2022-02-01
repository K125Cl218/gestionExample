<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Connection page</title>
	<link href="css/style.css" rel="stylesheet" id="bootstrap-css">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script src="https://kit.fontawesome.com/3802fc747e.js" crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper fadeInDown">
		<div id="formContent">

			<!-- Icon -->
			<div class="fadeIn first">
				<img src="img/icon.png" alt="User Icon" width="30%"/>
			</div>

			<!-- Login Form -->
			<form action="login" method="post">
				<input type="text" id="login" class="fadeIn second" name="login"	placeholder="login"> 
				<input type="text" id="password" class="fadeIn third" name="password" placeholder="password"> 
				<input type="submit" class="fadeIn fourth" value="Log In">
			</form>

			<!-- Create Account -->
			<div id="formFooter">
				<a class="underlineHover" href="#">Create an account</a>
			</div>

		</div>
	</div>
</body>
</html>