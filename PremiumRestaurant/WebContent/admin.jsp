<%@ page import="java.sql.*"%>
<%@ page import="java.lang.*"%>
<%@ page import="javax.sql.*"%>
<%@ page language="java"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <title>Premium Restaurant</title>
        <link rel="stylesheet" href="restaurantstyle.css">
        <link href="https://fonts.googleapis.com/css?family=Dancing+Script|Great+Vibes" rel="stylesheet">
    </head>	
    <body>
        
    	<%
  	// get parameters from the request
  	String adminname = request.getParameter("adminname");
		
        
        Class.forName("com.mysql.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Premium", "root", "admin");
		
		Statement stmt = conn.createStatement();
		
		out.println("Registered");
		ResultSet rs= stmt.executeQuery("select * from booking");
		
	    
	         %>
        
        <header>
            <h1><a id="header_title" href="index.html">Welcome to Premium Restaurant</a></h1>
            <a id="admin_login" href="login.html">Admin login</a>
            
            <img id="logo_img" src="img/restaurant_logo.png" alt="PremiumRestaurant logo">
            <nav>
                <div id="nav_div1">
                    <a href="index.html">Home</a>
                    <a href="menu.html">Menu</a>
                    <a href="booking.html">Book the table</a>
                    <a href="contacts.html">Contact us</a>		
                </div>					
            </nav>				
        </header>
        <main>
            <div id="contactleft">
                   <p align="left" >
           <% String welcomeMessage = adminname+" welcome to admin page...";
         out.println("<h2>"+welcomeMessage+"</h2>");
           %>
             </p>
            </div>
            <div id="contactright">
                   
           <p align="right" ><button><a href="index.html">Log Out</a></button></p>
                      </div>
            
        <div id="adminleft">
                     <br>
            
           
            
            
            
            <fieldset>
                        <legend><strong>Booking</strong></legend>
                        
               <table>
  <tr>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Gender</th>
    <th>Tables</th>
    <th>Email</th>
    <th>Mobile</th>
    <th>Contact with Email</th>
    <th>Contact with phone</th>
    <th>Delete</th>
    
  </tr>
  <% while(rs.next()){ %>
  
  <tr>
    <td><%= rs.getString(1) %></td>
    <td><%= rs.getString(2) %></td>
    <td><%= rs.getString(3) %></td>
    <td><%= rs.getString(4) %></td>
    <td><%= rs.getString(5) %> </td>
    <td><%= rs.getString(6) %></td>
    <td><%= rs.getString(7) %></td>
    <td><%= rs.getString(8) %></td>
    <td><a href="delete.jsp" pk=<%=rs.getString(5) %>> Delete </a></td>
    
      </tr>
   <%  }    %>
</table>
                        
                        
                    </fieldset>
            
            
            <br><br>
            
        </div>
        <div id="adminright">
            <br><br>
            
           <fieldset>
                        <legend><strong>Contact</strong></legend>
                        
                    </fieldset>
            
            
            <br><br>
        </div>
             
            
        </main>
        <footer>
            <hr color="#0099FF" align=center >
            <p align=center>"Premium Restaurant" Athlone 2016 </p>
        </footer>
        
       
    </body>
</html>
