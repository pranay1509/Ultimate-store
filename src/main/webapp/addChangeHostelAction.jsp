<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email = session.getAttribute("email").toString();
String hostel = request.getParameter("hostel");
String roomNo = request.getParameter("roomNo");

try
{
	Connection con= ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("update users set hostel=?, roomNo=?");
	ps.setString(1,hostel);
	ps.setString(2,roomNo);
	ps.executeUpdate();
	response.sendRedirect("addChangeHostel.jsp?msg=valid");
}

catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("addChangeAddress.jsp?msg=invalid");
}
%>
