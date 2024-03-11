<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String id =request.getParameter("rno");
String name=request.getParameter("uname");
String dept=request.getParameter("dept");
String psw=request.getParameter("psw");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/election","root","Harshitha*0601");
Statement st=con.createStatement();

int i=st.executeUpdate("insert into voters(rno,uname,dept,psw)values('"+id+"','"+name+"','"+dept+"','"+psw+"')");
out.println("Data is successfully inserted!");
response.sendRedirect("login.html");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>