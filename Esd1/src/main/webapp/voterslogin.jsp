<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message</title>
<style>


body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
.bg {
  background-image: url("pic7.jpg");
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}

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
body, html {
  height: 100%;
  margin: 0;
  color : white;
  font-size: 20px;
}
</style>
</head>
<body>
  <div class="bg" style="background-image: url('pic7.jpg');">
<div class="topnav">
  <a href="voting.jsp"><b>VIEW CANDIDATES</b></a>
  <a href="#VE">VOTE</a>
   <a href="main.html">LOGOUT!</a>
</div>
<br>
<br>
<%
String uname = request.getParameter("uname");
String psw = request.getParameter("psw");
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/election", "root", "Harshitha*0601");
String sql = "SELECT * FROM voters WHERE uname = ? AND psw = ?";
PreparedStatement stmt = conn.prepareStatement(sql);
stmt.setString(1, uname);
stmt.setString(2, psw);
ResultSet rs = stmt.executeQuery();
if (rs.next()) {
    String name = rs.getString("uname");
    out.println("Welcome, " + name + "!<br>");
} else {
    out.println("Invalid voter ID or password.");
    response.sendRedirect("login.html");
}

rs.close();
stmt.close();
conn.close();
%>
</div>
<div style="padding-left:16px">
</div>
        
</body>
</html>
