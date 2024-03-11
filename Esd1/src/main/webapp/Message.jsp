<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  font-size: 30px;
}
</style>
</head>
<body>
  <div class="bg" style="background-image: url('pic7.jpg');">
<div class="topnav">
  <a href="voteindex.jsp"><b>ADD ELECTION</a>
  <a href="view.jsp">VIEW CANDIDATES</a>
  <a href="#VE">VIEW VOTERS</a>
  <a href="chart.jsp">RESULT</a>
   <a href="main.html">LOGOUT!</a>
</div>
<h3 style = "color: #ffffff;"><%=request.getAttribute("Message")%></h3>
</div>
<div style="padding-left:16px">
</div>
        
</body>
</html>