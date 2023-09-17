<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<% 
String email = request.getParameter("email");
String password = request.getParameter("password");
if("admin@iiitdm.ac.in".equals(email) && "admin".equals(password))
{
	session.setAttribute("email", email);
	response.sendRedirect("admin/adminHome.jsp");
	
}
else
{
	int f = 0;
	try 
	{
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
			ResultSet rs = st.executeQuery("select *from users where email='"+email+"' and password='"+password+"'"); 
			while(rs.next())
			{
				f=1;
				session.setAttribute("email", email);
				response.sendRedirect("home.jsp");
			}
			if(f==0)
				response.sendRedirect("login.jsp?msg=notexist");
	}
	catch(Exception e)
	{
		System.out.println(e);
		response.sendRedirect("login.jsp?msg=invalid");
	}
}
%>