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
        <!-- import packages and classes needed by the scripts -->
	<%@ page import="business.Customer,java.util.ArrayList,java.lang.Integer" %>
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

            <br><br>
            <div id="logging">
                <h1>Admin Login</h1>

                <fieldset>


                    <form action="login.html" method="post">
                        <table cellspacing="5" border="0">
                            <tr>
                                <h1>ERROR!!!</h1>
                                
                                
                            </tr>
                            <tr>
                                <%
                                     String name = request.getParameter("adminname");
                                    String message = name+" you are not the valid user...";
         out.println("<h1>"+message+"</h1>");
           
	%>
                            </tr>
                            
                             <tr>
                                <td></td>
                                <input type="submit" value="Return">
                            </tr>
                        </table>
                    </form>

                </fieldset> 
            </div>
            <br><br><br>
            <br>
        </main>
        <footer>
            <hr color="#0099FF" align=center >
            <p align=center>"Premium Restaurant" Athlone 2016 </p>
        </footer>
    </body>
</html>
