<%-- 
    Document   : Main
    Created on : Nov 27, 2018, 2:30:45 PM
    Author     : Libanan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MARKS Main Page</title>
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
        Object name = session.getAttribute("sessionName");
        Object id = session.getAttribute("sessionID");
    %>
    
    <body id="t">
        <center>
            <form>
                <fieldset id="f1">
                    <legend><h1>MARKS Grading System</h1></legend>
                    <a href="Logout.jsp"><input type="button" class="btn1" value="Logout"></a>
                    <h2>Welcome Mr./Ms. <%out.print(name);%>, What would you like to do?</h2>
                    <table>
                        <tr>
                            <td><a href="AddClass.jsp"><input class="btn" type="button" value="Add Class"></td>
                            <td><a href="GradingSystem.jsp"><input class="btn" type="button" value="Assign Grading System"></a></td>
                            <td><a href="AddStudent.jsp"><input class="btn" type="button" value="Add Student"></td>
                        </tr>
                        <tr>
                            <td><a href="ViewClassRecord.jsp"><input class="btn" type="button" value="View Class Records"></a></td>
                            <td><a href="AddSubject.jsp"><input class="btn" type="button" value="Add Subject"></a></td>
                            <td><a href="EnrollStud.jsp"><input class="btn" type="button" value="Add Student to Class"></a></td>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </center>
    </body>
</html>
