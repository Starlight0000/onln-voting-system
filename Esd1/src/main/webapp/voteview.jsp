<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%       Blob image = null;
		Connection con = null;
		byte[] imgData = null ;
		PreparedStatement stmt = null;
		ResultSet rs = null;
	
		try {
			Class.forName("com.mysql.jdbc.Driver");
		    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/election","root","Harshitha*0601");
			String id = request.getParameter("id");
			String sql = "select img from vote where  id = ?";
	        stmt = con.prepareStatement(sql);
	        stmt.setString(1, id);
			rs = stmt.executeQuery();
			if (rs.next()) {
				image = rs.getBlob(1);
				imgData = image.getBytes(1,(int)image.length());
			} else {
				out.println("image not found for given id>");
				return;
			}

			// display the image
         response.setContentType("image/gif");
         OutputStream o = response.getOutputStream();
         o.write(imgData);
         o.flush();
         o.close();
		} catch (Exception e) {
			out.println("Unable To Display image");
			out.println("Image Display Error=" + e.getMessage());
			return;
		} finally {
			try {
				rs.close();
				stmt.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	%>