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

<link href="webContent/css/jquery.datetimepicker.css" rel="stylesheet" type="text/css"/>
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
                        <h1>Forward Report</h1>
                        <form class="form-horizontal" action="/E-Admin/Update_repost" method="post">
                            <input type="hidden" name="id" value="<%= request.getParameter("id")%>"/>
                            <% ResultSet rs = (ResultSet) request.getAttribute("repost");%>
                            <fieldset>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<% out.print(db.getNameByID(rs.getInt("usr_id"))); %>" name="txtusr" id="txtusr" type="text" placeholder=" usr_ids"/>
                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                 
                                    <select name='combo'>
                                        <option>Select</option>
                                        <% ResultSet rs2 = (ResultSet) request.getAttribute("list");
                                            while (rs2.next()) {
                                        %>
                                        <option value='<%=rs2.getInt("usr_id")%>'>
                                            <%=rs2.getNString("usr_name")%>  (<%=db.getTaskProcess(rs2.getInt("usr_id")) %> Processing Task)
                                        </option>
                                        <%}%>
                                    </select>
                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= db.getLabNameByID(rs.getInt("lab_id")) %>" name="txtlab" id="txtlab" type="text" placeholder="lab_ids"/>
                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= rs == null ? "" : rs.getNString("report_title")%>" name="txtrepottitle" id="txtrepottitle" type="text" placeholder="report_titles"/>
                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= rs == null ? "" : rs.getNString("report_content")%>" name="txtrepotconten" id="txtrepotconten" type="text" placeholder="report_contents"/>
                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= rs == null ? "" : rs.getDate("report_timere")%>" name="txtrepottime" id="txtrepottime" type="text" placeholder="report_timeres"/>
                                </div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input type="text" name="user_data[birthday]" value="" id="datetimepicker"/>
                                    
                                </div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= rs == null ? "" : rs.getNString("report_message")%>" name="txtmessage" id="txtrepottime" type="text" placeholder="report_timeres"/>
                                </div>
                                    




                                <div class="button-login">	
                                    <button type="submit" class="btn btn-primary">Save</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
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
             <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <script src="webContent/js/jquery.datetimepicker.js" type="text/javascript"></script>
    <script src="webContent/js/datatimeaaaaaaaaaaaaaaaaaaaaa.js" type="text/javascript"></script>
    <script src="webContent/js/jquery.datetimepicker.js" type="text/javascript"></script>
    </body>
</html>
