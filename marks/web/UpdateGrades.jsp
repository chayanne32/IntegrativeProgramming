<%-- 
    Document   : UpdateGrades
    Created on : Dec 12, 2018, 11:09:46 AM
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
            padding: 8px;
        }
        .btn1{
            font-family:Century Gothic;
            float: right;
            border-radius: 12px;
            padding: 8px;
        }
        #i{
            padding: 10px;
            margin: 25px;
            font-size: 16px;
            font-family:Century Gothic;
        }
        #f1{
            width: 80%;
            border-radius: 20px;
        }
        #f2{
            width: 40%;
            border-radius: 20px;
        }
        
    </style>
    
    <%
        Variables var = new Variables();
        
        var.id_number = request.getParameter("student_id");
        var.class_id = request.getParameter("class_id");
        String grade = request.getParameter("grade");
        String subject_id = null;
        
        String qry1 = "SELECT subject_id FROM classes WHERE class_id = "+var.class_id;
        String qry2 = "UPDATE grades SET grade = '"+grade+"' WHERE student_id = "+var.id_number+" AND subject_id = "+subject_id;
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            var.conn = DriverManager.getConnection(var.link, var.user, var.pass);
            
            PreparedStatement stmt1 = var.conn.prepareStatement(qry1);
            PreparedStatement stmt2 = var.conn.prepareStatement(qry2);
            
            ResultSet rs1 = stmt1.executeQuery();
            while(rs1.next()){
                subject_id = rs1.getString("subject_id");
                
            }
            
            stmt2.executeUpdate();
            
            
        }catch(Exception ex){
            
        }
        
        
    %>
    
    <body id="t">
        <center>
            <fieldset id="f1">
                <legend><h1>MARKS Grading System</h1></legend>
                <a href="Logout.jsp"><input type="button" class="btn1" value="Logout"></a>
                <h2>Student Grade Successfully Updated.</h2> 
                <%
                    out.println(var.id_number);
                    out.println(var.class_id);
                    out.println(subject_id);
                %>
                    <table>
                        <tr>
                            <td><a href="Main.jsp"><input class="btn" type="button" value="Go Back to Main Page"></a></td>
                            <td><a href="ViewStudentScores.jsp?student_id=<%=var.id_number%>&class_id=<%=var.class_id%>"><input type="button" class="btn" value="Back to Student Scores"></a></td>
                        </tr>
                    </table>
                
            </fieldset>  
        </center>
        
    </body>
</html>
