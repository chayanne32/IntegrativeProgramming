<%-- 
    Document   : AddClass
    Created on : Nov 29, 2018, 2:37:20 PM
    Author     : Libanan
--%>

<%@page import="java.sql.*"%>
<%@page import="DesignPattern.Variables"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MARKS Add Class</title>
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
        .opt{
            font-family:Century Gothic;
            float: right;
            border-radius: 12px;
            padding: 8px;
            width: 100%;
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
    
    <body id="t">
        <center>
            <fieldset id="f1">
                <legend><h1>MARKS Add Class</h1></legend>
                <a href="Logout.jsp"><input type="button" class="btn1" value="Logout"></a>
                <fieldset id="f2">
                    <h2>Add Class</h2>
                    <form action="AddClassSuccess.jsp" method="GET">
                        <table>
                            <tr>
                                <td>Subject: </td>
                                <td>
                                    <select class="opt" name="subject">
                                    <%
                                            Variables var = new Variables();
        
                                            try{
                                                Class.forName("com.mysql.cj.jdbc.Driver");
                                                var.conn = DriverManager.getConnection(var.link, var.user, var.pass);
                            
                                                String qry = "SELECT * FROM subjects";
                            
                                                Statement stmt = var.conn.createStatement();
                            
                                                ResultSet rs = stmt.executeQuery(qry);
                            
                                                while(rs.next()){
       
                                        %>
                                        
                                        <option value="<%=rs.getString("subject_id")%>"><%=rs.getString("course_code")%></option>
                                        
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
                                <td>Schedule: </td>
                                <td><input type="text" name="sched" class="btn1"></td>
                            </tr>
                        
                            <tr>
                                <td>Instructor ID: </td>
                                <td><input type="text" name="class_ins" class="btn1"></td>
                            </tr>
                        
                            <tr>
                                <td><button type="reset" class="btn1" value="Clear">Clear</button></td>
                                <td><input class="btn1" type="submit" value="Add Class"></td>
                            </tr>
                        </table>
                    </form>
                </fieldset>
                
                <a href="Main.jsp"><input type="button" class="btn1" value="Back"></a>
                
            </fieldset>  
        </center>
        
    </body>
</html>
