<%-- 
    Document   : bookRom
    Created on : Jul 10, 2015, 10:28:01 AM
    Author     : duc
--%>

<%@page import="entity.User"%>
<%@page import="data.database"%>
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

            } else {
                if (Integer.valueOf(session.getAttribute("role").toString()) != 1 && Integer.valueOf(session.getAttribute("role").toString()) != 0) {
                    response.sendRedirect("home.jsp");
                }
            }
            data.database db = new database();

        %>
        <div class="container-fluid-full">
            <div class="row-fluid">

                <div class="row-fluid">
                    <div class="login-box">
                        <div class="icons">
                            <a href="home.jsp"><i class="halflings-icon home"></i></a>
                            <a href="#"><i class="halflings-icon cog"></i></a>
                        </div>
                        <h1>Confirm Book Room</h1>
                        <form class="form-horizontal" action="/E-Admin/Comfirm" method="post">

                            <input type="hidden" name="id" value="<%=request.getParameter("id")%>"/>
                            <% ResultSet rs = (ResultSet) request.getAttribute("TimeTable");%>
                            <fieldset>



                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= db.getLabNameByID(rs.getInt("lab_ID"))%>" name="txtlabID" id="txtaddressl" type="text" placeholder=" Lab ID"/>
                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <span class="add-on"><i class="halflings-icon lock"></i></span>
                                    <input class="input-large span10" value="<%= db.getNameByID(rs.getInt("usr_id"))%>" name="txtUserID" id="txtAgel" type="text" placeholder="user_id"/>
                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">
                                    <label class="input-large span10" value="" name="txtUserID" id="txtAgel" type="text" placeholder="user_id">      <% if (rs.getInt("slot") == 1) {
                                            out.print("Slot 1 (7:00-11:00)");
                                        } else if (rs.getInt("slot") == 2) {
                                            out.print("Slot 2 (13:30-17:30)");
                                        } else if (rs.getInt("slot") == 3) {
                                            out.print("Slot 1 (18:00-21:00)");
                                        }
                                        %></label>


                                </div>
                                <div class="clearfix"></div>
                                <div class="input-prepend" title="Password">  
                                    <label class="input-large span10" value="" name="txtUserID" id="txtAgel" type="text" placeholder="user_id">Date: <%= rs.getDate("dat")%></label>
                                    
                                </div>
                                    <div class="input-prepend" title="Password">  
                                    <select name='status'>
                                        <option value='0'>
                                            Pending
                                        </option>
                                        <option value='1'>
                                            Processing
                                        </option>
                                        
                                    </select>
                                </div>
                                    
                                <div class="button-login">	
                                    <button type="submit" class="btn btn-primary">Save</button>
                                    <button type="reset" class="btn btn-primary">Reset</button>
                                </div>
                                <p>
                                    <a href="/E-Admin/List"> Back</a>
                                </p>
                                <div class="clearfix"></div>

                        </form>
                        <hr>


                    </div><!--/span-->
                </div><!--/row-->


            </div><!--/.fluid-container-->
            <script>
                $(function () {
                    $("#datepicker").datepicker();
                });
            </script>
            <script src="//code.jquery.com/jquery-1.10.2.js"></script>
            <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
    </body>

</html>
