<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String id =request.getParameter("uname");
String caname=request.getParameter("caname");
try
{
	Class.forName("com.mysql.jdbc.Driver");
	  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/election","root","Harshitha*0601");
Statement st=con.createStatement();

int i=st.executeUpdate("insert into voting(uname,caname)values('"+id+"','"+caname+"')");
out.println("Data is successfully inserted!");
response.sendRedirect("thanks.html");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>