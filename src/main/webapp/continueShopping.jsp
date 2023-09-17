 <%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email= session.getAttribute("email").toString();
String status = "processing";
try
{
Connection con = ConnectionProvider.getCon();
PreparedStatement ps = con.prepareStatement("update cart set cart.status=? where email=? and cart.status like '%bill%'");
ps.setString(1,status);
ps.setString(2,email);
ps.executeUpdate();
response.sendRedirect("home.jsp");
}
catch(Exception e)
{
System.out.println(e);
}
%>