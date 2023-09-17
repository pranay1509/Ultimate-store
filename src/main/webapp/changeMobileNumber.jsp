<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
 <%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%> 
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Mobile Number</title>
</head>
<body> 
<div class="bg-image">
<%
String msg =request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%} %>
<%

if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<%
 try
 { 
	 Connection con = ConnectionProvider.getCon();
	 Statement st = con.createStatement();
	 ResultSet rs = st.executeQuery("select *from users where email = '"+email+"'");
	 while(rs.next())
	 {
%>
<form action="changeMobileNumberAction.jsp" method="post">
<br><br>
<h3>Enter Your New Mobile Number</h3>
<br>
<input class = "input-style" type="number" name="mobileNumber" value="<%=rs.getInt(3)%>" placeholder="Enter new Mobile Number" required>
 <button class="button" type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%
}
	 }
catch(Exception e)
 { 
	System.out.println(e);
 }
%>
</body>
</div>
<br>
</html>