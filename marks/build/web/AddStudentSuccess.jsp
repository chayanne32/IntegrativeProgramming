<%-- 
    Document   : AddStudentSuccess
    Created on : Dec 2, 2018, 3:30:50 PM
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
        
        var.id_number = request.getParameter("sid");
        var.fname = request.getParameter("sfname");
        var.mname = request.getParameter("smname");
        var.lname = request.getParameter("slname");
        var.course = request.getParameter("scourse");
        var.year = request.getParameter("syear");
        
        
        try{
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            var.conn = DriverManager.getConnection(var.link, var.user, var.pass);
            
            Statement ps = var.conn.createStatement();
            
            ps.executeUpdate("INSERT INTO students (id_number, firstname, middlename, lastname, course, year)"
            + " VALUES ('"+var.id_number+"', '"+var.fname+"', '"+var.mname+"', '"+var.lname+"', '"+var.course+"', '"+var.year+"')");
            
                        
        }catch(Exception ex){
            
        }
    
    %>
    
    <body id="t">
        <center>
            <fieldset id="f1">
                <legend><h1>MARKS Grading System</h1></legend>
                <a href="Logout.jsp"><input type="button" class="btn1" value="Logout"></a>
                <h2>Student Successfully Created.</h2>
                    <table>
                        <tr>
                            <td><a href="Main.jsp"><input class="btn" type="button" value="Go Back to Main Page"></a></td>
                            <td><a href="AddStudent.jsp"><input class="btn" type="button" value="Add Another"></a></td>
                        </tr>
                    </table>
                
            </fieldset>  
        </center>
        
    </body>
</html>
