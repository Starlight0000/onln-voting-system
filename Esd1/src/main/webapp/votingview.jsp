<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>


<html>
<body>
<h1>Retrieve data from database in jsp</h1>
<table border="1">
<tr>
<td>id</td>
<td>first name</td>
<td>last name</td>
<td>City name</td>
<td>Email</td>
<td>update</td>
</tr>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jspcurd","root","Harshitha*0601");
Statement st =con.createStatement();
String sql ="select * from users";
ResultSet res = st.executeQuery(sql);
while(res.next()){
%>
<tr>
<td><%=res.getString("id") %></td>
<td><%=res.getString("first_name") %></td>
<td><%=res.getString("last_name") %></td>
<td><%=res.getString("city_name") %></td>
<td><%=res.getString("email") %></td>
<td><a href="update.jsp?id=<%=res.getString("id")%>">update</a> </td>
<td><a href="delete.jsp?id=<%=res.getString("id") %>">Delete</a></td>



<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>
    