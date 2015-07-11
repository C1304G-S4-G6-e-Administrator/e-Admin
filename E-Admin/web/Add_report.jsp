<%-- 
    Document   : Edit_Repost
    Created on : Jul 7, 2015, 7:59:44 AM
    Author     : DUNG
--%>

<%@page import="java.util.List"%>
<%@page import="entity.Lab"%>
<%@page import="entity.Lab"%>
<%@page import="data.database"%>
<%@page import="entity.User"%>
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
            if ((String) session.getAttribute("username") == null) {
                response.sendRedirect("home.jsp");

            }
            else {
     if (Integer.valueOf(session.getAttribute("role").toString())!=1) {
                response.sendRedirect("home.jsp");
            }
    }
            data.database db=new database();
            List<Lab> list=db.getLab();
            User user=(User)session.getAttribute("user");
        %>
        <div class="container-fluid-full">
            <div class="row-fluid">

                <div class="row-fluid">
                    <div class="login-box">
                        <div class="icons">
                            <a href="home.jsp"><i class="halflings-icon home"></i></a>
                            <a href="#"><i class="halflings-icon cog"></i></a>
                        </div>
                        <h1>New Report</h1>
                        <form class="form-horizontal" action="/E-Admin/updateadd" method="post">
                            <input type="hidden" name="id" value="<%= request.getParameter("id")%>"/>
                            
                            <fieldset>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%out.print(user.getName()); %>" name="txtusr" id="txtusr" type="text" placeholder=" usr_ids"/>
                                </div>
                               
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                        <select name="lab">

                                    <option>Select </option>
                                    <% 
                                    for(Lab l:list){
                                    %>
                                    <option value='<%=l.getId() %>'>
                                        <%=l.getName() %>
                                    </option>
                                    <%}%>
                                </select>
                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10"  name="txtrepottitle" id="txtrepottitle" type="text" placeholder="Title"/>
                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10"  name="txtrepotconten" id="txtrepotconten" type="text" placeholder="Content"/>
                                </div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10"  name="txtmessage" id="txtmessage" type="text" placeholder="Message"/>
                                </div>
                               
                               





                                <div class="button-login">	
                                    <button type="submit" class="btn btn-primary">Save</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                </div>
                                <p>
                                    <a href="/E-Admin/Repor"> back</a>
                                </p>
                                <div class="clearfix"></div>

                        </form>
                        <hr>


                    </div><!--/span-->
                </div><!--/row-->


            </div><!--/.fluid-container-->
    </body>
</html>
