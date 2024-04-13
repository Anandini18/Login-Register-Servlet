<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="login.css"/>
</head>
<body>

<div class="main">

<img src="images/login.svg"/>


<div class="text-content">

<div class="hclass">
<h1>Login</h1>
</div>

<div class="pclass">
<img src="images/image2.svg"/>
<form action="LoginServlet" method="post">
<label for="username">Username</label>
<input type="text" id="username" name="username" required></input><br>
<label for="password">Password</label>
<input type="password" id="password" name="password" required></input><br>
<button type="submit">Login</button>
</form>
</div>

<div class="btnclass">

<%--Display error message if login fails --%>		
<% String error = request.getParameter("error");
		if(error!=null && error.equals("1")){ %>
		<p style = "color:red;">Invalid username & password<% } %>		
		
<%--Display error message if Registration successfull  --%>		
<% String rs = request.getParameter("registration");
        if(rs!=null && rs.equals("success")){%>
        <p style = "color:green;">Your Registration is Successful, Please Login!</p>
<%} %>

<p><a href="index.html">Back to Home</a></p>
</div>



</div>

</div>

</body>
</html>