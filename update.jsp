<%-- 
    Document   : update
    Created on : 2 Mar, 2021, 7:10:43 PM
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
            String p = request.getParameter("pn");
            int pi1 = Integer.parseInt(p);
            
            String z = request.getParameter("cn");
            
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","alibaba","alibaba123");
            Statement stmt = con.createStatement();
            
            int i = stmt.executeUpdate("update product set CNAME='"+z+"' where PRODUCT_ID="+pi1+"");
            
            if(i>0)
            {
                response.sendRedirect("update.html");
            }
            else
            {
                response.sendRedirect("login.html");
            }
        %>
    </body>
</html>
