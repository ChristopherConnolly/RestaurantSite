
<%@ page language="java"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="javax.sql.*"%>

	<!-- import packages and classes needed by the scripts -->
		<%
  	// get parameters from the request
		String n = request.getParameter("name");
		String l = request.getParameter("lastname");
        String g = request.getParameter("gender");
        String t = request.getParameter("tables");
        String e = request.getParameter("email");
        String mo = request.getParameter("mobile");
        String me1 = request.getParameter("method1");
        String me2 = request.getParameter("method2");
        
        Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Premium", "root", "admin");
		
		Statement stmt = conn.createStatement();
		String cmd = "INSERT into booking VALUES('" +n+ "','" +l+ "','" +g+ "','" +t+ "','" +e+ "','" +mo+ "','" +me1+ "','" +me2+ "')";	
		int i =stmt.executeUpdate(cmd);
		System.out.println(cmd);
		out.println("Registered");
		ResultSet rs= stmt.executeQuery("select * from booking");
		
		 request.getRequestDispatcher("booking.html").include(request, response);
	         %>
	
