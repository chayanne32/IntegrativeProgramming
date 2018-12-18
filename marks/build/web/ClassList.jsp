<%-- 
    Document   : ClassList
    Created on : Dec 5, 2018, 7:37:44 PM
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
    
    <%
        
        Variables var = new Variables();
               
        var.class_id = request.getParameter("class_id");
                        
        Class.forName("com.mysql.cj.jdbc.Driver");
        var.conn = DriverManager.getConnection(var.link, var.user, var.pass);
                            
        String sdf = null;
        
        String qry2 = "SELECT * FROM subjects s JOIN classes c ON c.subject_id = s.subject_id WHERE class_id = "+var.class_id;
        
        Statement stmt2 = var.conn.createStatement();
        
        ResultSet rs2 = stmt2.executeQuery(qry2);
        while(rs2.next()){
            var.schedule = rs2.getString("c.schedule");
            var.subject = rs2.getString("s.course_code");
            sdf = var.subject + " " + var.schedule + " ";
        }
        
    
    %>    
        
    <body id="t">
        <center>
            <fieldset id="f1">
                <legend><h1>MARKS Grading System</h1></legend>
                <a href="Logout.jsp"><input type="button" class="btn1" value="Logout"></a>
                <fieldset id="f2">
                    <h2><%out.print(sdf);%>Class List</h2>
                    <table border="1">
                        <tr>
                            <th>ID Number</th>
                            <th>Last Name</th>
                            <th>First Name</th>
                            <th>Middle Name</th>
                            <th>Course</th>
                            <th>Year</th>
                            <th>Action</th>
                        </tr>
                        
                    <%
                    
                        try{                          
                            
                            String qry = "SELECT * FROM classes c JOIN enrolled e ON c.class_id = e.class_id JOIN students s ON e.student_id = s.id_number WHERE c.class_id = "+var.class_id+" ORDER BY s.lastname ASC";
                            
                            Statement stmt = var.conn.createStatement();
                            
                            ResultSet rs = stmt.executeQuery(qry);
                            
                            while(rs.next()){
                              
                    %>
                       
                    
                    
                    <tr>
                        <td><center><%=rs.getString("s.id_number") %></center></td>
                        <td><center><%=rs.getString("s.lastname") %></center></td>
                        <td><center><%=rs.getString("s.firstname") %></center></td>
                        <td><center><%=rs.getString("s.middlename") %></center></td>
                        <td><center><%=rs.getString("s.course") %></center></td>
                        <td><center><%=rs.getString("s.year") %></center></td>
                        <td>
                                <a href="InputScores.jsp?student_id=<%=rs.getString("s.id_number")%>&class_id=<%=rs.getString("c.class_id")%>"><input type="button" class="btn1" value="Input Scores"></a>
                                <a href="ViewStudentScores.jsp?student_id=<%=rs.getString("s.id_number")%>&class_id=<%=var.class_id%>"><input type="button" class="btn1" value="View Student Scores"></a>
                                
                        </td>
                    </tr>
                                
                    <%
                            }
                         }catch(SQLException ex){
                            out.println(ex);
                        }
                    %>
                        
                    </table>
                    
                  
                </fieldset>
                <a href="ViewClassRecord.jsp"><input type="button" class="btn1" value="Back to Class Records"></a>
            </fieldset>  
        </center>
        
    </body>
</html>
