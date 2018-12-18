<%-- 
    Document   : AssignPercent
    Created on : Nov 27, 2018, 4:31:15 PM
    Author     : Libanan
--%>

<%@page import="DesignPattern.Variables"%>
<%@page import="java.sql.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
   
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MARKS Add Grading System</title>
    </head>
    
    <style>
        #t{
            font-family:Century Gothic;
        }
        .btn{
            font-family:Century Gothic;
            float: right;
            border-radius: 12px;
            padding: 8px;
        }
        .btn1{
            font-family:Century Gothic;
            float: right;
            border-radius: 12px;
            padding: 8px;
        }
        .fld{
            font-family:Century Gothic;
            border-radius: 12px;
            padding: 8px;
            width: 94%;
        }
        .opt{
            font-family:Century Gothic;
            float: right;
            border-radius: 12px;
            padding: 8px;
            width: 100%;
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
    
       
    
    <body id="t">
        <center>
            <fieldset id="f1">
                <legend><h1>MARKS Grading System</h1></legend>
                <a href="Logout.jsp"><input type="button" class="btn1" value="Logout"></a>
                <fieldset id="f2">
                    <form action="GradingSystemSuccess.jsp" method="GET">
                        <h2>Add Grading System Component</h2>
                        <table>
                            <tr>
                                <td>Class:</td>
                                <td>
                                    <select class="opt" name="class_id">
                                        <option>Subject-----Schedule-----Instructor</option>
                                        <%
                                            Variables var = new Variables();
        
                                            try{
                                                Class.forName("com.mysql.cj.jdbc.Driver");
                                                var.conn = DriverManager.getConnection(var.link, var.user, var.pass);
                            
                                                String qry = "SELECT * FROM classes c JOIN instructors i ON c.instructor_id = i.id_number JOIN subjects s ON c.subject_id = s.subject_id";
                            
                                                Statement stmt = var.conn.createStatement();
                            
                                                ResultSet rs = stmt.executeQuery(qry);
                            
                                                while(rs.next()){
        
                                                    String sched = rs.getString("s.course_code") + "-----" + rs.getString("c.schedule") + "-----" + rs.getString("i.firstname") + " " + rs.getString("i.middlename") + " " + rs.getString("i.lastname");
        
                                        %>
                                        
                                        <option value=<%=rs.getString("c.class_id")%>><%out.println(sched);%></option>
                                        
                                        <%
                                            }
                            
                                            }catch(SQLException ex){
                                                out.println(ex);
                                            }

                                        %>
                                        
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Type:</td>
                                <td>
                                    <select class="opt" name="type">
                                        <option value="Seatwork">Seatwork</option>
                                        <option value="Quiz">Quiz</option>
                                        <option value="Major Exam">Major Exam</option>
                                        <option value="Project">Project</option>
                                        <option value="Attendance">Attendance</option>
                                        <option value="Others">Others</option>
                                        
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Percent:</td>
                                <td><input type="text" name="percent" class="fld"></td>
                            </tr>
                            <tr>
                                <td><button type="reset" class="btn" value="Clear">Clear</button></td>
                                <td><input class="btn" type="submit" value="Add Component" ></td>
                            </tr>
                        </table>
                        
                    </form>
                </fieldset>
                <a href="Main.jsp"><input type="button" class="btn1" value="Back"></a>
            </fieldset>  
        </center>
        
    </body>
</html>
