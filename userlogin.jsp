<%-- 
    Document   : userlogin
    Created on : 3 Mar, 2021, 2:43:24 PM
    Author     : Tushar
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <%
          String user = request.getParameter("un");
          String pass = request.getParameter("pass"); 

           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","alibaba","alibaba123");
           Statement stmt = con.createStatement();
           
           ResultSet rs = stmt.executeQuery("select USER_NAME,PASSWORD from users where USER_NAME='"+user+"' and PASSWORD='"+pass+"' ");

        if(rs.next())
        {
             response.sendRedirect("shopping.html");    
        }
        else
        {
            out.print("<center>Invalid Passward <a href=userlogin.html> Try again </a></center>");
        }
        %>
        
  </body>       
        
    
</html>
