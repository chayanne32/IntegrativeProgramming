<%-- 
    Document   : ViewClassRecord
    Created on : Nov 29, 2018, 2:56:36 PM
    Author     : Libanan
--%>

<%@page import="DesignPattern.Variables"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MARKS Class Record</title>
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
        //Object name = session.getAttribute("sessionName");
        //Object id = session.getAttribute("sessionID");
    %>    
    
    <body id="t">
        <center>
            <fieldset id="f1">
                <legend><h1>MARKS Grading System</h1></legend>
                <a href="Logout.jsp"><input type="button" class="btn1" value="Logout"></a>
                <h2>Class Records</h2>
                <table border="1">
                    <tr>
                        <th width="20%">Class Number</th>
                        <th width="20%">Subject</th>
                        <th width="20%">Schedule</th>
                        <th width="20%">Instructor</th>
                        <th width="20%">Action</th>
                    </tr>
                    <%
                        Variables var = new Variables();
                    
                        try{
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            var.conn = DriverManager.getConnection(var.link, var.user, var.pass);
                            
                            String qry = "SELECT * FROM classes c JOIN instructors i ON c.instructor_id = i.id_number JOIN subjects s ON c.subject_id = s.subject_id";
                            
                            Statement stmt = var.conn.createStatement();
                            
                            ResultSet rs = stmt.executeQuery(qry);
                            
                            while(rs.next()){
                               
                                var.fullname = rs.getString("i.firstname") + " " + rs.getString("i.middlename") + " " + rs.getString("i.lastname");
                                                                
                    %>
                       
                    
                    
                    <tr>
                        <td><center><%=rs.getString("c.class_id") %></center></td>
                        <td><center><%=rs.getString("s.course_code") %></center></td>
                        <td><center><%=rs.getString("c.schedule") %></center></td>
                        <td><center><%out.println(var.fullname); %></center></td>
                        <td>
                            <a href="ClassList.jsp?class_id=<%=rs.getString("c.class_id")%>"><center><input type="button" class="btn" value="View Class List"></center></a>
                        </td>
                    </tr>
                                
                    <%
                            }
                            
                        }catch(SQLException ex){
                            out.println(ex);
                        }

                    %>
                </table>
                <a href="Main.jsp"><input type="button" class="btn1" value="Back"></a>
            </fieldset>  
        </center>
        
    </body>
</html>
