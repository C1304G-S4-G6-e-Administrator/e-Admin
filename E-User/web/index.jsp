<%-- 
    Document   : index
    Created on : Jun 18, 2015, 9:10:38 AM
    Author     : duc
--%>

<%@page import="service.Lab"%>
<%@page import="app.Data"%>
<%@page import="serv.LoginServlet"%>
<%@page import="serv.LabServlet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="service.TimeTable"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="css/style.css" type="text/css" rel="stylesheet"/>
        <style type="text/css" >
            .tab-lab{
                margin-left: 150px;
                margin-top: 20px;
            }
        </style>
    </head>
    
    <body>
         <%@include file="header.jsp" %>
        <div class="content">
            <div class="left-cont">
                <div class="l">
                    <%
                    Data data=new Data();
                    List<Lab> list=data.getListLabs(); 
                    
                    
                    
                    
            if(list.size()>0)
           {
                 out.print("<table border='2px' class='tab-lab'>");
                    out.print("<tr>");
                    out.print("<td>Lab ID</td>");
                    
                    out.print("<td>Lab Name</td>");
                    out.print("<td>Number of Student</td>");
                    out.print("<td>Number of Computer</td>");
                    out.print("<td>Register</td>");
                    out.print("</tr>");
               for(Lab h:list)
               {
                 out.print("<tr>");
                   out.print("<td>"+h.getLabID()+"</td>");
                   
                   out.print("<td>"+h.getLabName()+"</td>");
                   out.print("<td>"+h.getLabQuantityStudent()+"</td>");
                   out.print("<td>"+h.getNumOfCom()+"</td>");
                   out.print("<td><a href='createTimetable.jsp?id="+h.getLabID()+"'>Register Now</a></td>");
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
