<%-- 
    Document   : AddSubjectSuccess
    Created on : Dec 3, 2018, 10:27:01 AM
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
    
    <style>
        #t{
            font-family:Century Gothic;
        }
        .btn{
            font-family:Century Gothic;
            float: center;
            border-radius: 12px;
            padding: 10px;
            margin: 25px;
            font-size: 16px;
            width: 200px
        }
        .btn1{
            font-family:Century Gothic;
            float: right;
            border-radius: 12px;
            padding: 8px;
        }
        #f1{
            width: 80%;
            border-radius: 20px;
        }
        
    </style>
    
    
    <%
        Variables var = new Variables();
        
        var.course_code = request.getParameter("ccode");
        var.description = request.getParameter("cdesc");
        var.units = request.getParameter("cunits");
        
        try{
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            var.conn = DriverManager.getConnection(var.link, var.user, var.pass);
            
            Statement ps = var.conn.createStatement();
            
            ps.executeUpdate("INSERT INTO subjects (course_code, description, units)"
                    + "VALUES ('"+var.course_code+"', '"+var.description+"', '"+var.units+"')");
            
            
            
        }catch(Exception ex){
            
        }
    
    
    %>
    
        <body id="t">
        <center>
            <fieldset id="f1">
                <legend><h1>MARKS Grading System</h1></legend>
                <a href="Logout.jsp"><input type="button" class="btn1" value="Logout"></a>
                <h2>Subject Successfully Created.</h2>
                    <table>
                        <tr>
                            <td><a href="Main.jsp"><input class="btn" type="button" value="Go Back to Main Page"></a></td>
                            <td><a href="AddSubject.jsp"><input class="btn" type="button" value="Add Another"></a></td>
                        </tr>
                    </table>
                
            </fieldset>  
        </center>
        
    </body>
</html>
