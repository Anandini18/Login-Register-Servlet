<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="register.css">
</head>
<body>

<div class="main">

<img src="images/register.svg"/>


<div class="text-content">

<div class="hclass">
<h1>Register</h1>
</div>

<div class="pclass">

<img class="pclass" src="images/image2.svg"/>

<form action="RegisterServlet" method="post">

<label for="email">User Email</label>
<input type="text" id="username" name="email" required></input><br>
<label for="username">Username</label>
<input type="text" id="username" name="username" required></input><br>
<label for="password">Password</label>
<input type="password" id="password" name="password" required></input><br>
<button type="submit">Register</button>

</form>

</div>

<div class="btnclass">
<p><a href="index.html">Back to Home</a></p>
</div>



</div>

</div>

</body>
</html>