<%@ page import="jakarta.servlet.http.HttpSession" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" href="styles.css">
</head>
<body>
<%

// Retrieve the session object
HttpSession session2 = request.getSession(false);

// Check if the session is not null & the username attribute is set
if(session2!=null && session2.getAttribute("username")!=null){
	// Get the username from the session
	String username = (String) session2.getAttribute("username");

%>


<div class="main">

<img src="images/welcome.svg"/>

<div class="text-content">

   <div class="hclass">
   <h1>Welcome,<%= username %>!</h1>
   <h2>Code Together, Create Together.</h2>
   </div>
   
   <div class="pclass">
   
   <img src="images/image2.svg"/>
   <p style="color:#00bfa6;">From Lines of Code to Works of Art: <br> Let's Build Something Incredible.</p><br>
   <p><br></p>
   <p>We encourage you to share your coding ideas<br> & collaborate with fellow enthusiasts. </p>
   </div>
   
   <div class="btnclass">
     <button formmethod="get" onclick="window.location.href = 'LogoutServlet';">Logout</button>
   </div>
 </div>
 
</div>

<%
}else{
	// Redirect to the login page if the session is not valid
	response.sendRedirect("login.jsp");
}
%>

</body>
</html>