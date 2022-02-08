<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login page</title>
</head>
<body>
<div>

<h2>${message}</h2>

	<form action="index">
		<label>Login :</label>
		<input type="text" name="login" placeholder="login">
		<label>Password :</label>
		<input type="text" name="password" placeholder="password">
	</form>

</div>
</body>
</html>