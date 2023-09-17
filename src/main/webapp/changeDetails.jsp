 <%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
 <%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%> 

<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<title>Change Details</title>
<style>
h1
{
	color: white;
	text-align: center;
}
</style>
</head>
<body>
<div class ="bg-image">
<%
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select *from users where email='"+email+"'");
	while(rs.next())
	{
		
	
	%>
	
<br><br><br>
<h1 align="center">Name: <%=rs.getString(1)%></h1>
<br><br><br>
<h1 align="center">Email: <%=rs.getString(2)%></h1>
<br><br><br>
 <h1 align="center">Mobile Number: <%=rs.getString(3)%></h1>
<br><br><br>
<h1 align="center">Hostel: <%=rs.getString(7)%></h1>
<br><br><br>
<h1 align="center">Room Number : <%=rs.getString(8)%></h1>

     
    
      <br>
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
</html>