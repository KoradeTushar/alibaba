<%-- 
    Document   : add
    Created on : 2 Mar, 2021, 2:07:07 PM
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
            String pnm = request.getParameter("pn");
            String price = request.getParameter("pri");
            int p1 = Integer.parseInt(price);
            String qty1 = request.getParameter("qty");
            int q1 = Integer.parseInt(qty1);
            String ct = request.getParameter("ct");
            String sname = request.getParameter("snm");
            String saddress = request.getParameter("sadd"); 
            String mobile = request.getParameter("mob");
            int mob = Integer.parseInt(mobile);
            String prodesc = request.getParameter("pdesc");
            
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","alibaba","alibaba123");
            Statement stmt = con.createStatement();
            
            int i = stmt.executeUpdate("insert into product values('"+pnm+"',"+p1+","+q1+",'"+ct+"','"+sname+"','"+saddress+"',"+mobile+",'"+prodesc+"')");
       
            if(i>0)
            {
                response.sendRedirect("add.html");
            }
            else
            {
                response.sendRedirect("add.jsp");
            }

           %>
    </body>
</html>
