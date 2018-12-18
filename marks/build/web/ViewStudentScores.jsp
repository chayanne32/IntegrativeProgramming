<%-- 
    Document   : ViewStudentScores
    Created on : Dec 9, 2018, 3:24:41 AM
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
            width: 70%;
            border-radius: 20px;
        }
        
    </style>
        
    <body id="t">
        <center>
            <fieldset id="f1">
                <legend><h1>MARKS Grading System</h1></legend>
                <a href="Logout.jsp"><input type="button" class="btn1" value="Logout"></a>
                <fieldset id="f2">
                    
                    <h2>Student Scores</h2>
                    <table border="1">
                        <tr>
                            <th>Type</th>
                            <th>Perfect Score</th>
                            <th>Actual Score</th>
                            <th>Date(YYYY-MM-DD)</th>
                        </tr>
                        
                        <%
                            Variables var = new Variables();
                            String sdf = null;
                            
                            var.class_id = request.getParameter("class_id");
                            var.id_number = request.getParameter("student_id");
        
                            try{
            
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                var.conn = DriverManager.getConnection(var.link, var.user, var.pass);
            
            
                                String qry = "SELECT * FROM students s JOIN enrolled e ON s.id_number = e.student_id JOIN classes c ON e.class_id = c.class_id JOIN class_records cr ON c.class_id = cr.class_id WHERE s.id_number = "+var.id_number+" AND c.class_id = "+var.class_id+" AND cr.student_id = "+var.id_number;
            
                                Statement stmt = var.conn.createStatement();
                                ResultSet rs = stmt.executeQuery(qry);
            
                                while(rs.next()){
                                   sdf = rs.getString("s.firstname") + " " + rs.getString("s.middlename") + " " + rs.getString("s.lastname");
                        %>
                        
                        <tr>
                            <td width="15%"><center><%=rs.getString("cr.type")%></center></td>
                            <td width="15%"><center><%=rs.getString("cr.perfect_score")%></center></td>
                            <td width="15%"><center><%=rs.getString("cr.actual_score")%></center></td>
                            <td width="15%"><center><%=rs.getString("cr.date")%></center></td>
                        </tr>
                        
                        <%}
                            
                                
                        %>
                        
                    </table>
                        <%
                            out.print("<br><b>Student name: "+sdf+"</b>");
                        %>
                        
                        <a href="ComputeGrades.jsp?student_id=<%=var.id_number%>&class_id=<%=var.class_id%>"><center><input type="button" class="btn" value="Compute Grades"></center></a>
                        
                        <%
                            }
                            catch(Exception ex){
            
                            }
                        %>
                </fieldset>
                <a href="ClassList.jsp?class_id=<%=var.class_id%>"><input type="button" class="btn1" value="Back to Class List"></a>
            </fieldset>  
        </center>
        
    </body>
    </body>
</html>
