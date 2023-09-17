<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
 <div class ="bg-image">
<div id='container'> 
  <div class='signup'>
 
  <form action="signUpAction.jsp" method="post">
    <input type = 'text' name = 'name' placeholder = 'ENTER NAME' required>
    <input type = 'email' name = 'email' placeholder = 'ENTER EMAIL' required>
    <input type = 'number' name = 'mobileNumber' placeholder = 'ENTER PHONE' required>
    <select name = 'securityQuestion' required>
    <option value = 'who is your favourite professor?'>who is your favourite professor?</option>
    <option value = 'what is your favourite subject?'>what is your favourite subject?</option>
    <option value = 'What is your favourite place in campus?'>What is your favourite place in campus?</option>
    </select>
    <input type = 'text' name = 'securityAnswer' placeholder = 'ENTER ANSWER' required>
      <input type = 'password' name = 'password' placeholder = 'ENTER PASSWORD' required>
      <input type = 'submit' name = 'submit' value = 'SIGN UP'>
      </form>
      <h2><a href="login.jsp">LOGIN</a></h2>
  </div>
   
  <div class='whysign'>
 
<%
String msg = request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully registered </h1>
<%}%>
<%
if("invalid".equals(msg))
{%>
<h1>Something went wrong, Try Again</h1>
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