
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
 <div class ="bg-image">
<div id='container'>
  <div class='signup'>
     <form action="LoginAction.jsp" method="post">
     <input type = "email" name = "email" placeholder = "ENTER EMAIL" required>
     <input type = "password" name = "password" placeholder = "ENTER PASSWORD" required>
     <input type = "submit" value="LOGIN"> 
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  
<%
String msg = request.getParameter("msg");
if("notexist".equals(msg))
{
%>
<h1>Incorrect username or password </h1>
<%}%>
<%
if("invalid".equals(msg))
{%>
<h1>Something Went Wrong! Try Again !</h1>
<% }%>

    <h2>ULTIMATE STORE</h2>
    <br>
    <br>
    <br>
    <h3>Your favorite college store - 'Your friendship grows here'</h3>
  </div>
</div>
</div>

</body>
</html>