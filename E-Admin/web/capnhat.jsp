<%-- 
    Document   : capnhat
    Created on : Jun 27, 2015, 3:11:58 PM
    Author     : DUNG
--%>

<%@page import="java.sql.ResultSet"%>
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

        <link rel="shortcut icon" href="img/favicon.ico">
        <!-- end: Favicon -->

        <style type="text/css">
            body { background: url(webContent/img/bg-login.jpg) !important; }
        </style>




    </head>
    <body>
        <%
    if ((String) session.getAttribute("username")==null) {        
        response.sendRedirect("home.jsp");
        
        }
%>
        <div class="container-fluid-full">
            <div class="row-fluid">

                <div class="row-fluid">
                    <div class="login-box">
                        <div class="icons">
                            <a href="home.jsp"><i class="halflings-icon home"></i></a>
                            <a href="#"><i class="halflings-icon cog"></i></a>
                        </div>
                        <h1>User</h1>
                        <form class="form-horizontal" action="/E-Admin/update" method="post">
                            <input type="hidden" name="id" value="<%= request.getParameter("id")%>"/>
                            <% ResultSet rs = (ResultSet) request.getAttribute("Users");%>
                            <fieldset>

                                <div class="input-prepend" title="Username">
                               
                                    <span class="add-on"><i class="halflings-icon user"></i></span>
                                    <input class="input-large span10"  value="<%= rs == null ? "" : rs.getString("usr_username")%>" name="txtName"  id="txtName" type="text" placeholder="username"/>
                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= rs == null ? "" : rs.getNString("usr_name")%>" name="txtAddress" id="txtaddress" type="text" placeholder="name"/>
                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= rs == null ? "" : rs.getString("usr_pass")%>" name="txtAge" id="txtAge" type="text" placeholder="password"/>
                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= rs == null ? "" : rs.getInt("usr_role")%>" name="txtAges" id="txtAges" type="text" placeholder="role"/>
                                </div>

                          	

                                <div class="button-login">	
                                    <button type="submit" class="btn btn-primary">Save</button>
                                    <button type="submit" class="btn btn-primary">Reset</button>
                                </div>
                                               <p>
                             <a href="/E-Admin/User"> Back</a>
                        </p>
                                <div class="clearfix"></div>
                      
                        </form>
                        <hr>
                        
                       
                    </div><!--/span-->
                </div><!--/row-->


            </div><!--/.fluid-container-->
    </body>
</html>


