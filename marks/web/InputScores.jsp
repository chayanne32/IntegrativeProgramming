<%-- 
    Document   : InputGrades
    Created on : Dec 8, 2018, 6:53:08 PM
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
        String index = null;
        var.id_number = request.getParameter("student_id");
        var.class_id = request.getParameter("class_id");
        
        String error = "Student score is higher than perfect score.";
        index = request.getParameter("index");
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            var.conn = DriverManager.getConnection(var.link, var.user, var.pass);
            
            
            
        }catch(Exception ex){
            out.print(ex);
        }

    %>
    
    <body id="t">
        <center>
            <fieldset id="f1">
                <legend><h1>MARKS Grading System</h1></legend>
                <%
                    if(index != null){
                        out.println(error);
                    }
                %>
                <a href="Logout.jsp"><input type="button" class="btn1" value="Logout"></a>
                <fieldset id="f2">
                    <h2>Input Score</h2>
                    <form action="InputScoresSuccess.jsp" method="GET">
                    <table>
                        <tr>
                            <td>Type: </td>
                            <td>
                                <select name="type" class="btn">
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
                            <td>Perfect Score: </td>
                            <td><input type="text" class="btn" name="perfectscore"></td>
                        </tr>
                        
                        <tr>
                            <td>Actual Score: </td>
                            <td><input type="text" class="btn" name="actualscore"></td>
                        </tr>
                        
                        <tr>
                            <td>Date: </td>
                            <td><input type="date" class="btn" name="date"></td>
                        </tr>
                        
                        <tr>
                            <td><input type="hidden" name="student_id" value="<%=var.id_number%>">
                                <input type="hidden" name="class_id" value="<%=var.class_id%>">
                            </td>
                            <td><input type="submit" value="Submit Score" class="btn1"></td>
                        </tr>
                    </table>
                    </form>
                </fieldset>
                <a href="ClassList.jsp?class_id=<%=var.class_id%>"><input type="button" class="btn1" value="Back to Class List"></a>
            </fieldset>  
        </center>
        
    </body>
        
        
    </body>
</html>
