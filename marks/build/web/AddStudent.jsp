<%-- 
    Document   : AddStudent
    Created on : Nov 30, 2018, 9:20:12 AM
    Author     : Libanan
--%>

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
                    <form action="AddStudentSuccess.jsp" method="GET">
                        <h2>Add Students</h2>
                        <table>
                            <tr>
                                <td>Student ID:</td>
                                <td><input type="text" name="sid" class="btn"></td>
                            </tr>
                            <tr>
                                <td>First Name:</td>
                                <td><input type="text" name="sfname" class="btn"></td>
                            </tr>
                            <tr>
                                <td>Middle Name:</td>
                                <td><input type="text" name="smname" class="btn"></td>
                            </tr>
                            <tr>
                                <td>Last Name:</td>
                                <td><input type="text" name="slname" class="btn"></td>
                            </tr>
                            <tr>
                                <td>Course:</td>
                                <td><input type="text" name="scourse" class="btn"></td>
                            </tr>
                            <tr>
                                <td>Year:</td>
                                <td><input type="text" name="syear" class="btn"></td>
                            </tr>
                            <tr>
                                <td><button type="reset" class="btn" value="Clear">Clear</button></td>
                                <td><input class="btn" type="submit" value="Add Student" ></td>
                            </tr>
                        </table>
                        
                    </form>
                </fieldset>
                <a href="Main.jsp"><input type="button" class="btn1" value="Back"></a>
            </fieldset>  
        </center>
        
    </body>
    
</html>
