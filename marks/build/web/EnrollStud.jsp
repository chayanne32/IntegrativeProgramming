<%-- 
    Document   : AddStudtoClass
    Created on : Nov 30, 2018, 9:26:16 AM
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
            float: right;
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
            width: 60%;
            border-radius: 20px;
        }
        
    </style>
    
    <body id="t">
        <center>
            <fieldset id="f1">
                <legend><h1>MARKS Grading System</h1></legend>
                <a href="Logout.jsp"><input type="button" class="btn1" value="Logout"></a>
                <fieldset id="f2">
                    <form action="EnrollStudSuccess.jsp" method="GET">
                        <h2>Enroll Student to Class</h2>
                        <table>
                            <tr>
                                <td>Student ID:</td>
                                <td><input type="text" name="sid" class="fld" style="float: left;"></td>
                            </tr>
                            <tr>
                                <td>Class:</td>
                                <td>
                                    <select class="opt" name="class">
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
                                <td><button type="reset" class="btn" value="Clear">Clear</button></td>
                                <td><input class="btn" type="submit" value="Add Student to Class" ></td>
                            </tr>
                        </table>
                        
                    </form>
                </fieldset>
                <a href="Main.jsp"><input type="button" class="btn1" value="Back"></a>
            </fieldset>  
        </center>
        
    </body>
    
</html>
