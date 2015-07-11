<%-- 
    Document   : Edit_Repost
    Created on : Jul 7, 2015, 7:59:44 AM
    Author     : DUNG
--%>

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
            data.database db=new database();
        %>
        <div class="container-fluid-full">
            <div class="row-fluid">

                <div class="row-fluid">
                    <div class="login-box">
                        <div class="icons">
                            <a href="home.jsp"><i class="halflings-icon home"></i></a>
                            <a href="#"><i class="halflings-icon cog"></i></a>
                        </div>
                        <h1>Processing Report</h1>
                        <form class="form-horizontal" action="/E-Admin/TechUpdate" method="post">
                            <input type="hidden" name="id" value="<%= request.getParameter("id")%>"/>
                            <% ResultSet rs = (ResultSet) request.getAttribute("repost");%>
                            <fieldset>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<% out.print(db.getNameByID(rs.getInt("usr_id"))); ; %>" name="txtusr" id="txtusr" type="text" placeholder=" User Name"/>
                                </div>
                         
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<% out.print(db.getLabNameByID(rs.getInt("lab_id"))); %>" name="txtlab" id="txtlab" type="text" placeholder="Lab Name"/>
                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= rs == null ? "" : rs.getNString("report_title")%>" name="txtrepottitle" id="txtrepottitle" type="text" placeholder="Tittle"/>
                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= rs == null ? "" : rs.getNString("report_content")%>" name="txtrepotconten" id="txtrepotconten" type="text" placeholder="Content"/>
                                </div>
                                 <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= rs == null ? "" : rs.getDate("report_timere")%>" name="txtrepottime" id="txtrepottime" type="text" placeholder="Start Time"/>
                                </div>
                                   <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= rs == null ? "" : rs.getDate("report_deadline")%>" name="txtrepottime" id="txtrepottime" type="text" placeholder="Dead Line"/>
                                </div>
                                 <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= rs == null ? "" : rs.getNString("report_message")%>"  name="txtmessage" id="txtrepottime" type="text" placeholder="Message"/>
                                </div>
                                    <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <select name='status'>
                                        
                                        <option value='1'>
                                            Processing
                                        </option>
                                        <option value='2'>
                                            Done
                                        </option>
                                        <option value='3'>
                                            Deny
                                        </option>
                                    </select>
                                </div>
                                






                                <div class="button-login">	
                                    <button type="submit" class="btn btn-primary">Save</button>
                                    
                                </div>
                                <p>
                                    <a href="/E-Admin/Repor"> Back</a>
                                </p>
                                <div class="clearfix"></div>

                        </form>
                        <hr>


                    </div><!--/span-->
                </div><!--/row-->


            </div><!--/.fluid-container-->
    </body>
</html>
