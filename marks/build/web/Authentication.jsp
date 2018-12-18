<%-- 
    Document   : Authentication
    Created on : Dec 1, 2018, 3:15:17 PM
    Author     : Libanan
--%>

<%@page import="DesignPattern.Variables"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    
    <body>
    <%
        Variables var = new Variables();
               
        var.id_number = request.getParameter("user");
        var.password = request.getParameter("pass");
        
        var.qry = "SELECT * FROM instructors WHERE id_number=? AND password=?";
        
        try{
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            var.conn = DriverManager.getConnection(var.link, var.user, var.pass);
            
            PreparedStatement ps = var.conn.prepareStatement(var.qry);
            
            ps.setString(1, var.id_number);
            ps.setString(2, var.password);
            
            ResultSet rs = ps.executeQuery();
                
            session.getAttribute("firstname");
                  
            if(rs.next()){
                var.name = rs.getString("firstname");
                var.id = rs.getString("id_number");
                
                session.setAttribute("sessionName", var.name);
                session.setAttribute("sessionID", var.id);
                
                response.sendRedirect("Main.jsp");
                
            }else{
                
                response.sendRedirect("Login.jsp?");
            }
            
            
        }catch(Exception ex){
            
        }
        
    %>
    </body>
    
</html>
