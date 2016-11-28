<%@ page import="java.sql.*, javax.sql.*" %>
<html>
<head><title>Inserting a New Department</title></head>
<body>

<%
  String deptNo = request.getParameter("dept_no");
  String deptName = request.getParameter("dept_name");

  Connection conn; 
  Statement stmt;
  ResultSet rs;

  try {
        Class.forName("com.mysql.jdbc.Driver");        
        conn = DriverManager.getConnection("jdbc:mysql://localhost/employees","tp1","n8e3MBD8cfcBV45N");         
		stmt = conn.createStatement();
		
		String sqlString = "INSERT into departments VALUES(" + deptNo + "','" + deptName + "')";
		
		stmt.executeUpdate(sqlString);
%>

	<p>Database updated successfully</p>
	
<%
  }  catch (SQLException se) { %>
    <%= se.getMessage() %>
<% } %>
</body>
</html>


