<%-- 
    Document   : InputScoresSuccess
    Created on : Dec 8, 2018, 9:38:58 PM
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
        #f1{
            width: 80%;
            border-radius: 20px;
        }
        
    </style>
    
    <%
        Variables var = new Variables();
        
        
        //FOR INSERTING TO CLASS RECORDS
        var.type = request.getParameter("type");
        var.perfectscore = request.getParameter("perfectscore");
        var.actualscore = request.getParameter("actualscore");
        var.id_number = request.getParameter("student_id");
        var.class_id = request.getParameter("class_id");
        String date = request.getParameter("date");
        
        String qry = "INSERT INTO class_records VALUES('"+var.type+"', '"+var.perfectscore+"', '"+var.actualscore+"', '"+var.id_number+"', '"+var.class_id+"', '"+date+"')";
        
        int a = Integer.valueOf(var.perfectscore);
        int b = Integer.valueOf(var.actualscore);
        
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            var.conn = DriverManager.getConnection(var.link, var.user, var.pass);
            
            if(a >= b){
            
                Statement stmt = var.conn.createStatement();
            
                stmt.executeUpdate(qry);
            }else{
                response.sendRedirect("InputScores.jsp?index=1");
            }
        }catch(Exception ex){
            
        }
        
    %>
    
    <body id="t">
        <center>
            <fieldset id="f1">
                <legend><h1>MARKS Grading System</h1></legend>
                <a href="Logout.jsp"><input type="button" class="btn1" value="Logout"></a>
                <h2>Score Successfully Added.</h2>
                    <table>
                        <tr>
                            <td><a href="Main.jsp"><input class="btn" type="button" value="Go Back to Main Page"></a></td>
                            <td><a href="ClassList.jsp?class_id=<%=var.class_id%>"><input class="btn" type="button" value="Class List"></a></td>
                        </tr>
                    </table>
                
            </fieldset>  
        </center>
        
    </body>
</html>
