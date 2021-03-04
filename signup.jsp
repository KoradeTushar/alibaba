<%-- 
    Document   : signup
    Created on : 3 Mar, 2021, 3:15:57 PM
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
            String fnm = request.getParameter("fname");
            String lnm = request.getParameter("lname");
            String ad = request.getParameter("add");
            String mo = request.getParameter("mob");
            String DOB = request.getParameter("dob");
            String country = request.getParameter("country");
            String gender = request.getParameter("gender");
            String mail = request.getParameter("mail");
            String username = request.getParameter("user");
            String passward = request.getParameter("pass");
            
            
            
           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","alibaba","alibaba123");
           Statement stmt = con.createStatement();
           
           
           int i = stmt.executeUpdate("insert into users values('"+fnm+"','"+lnm+"','"+ad+"','"+mo+"','"+DOB+"','"+country+"','"+gender+"','"+mail+"','"+username+"','"+passward+"',id.nextval)");
           
           if(i>0)
            {
                response.sendRedirect("signup.html");
            }
            else
            {
                response.sendRedirect("signup.jsp");
            }
        %>
    </body>
</html>
