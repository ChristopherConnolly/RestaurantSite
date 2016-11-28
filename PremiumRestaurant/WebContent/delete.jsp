<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="javax.sql.*"%>
<%@ page language="java"%>


<%
  	
String value = request.getParameter("pk");
        Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Premium", "root", "admin");
		
		Statement stmt = conn.createStatement();
		stmt.executeUpdate("SET SQL_SAFE_UPDATES = 0");
		  stmt.executeUpdate("DELETE FROM booking WHERE email='" + value + "'");
		  stmt.executeUpdate("SET SQL_SAFE_UPDATES = 1");
	        out.print(value);
	        request.getRequestDispatcher("admin.jsp").include(request, response);

	        conn.close();
		 
		 
		 
	         %>
