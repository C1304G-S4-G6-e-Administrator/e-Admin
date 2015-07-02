<%-- 
    Document   : details
    Created on : Jun 23, 2015, 10:02:25 PM
    Author     : duc
--%>

<%@page import="service.TimeTable"%>
<%@page import="java.util.List"%>
<%@page import="app.Data"%>
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
                    Data data=new Data();
                    List<TimeTable> list=data.getAllTimetables(1); 
                    
                    
                    
                    
            if(list.size()>0)
           {
                 out.print("<table border='2px' class='tab-lab'>");
                    out.print("<tr>");
                    out.print("<td>Timetable ID</td>");
                    out.print("<td>User ID</td>");
                    out.print("<td>Lab ID</td>");
                    out.print("<td>Time Start</td>");
                    out.print("<td>Time End</td>");
                    out.print("<td>Days</td>");
                    out.print("<td>Status</td>");
                    out.print("</tr>");
               for(TimeTable h:list)
               {
                 out.print("<tr>");
                   out.print("<td>"+h.getId()+"</td>");
                   out.print("<td>"+h.getUserID()+"</td>");
                   out.print("<td>"+h.getLabID()+"</td>");
                   out.print("<td>"+h.getTimeStart()+"</td>");
                   out.print("<td>"+h.getTimeEnd()+"</td>");
                   
                    out.print("</tr>");
                   
               }
               out.print("</tr>");
                   out.print("</table>");
           }
           else out.print("No Data!");
      %>
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
