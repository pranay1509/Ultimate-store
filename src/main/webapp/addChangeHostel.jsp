<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
 <%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%> 
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Add or change Hostel</title>
</head>
<body>
<div class="bg-image">
<%
String msg= request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 class="alert">Address Successfully Updated !</h3>
<%} %>
<% 
if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
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
<form action="addChangeHostelAction.jsp" method= "post">
<br> <br> <br>
<h3>Enter Hostel</h3>
<input class = "input-style" type = "text" name = "hostel" value = "<%=rs.getString(7)%>" placeholder="Enter Hostel" required> 
<br> <br> <br>
<h3>Enter Room Number</h3>
<input class = "input-style"  type = "number" name = "roomNo" value = "<%=rs.getString(8)%>" placeholder="Enter Room No" required>
<br>
 <button class = "button" type="submit"> Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%
}
	 }
catch(Exception e)
 { 
	System.out.println(e);
 }
%>
</div>
</body>
<br>
</html>