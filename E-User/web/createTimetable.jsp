<%-- 
    Document   : createTimetable
    Created on : Jul 2, 2015, 6:08:15 AM
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
         <%@include file="header.jsp" %>
        <div class="content">
            <div class="left-cont">
                <div class="l">
                    <%
                        int userid = Integer.valueOf(request.getParameter("id")); 
                        
                    %>
                    <form>
                        <input type="hidden" name="labID" value="<% out.print(userid); %>"/>
                        <input type=""/>
                    </form>
                    
                </div>
            </div>
            <div class="right-cont">
                <div class="r">
                    <div class="title-menu">
                        LAB INFORMATION
                    </div>
                    <ul>
                        <li><a href="index.jsp">Lab Details</a></li>
                        <li><a href="timetable.jsp">Time table</a></li>
                        <li><a href="report.jsp">Report</a></li>
                    </ul>
                </div>
            </div>
        </div>
         
       <%@include file="footer.jsp" %>
    </body>
</html>
