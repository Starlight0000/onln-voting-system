<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.json.*" %>

<!DOCTYPE html>  
<html>
<head>
  <meta charset="utf-8">
  <title>Votes Graph</title>
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
  <canvas id="votes-chart" width="800" height="400"></canvas>

  <%
  // retrieve the candidate vote data from the database
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/election", "root", "Harshitha*0601");
  String sql = "SELECT caname, COUNT(*) as vote_count FROM voting GROUP BY caname";
  PreparedStatement stmt = conn.prepareStatement(sql);
  ResultSet rs = stmt.executeQuery();
  // build a JSON object of the candidate vote data
  JSONArray data = new JSONArray();
  while (rs.next()) {
      String candidatename = rs.getString("caname");
      int voteCount = rs.getInt("vote_count");
      JSONObject candidateData = new JSONObject();
      candidateData.put("caname", candidatename);
      candidateData.put("voteCount", voteCount);  
      data.put(candidateData);
  }

  // generate the chart using Chart.js
  %>
  <script>
    var data = <%= data %>;
    var ctx = document.getElementById('votes-chart').getContext('2d');
    var chart = new Chart(ctx, {
      type: 'bar',
      data: {
    	  labels: data.map(function(d) { return d.caname; }),
          datasets: [{
          label: 'Number of Votes',
          data: data.map(function(d) { return d.voteCount; }),
          backgroundColor: 'rgba(255, 99, 132, 0.2)',
          borderColor: 'rgba(255, 99, 132, 1)',
          borderWidth: 1
        }]
      },
      options: {
        scales: {
          yAxes: [{
            ticks: {
              beginAtZero: true
            }
          }]
        }
      }
    });
  </script>

  <%
  // close the database connection and result set
  rs.close();
  stmt.close();
  conn.close();
  %>
</body>
</html>
