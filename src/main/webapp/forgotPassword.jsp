<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div class = "bg-image">
<div id='container'>
  <div class='signup'>
     <form action="forgotPasswordAction.jsp" method ="post">
     <input type = "email" name ="email" placeholder = "Enter Email" required>
     <input type ="number" name="mobileNumber" placeholder = "Enter Mobile Number" required>
     <select name ="securityQuestion">
     <option value ="who is your favourite professor?"> who is your favourite professor?</option>
     <option value ="what is your favourite subject?'"> what is your favourite subject?</option>
     <option value = 'What is your favourite place in campus?'>What is your favourite place in campus?</option>
     </select>
     <input type="text" name="securityAnswer" placeholder="Enter Answer" required>
     <input type="password" name="newPassword" placeholder="Enter Your new password" required>
     <input type = "submit" value ="Save">
     </form>
     <h2><a href="login.jsp"> Login</a></h2>
  </div>
  </div>
  <div class='whyforgotPassword'>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{ 
%> 
<h1>Password Changed Successfully!</h1>
<%} %>
<%
if("invalid".equals(msg))
{%>

<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>
    <h2>ULTIMATE STORE</h2>
    <br>
    <br>
    <br>
    <h3>Your favorite college store - 'Your friendship grows here'</h3>
</div>
</div>
</body>
</html>