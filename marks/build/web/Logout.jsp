<%-- 
    Document   : Logout
    Created on : Dec 1, 2018, 9:29:51 PM
    Author     : Libanan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MARKS</title>
    </head>
    
    <%
            session.removeAttribute("sessionID");
            session.removeAttribute("sessionName");
            
            response.sendRedirect("Login.jsp");
            
            %>
    
    <body>
    </body>
</html>
