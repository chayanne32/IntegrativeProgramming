<%-- 
    Document   : Login
    Created on : Nov 27, 2018, 2:01:59 PM
    Author     : Libanan
--%>


<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MARKS Login</title>
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
                
                <fieldset id="f2">
                    <form action="Authentication.jsp" method="POST">
                        <h2>Login</h2>
                        <table>
                            <tr>
                                <td>ID Number:</td>
                                <td><input type="text" name="user" class="btn"></td>
                            </tr>
                            <tr>
                                <td>Password:</td>
                                <td><input type="password" name="pass" class="btn"></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><input class="btn" type="submit" value="Login" ></td>
                            </tr>
                        </table>
                    </form>
                </fieldset>
                <br><br>
                <fieldset id="f2">
                    <h2>Register</h2>
                    <form action="Register.jsp" method="POST">
                    <table>
                        <tr>
                            <td>ID Number:</td>
                            <td><input type="text" name="ruser" class="btn"></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="rpass" class="btn"></td>
                        </tr>
                        <tr>
                            <td>First Name:</td>
                            <td><input type="text" name="rfname" class="btn"></td>
                        </tr>
                        <tr>
                            <td>Middle Name:</td>
                            <td><input type="text" name="rmname" class="btn"></td>
                        </tr>
                        <tr>
                            <td>Last Name:</td>
                            <td><input type="text" name="rlname" class="btn"></td>
                        </tr>
                        <tr>
                            <td>Degree:</td>
                            <td><input type="text" name="rdeg" class="btn"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input class="btn" type="submit" value="Register" ></td>
                        </tr>
                    </table>
                </fieldset>
            </fieldset>

        </center>
        
    </body>
</html>
