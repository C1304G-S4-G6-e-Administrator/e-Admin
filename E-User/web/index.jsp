<%-- 
    Document   : index
    Created on : Jun 18, 2015, 9:10:38 AM
    Author     : duc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <link href="css/style.css" type="text/css" rel="stylesheet"/>
        <style type="text/css" >
            
        </style>
    </head>
    
    <body>
         <%@include file="header.jsp" %>
        <div class="content">
            <div class="left-cont">
                <div class="l"></div>
            </div>
            <div class="right-cont">
                <div class="r">
                    <div class="title-menu">
                        LAB INFORMATION
                    </div>
                    <ul>
                        <li><a href="#">Lab Details</a></li>
                        <li><a href="#">Time table</a></li>
                        <li><a href="#">Report</a></li>
                    </ul>
                </div>
            </div>
        </div>
         
       <%@include file="footer.jsp" %>
    </body>
</html>
