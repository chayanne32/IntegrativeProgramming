<%-- 
    Document   : EnrollStudSuccess
    Created on : Dec 5, 2018, 10:32:06 AM
    Author     : Libanan
--%>

<%@page import="java.sql.*"%>
<%@page import="DesignPattern.Variables"%>
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
        var.class_id = request.getParameter("class");
        
        try{
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            var.conn = DriverManager.getConnection(var.link, var.user, var.pass);
            
            
            Statement stmt = var.conn.createStatement();
            
            
            ResultSet rs = stmt.executeQuery("SELECT * FROM subjects s JOIN classes c ON s.subject_id = c.subject_id WHERE c.class_id = "+var.class_id);
            
            while(rs.next()){
                var.subject = rs.getString("s.subject_id");
            }
            
            stmt.executeUpdate("INSERT INTO grades VALUES ('"+var.id_number+"', '"+var.subject+"', 'NG')");
            
            stmt.executeUpdate("INSERT INTO enrolled VALUES ('"+var.class_id+"', '"+var.id_number+"')");
                        
            
            
        }catch(Exception ex){
            
            out.println(ex);
            
        }
    %>
    
    <body id="t">
        <center>
            <fieldset id="f1">
                <legend><h1>MARKS Grading System</h1></legend>
                <a href="Logout.jsp"><input type="button" class="btn1" value="Logout"></a>
                <h2>Student Enrolled Successfully Created.</h2>
                    <table>
                        <tr>
                            <td><a href="Main.jsp"><input class="btn" type="button" value="Go Back to Main Page"></a></td>
                            <td><a href="EnrollStud.jsp"><input class="btn" type="button" value="Add Another"></a></td>
                        </tr>
                    </table>
                
            </fieldset>  
        </center>
        
    </body>
</html>
