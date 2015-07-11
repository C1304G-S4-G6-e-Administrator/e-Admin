<%-- 
    Document   : logout
    Created on : Jul 5, 2015, 11:33:12 PM
    Author     : duc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
             session.removeAttribute("username");     
            session.removeAttribute("password");  
            request.getSession().invalidate();
            response.sendRedirect("login.jsp");
        
    %>
    </body>
</html>
