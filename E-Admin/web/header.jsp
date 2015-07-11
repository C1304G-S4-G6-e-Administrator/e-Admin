<%-- 
    Document   : header
    Created on : Jun 23, 2015, 11:40:59 PM
    Author     : duc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="webContent/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="webContent/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
        <link href="webContent/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="webContent/css/style-responsive.css" rel="stylesheet" type="text/css"/>

    </head>
  <%
    if ((String) session.getAttribute("username")==null) {        
        response.sendRedirect("home.jsp");
                }
%>
    <body>
        <div class="content">
            <div class="left-cont">
                <div class="navbar">
                    <div class="navbar-inner">
                        <div class="container-fluid">

                            <a class="brand" href="#"><span>welcome</span></a>

                            <!-- start: Header Menu -->

                            <!-- end: Header Menu -->

                        </div>
                    </div>
                </div>

                <!-- start: Header -->

                <div class="container-fluid-full">
                    <div class="row-fluid">

                        <!-- start: Main Menu -->
                        <div id="sidebar-left" class="span2">
                            <div class="nav-collapse sidebar-nav">
                                <ul class="nav nav-tabs nav-stacked main-menu">
                                    
                                    
                                   
                                      <%if ((String) session.getAttribute("username")!=null) {
                                        if ((Integer) session.getAttribute("role")!=2) {
                                                out.print("<li><a href='/E-Admin/List'><i class='icon-edit'></i><span class='hidden-tablet'>Lab</span></a></li>");
                                                 out.print(" <li><a href='/E-Admin/ListTimeTable'><i class='icon-edit'></i><span class='hidden-tablet'> Time Table</span></a></li>");
                                            }
                                    
                                    }
                                    
                                    %>
                                    <li><a href="/E-Admin/Repor"><i class="icon-picture"></i><span class="hidden-tablet"> Reports</span></a></li>
                                    <%if ((String) session.getAttribute("username")!=null) {
                                        if ((Integer) session.getAttribute("role")==0) {
                                                out.print("<li><a href='.../E-Admin/User'><i class='icon-align-justify'></i><span class='hidden-tablet'> Account</span></a></li>");
                                            }
                                    
                                    }
                                    
                                    %>
                                   
                                    <%if ((String) session.getAttribute("username")==null) {
                                    out.print("<li><a href='login.jsp'><i class='icon-lock'></i><span class='hidden-tablet'> Login Page</span></a></li>");
                                    }
                                    else out.print("<li><a href='logout.jsp'><i class='icon-lock'></i><span class='hidden-tablet'> Logout</span></a></li>");
                                    %>
                                    
                                </ul>
                            </div>
                        </div>
                        <!-- end: Main Menu -->

                        <noscript>
                        <div class="alert alert-block span10">
                            <h4 class="alert-heading">Warning!</h4>
                            <p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
                        </div>
                        </noscript>
                        </body>
                        </html>
