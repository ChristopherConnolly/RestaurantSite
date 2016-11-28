<%@ page import="java.sql.*, javax.sql.*" %>
<html>
<head><title>Testing JSP Access to MySQL Database</title></head>
<body>

<%
  Connection conn; 
  Statement stmt;
  ResultSet rs;

  try {
        Class.forName("com.mysql.jdbc.Driver");        
        conn = DriverManager.getConnection("jdbc:mysql://localhost/employees","tp1","n8e3MBD8cfcBV45N");         
		stmt = conn.createStatement();
		rs = stmt.executeQuery("SELECT * FROM departments");
%>    

	 <table>
		<tr><th>Number</th><th>Name</th></tr>
		
<% while(rs.next()) { %>	 	
    <tr>
    <td><%= rs.getString("dept_no") %></td><td><%= rs.getString("dept_name") %></td>
    </tr>
<%  }  %>

	 </table>

<%  }  catch (SQLException se) { %>
    <%= se.getMessage() %>
<% } %>

</body>
</html>


