<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<html>
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
  <a href="voteindex.jsp">ADD ELECTION</a>
  <a href="view.jsp">VIEW CANDIDATES</a>
  <a href="#VE">VIEW VOTERS</a>
  <a href="#RES">RESULT</a>
   <a href="main.html">LOGOUT!</a>
</div>
<br>
<%
String id=request.getParameter("id");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/election","root","Harshitha*0601");
Statement st=con.createStatement();
int i=st.executeUpdate("DELETE FROM vote WHERE id="+id);
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</div>
</body>
</html>