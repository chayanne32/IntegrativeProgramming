<%-- 
    Document   : InputScores
    Created on : Nov 27, 2018, 5:02:45 PM
    Author     : Libanan
--%>


<%@page import="DesignPattern.DBConnect"%>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    
    
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MARKS</title>
    </head>
    
        
        <%
            
            String temp = "";
            String qry = "SELECT * FROM students WHERE id_number LIKE '%"+ temp +"%'"
                    + "OR lastname LIKE '%"+ temp +"%'"
                    + "OR firstname LIKE '%"+ temp +"%'"
                    + "OR middlename LIKE '%"+ temp +"%'";
            
            DBConnect dbconn = new DBConnect();
            
            dbconn.connect();

        %>
    
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
                    <form action="AddSubjectSuccess.jsp" method="GET">
                        <h2>Add Subject</h2>
                        <table>
                            <tr>
                                <td>Course Code:</td>
                                <td><input type="text" name="ccode" class="btn1"></td>
                            </tr>
                            <tr>
                                <td>Description:</td>
                                <td><input type="text" name="cdesc" class="btn1"></td>
                            </tr>
                            <tr>
                                <td>Units:</td>
                                <td><input type="text" name="cunits" class="btn1"></td>
                            </tr>
                            
                            <tr>
                                <td><button type="reset" class="btn1" value="Clear">Clear</button></td>
                                <td><input class="btn1" type="submit" value="Add Subject" ></td>
                            </tr>
                        </table>
                        
                    </form>
                </fieldset>
                <a href="Main.jsp"><input type="button" class="btn1" value="Back"></a>
            </fieldset>  
        </center>
        
    </body>
</html>
