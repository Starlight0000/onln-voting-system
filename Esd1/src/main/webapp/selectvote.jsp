<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<html>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Dosis:wght@300&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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

.card {
  box-shadow: white;
  transition: 0.3s;
  width: 50%;
  height: 38%;
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
  padding: 8px 16px;
}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  font-size: 25px;
}
.bg {
  background-image: url("pic7.jpg");
  height: 100%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.button {
  background-color: lightblue; 
  border: none;
  color: purple;
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
  <a href="voting.jsp">VIEW CANDIDATES </a>
  <a  class="active" href="selectvote.jsp">VOTE</a>
   <a href="main.html">LOGOUT!</a>
</div>

<centre>
<div class="card">
<div class="container">
<form action="votedetails.jsp" method="post" style ="font-family: 'Dosis', sans-serif;">
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/election", "root", "Harshitha*0601");
String sql = "SELECT * FROM vote";
PreparedStatement stmt = conn.prepareStatement(sql);
ResultSet rs = stmt.executeQuery();
%>
<label><b>Username</b></label>
<input class="w3-input" type="text" name="uname" required>
<label><b>Select candidate</b></label>
<select class = "w3-select" name="caname">
<%
while (rs.next()) {
    String candidateName = rs.getString("name");
    out.println("<option value=\"" + candidateName + "\">" + candidateName + "</option>");
}
out.println("</select>");
rs.close();
stmt.close();
conn.close();
%>
</select>
<br>
<br>
<center><button class="button button2 type="submit">Vote</button></center>
</form>
</div>
</div>
</centre>
<br>
</body>
</html>

