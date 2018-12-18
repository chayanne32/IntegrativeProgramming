<%-- 
    Document   : Register
    Created on : Dec 1, 2018, 11:15:55 PM
    Author     : Libanan
--%>

<%@page import="DesignPattern.Variables"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MARKS</title>
    </head>
    <body>
    <%
        Variables var = new Variables();
        
        var.id_number = request.getParameter("ruser");
        var.fname = request.getParameter("rfname");
        var.mname = request.getParameter("rmname");
        var.lname = request.getParameter("rlname");
        var.degree = request.getParameter("rdeg");
        var.password = request.getParameter("rpass");
    
    
        try{
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            var.conn = DriverManager.getConnection(var.link, var.user, var.pass);
                
            Statement ps = var.conn.createStatement();
            
            ps.executeUpdate("INSERT INTO instructors (id_number, firstname, middlename, lastname, degree, password)"
            + " VALUES ('"+var.id_number+"', '"+var.fname+"', '"+var.mname+"', '"+var.lname+"', '"+var.degree+"', '"+var.password+"')");
            
            response.sendRedirect("Login.jsp?");
            
            out.println("Registration Successful");
            
        }catch(Exception ex){
            out.println("Fail");
        }
    %>
    </body>
</html>
