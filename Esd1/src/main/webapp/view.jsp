<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.Blob"%>
<html>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@300&display=swap" rel="stylesheet">
<style>
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #ffffff;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: skyblue;
  color: black  ;
}

.topnav a.active {
  background-color: skyblue;
  color: black;
}
.text{
font-size:25px;
}

.card {
  box-shadow: white;
  transition: 0.3s;
  width: 35%;
  height:40%;
  border-radius: 3px;
  background-color: whitesmoke;
  position:absolute;
  top: 200px;
  left: 200px;
  
}

.card:hover {
  box-shadow: 0 8px 16px 0 whitesmoke;
}

img {
  border-radius: 5px 5px 0 0;
}

.container {
  padding: 2px 16px;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  color : white;
  font-size: 30px;
}
.bg {
  background-image: url("pic7.jpg");
  /* Full height */
  height: 100%; 
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.button {
  background-color: lightblue; 
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 2px 2px;
  cursor: pointer;
  -webkit-transition-duration: 0.4s; /* Safari */
  transition-duration: 0.4s;
  border-radius:10px;
  
}

.button2:hover {
  box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
}
</style>
<body>
<div class="bg">
<div class="topnav">
  <a  href="voteindex.jsp"><b>ADD ELECTION</a>
  <a class="active" href="view.jsp">VIEW CANDIDATES</a>
  <a href="votersview.jsp">VIEW VOTERS</a>
  <a href="chart.jsp">RESULT</a>
   <a href="main.html">LOGOUT!</a>
</div>
<br>
<br>
<table border="1" style='font-family: "Dosis", sans-serif; font-size:80%'>
<tr>
<td>Election Name</td>
<td>ID</td>
<td>Name</td>
<td>Department</td>
<td>Image</td>
<td>Delete</td>
</tr>
</div>

<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/election","root","Harshitha*0601");
    Statement st =con.createStatement(); 
    String sql ="select * from vote";
    ResultSet res = st.executeQuery(sql);
    while(res.next()){
    %>
    <tr>
    <td><%=res.getString("ename") %></td>
	<td><%=res.getString("id") %></td>
	<td><%=res.getString("name") %></td>
	<td><%=res.getString("dept") %></td>
	<td><a href="voteview.jsp?id=<%=res.getString("id") %>"><button type="button"  class="delete">Image</button></a></td>
	<td><a href="delete.jsp?id=<%=res.getString("id") %>"><button type="button"  class="delete">Delete</button></a></td>
	</tr>

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
    