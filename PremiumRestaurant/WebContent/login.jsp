<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="javax.sql.*"%>
<%@ page language="java"%>

	<!-- import packages and classes needed by the scripts -->
	<%@ page import="business.Customer,java.util.ArrayList,java.lang.Integer" %>

	<%
	// get parameters from the request
        String adminname = request.getParameter("adminname");
        String userName = request.getParameter("userName");
	String password = request.getParameter("password");
	

	// use regular Java objects
	Customer aCustomer = new Customer(userName, password);

	if (aCustomer.getUserName().equals("admin") && aCustomer.getPassword().equals("password")) {

         
      request.getRequestDispatcher("/admin.jsp").include(request, response);

    }else
      {
         
    request.getRequestDispatcher("/error.jsp").include(request, response);

        }
	%>

	
