 <%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%
String id=request.getParameter("id");
String email=request.getParameter("email");
String status="delivered";
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update cart set status='"+status+"' where status='processing' and product_id='"+id+"' and email='"+email+"' and hostel is not NULL");
	response.sendRedirect("ordersReceived.jsp?msg=delivered");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("ordersReceived.jsp?msg=wrong");
}
%>