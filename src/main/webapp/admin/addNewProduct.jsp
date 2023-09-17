 <%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
 <%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%> 
<html>
<head>

<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
<style>
h3
{
color: cyan;
text-align: center;
}</style>
</head>
<body>
<div class="bg-image">
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Product Added Successfully!</h3>
<%}%>
<%
if("wrong".equals(msg))
{%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<% }%>
<%
int id=1;
try
{
	Connection con = ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select max(id) from product");
	while(rs.next())
	{
		id=rs.getInt(1);
		id=id+1;
	}	
}
catch(Exception e)
{
	System.out.println(e);	
}
%>
<br><br><br>
<form action="addNewProductAction.jsp" method = "post">
<h3 style="color: yellow;">Product ID:<%out.println(id); %> </h3>
<input type="hidden" name="id" value="<%out.println(id); %>">
<br><br><br>
<div class="left-div">
 <h3>Enter Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter Name" required>
<br><br>
</div>

<div class="right-div">
<h3>Enter Category</h3>
<input class="input-style" type="text" name="category" placeholder="Enter Category" required> 
<br><br>
</div>

<div class="left-div">
<h3>Enter Price</h3>
<input class="input-style" type="number" name="price" placeholder="Enter Price" required>
<br><br>
</div>

<div class="right-div">
<h3>Active</h3>
<select class="input-style" name="active">
<option value="Yes">Yes</option>
<option value="No">No</option>
</select>   

<br><br>
</div>
 <button class="button" >Save<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</div>
</body>
<br>
</body>
</html>