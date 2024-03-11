<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
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
font-size:30px;
}

.card {
  box-shadow: white;
  transition: 0.3s;
  width: 55%;
  height:54%;
  border-radius: 3px;
  background-color: whitesmoke;
  position:absolute;
  top: 200px;
  left: 100px;
  
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
  color: Purple;
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
</head>
<body>
  <div class="bg">
<div class="topnav">
  <a class="active" href="voteindex.jsp"><b>ADD ELECTION</a>
  <a href="view.jsp">VIEW CANDIDATES</a>
  <a href="votersview.jsp">VIEW VOTERS</a>
  <a href="chart.jsp">RESULT</a>
   <a href="main.html">LOGOUT!</a>
</div>
</div>
<div style="padding-left:16px">
  
</div>

<div class="card">
<div class="text">
<center>
<br>
<form method="post" action="uploadServlet" enctype="multipart/form-data">
            <table style='font-family: "Dosis", sans-serif; font-size:70%'>
                <tr>
                    <td><b>Election Name: </b></td>
                    <td><input class="w3-input" type="text" name="ename" size="50" required/></td>
                </tr>
                <tr>
                    <td><b>ID:</b> </td>
                    <td><input class="w3-input" type="text" name="id" size="50" required/></td>
                </tr>
                <tr>
                    <td><b>Name:</b></td>
                    <td><input class="w3-input" type="text" name="name" size="50" required/></td>
                </tr>
                <tr>
                    <td><b>Department:</b></td>
                    <td><select class = "w3-select" name="dept" id="dept">
                         <option value="Aids">AI DS</option>
                         <option value="cse">CSE</option>
                         <option value="ece">ECE</option>
                          </select><td>
                </tr>
                <tr>
                    <td><b>Image: </b></td>
                    <td><input class="w3-input" type="file" name="img" size="50" required/></td>
                </tr>
                <tr>
                <br>
                    <td colspan="2">
                 <br>  <center>  <button class="button button2"><b>Submit</b></button></center>
                    </td>
                </tr>
            </table>
            </br>
        </form>
        

</div>
</div>
</div>
</body>
</html>