<%-- 
    Document   : report
    Created on : Jul 4, 2015, 11:34:07 AM
    Author     : DUNG
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
    </head>
    <body>
        <%
            if ((String) session.getAttribute("username") == null) {
                response.sendRedirect("home.jsp");

            }
            data.database db = new database();
            User user = (User) session.getAttribute("user");
        %>
        <jsp:include page = "header.jsp"/>
        <!-- start: Content -->
        <div id="content" class="span10">
            <ul class="breadcrumb">
                <li>
                    <i class="icon-home"></i>
                    <a href="home.jsp">Home</a> 
                    <i class="icon-angle-right"></i>
                </li>
                <li><a href="home.jsp">Reports</a></li>
            </ul>
            <div>

                <div class="box span12">
                    <div class="box-header" data-original-title="">
                        <h2><i class="halflings-icon user"></i><span class="break"></span>Members</h2>
                    </div>
                    <div class="box-content">
                        <div id="DataTables_Table_0_wrapper" class="dataTables_wrapper" role="grid"><table class="table table-striped table-bordered bootstrap-datatable datatable dataTable" id="DataTables_Table_0" aria-describedby="DataTables_Table_0_info">
                                <thead>
                                    <tr role="row">
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 166px;" aria-label="Username: activate to sort column ascending">
                                            Report ID
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 166px;" aria-label="Username: activate to sort column ascending">
                                            Instructor
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 166px;" aria-label="Username: activate to sort column ascending">
                                            Tech Name
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 166px;" aria-label="Username: activate to sort column ascending">
                                            Lab
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 166px;" aria-label="Username: activate to sort column ascending">
                                            Title
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 134px;" aria-label="Role: activate to sort column ascending">
                                            Content
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 145px;" aria-label="Status: activate to sort column ascending">
                                           Start Time
                                        </th>
                                         <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 145px;" aria-label="Status: activate to sort column ascending">
                                           Dead time
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 134px;" aria-label="Role: activate to sort column ascending">
                                            Status
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 134px;" aria-label="Role: activate to sort column ascending">
                                            Message
                                        </th>
                                        <%if ((Integer) session.getAttribute("role") == 1) {
                                                out.print("<th class='sorting_asc' role='columnheader' tabindex='0' aria-controls='DataTables_Table_0' rowspan='1' colspan='1' style='width: 298px;' aria-sort='ascending' aria-label='Actions: activate to sort column descending'><a href='/E-Admin/Add_repot' style='font-size: large'>+Add </a></th>");
                                            }
                                        %>




                                    </tr>
                                </thead>   

                                <tbody role="alert" aria-live="polite" aria-relevant="all">
                                    <%
                                        if ((Integer) session.getAttribute("role") == 1) {
                                            ResultSet rs1 = (ResultSet) request.getAttribute("repost2");

                                            while (rs1.next()) {
                                                if ((Integer) session.getAttribute("role") == 1) {
                                                    if (user.getId() == rs1.getInt("usr_id")) {
                                    %>
                                    <tr class="odd">
                                        <td class=""><%= rs1.getInt("report_id")%></td>
                                        <td class="center "><%= db.getNameByID(rs1.getInt("usr_id"))%></td>
                                        <td class="center "><% if (rs1.getInt("techID") == 0) {
                                                out.print("None");
                                            } else {
                                                out.print(db.getNameByID(rs1.getInt("techID")));
                                            }
                                            %></td>
                                        <td class="center "><%= db.getLabNameByID(rs1.getInt("lab_id"))%></td>
                                        <td class=""><%= rs1.getNString("report_title")%></td>
                                        <td class="center "><%= rs1.getNString("report_content")%></td>
                                        <td class="center "><%= rs1.getDate("report_timere")%></td>
                                        <td class="center "><%= rs1.getDate("report_deadline")%></td>
                                        <td class="center ">Pending</td>
                                        <td class="center "><%= rs1.getNString("report_message")%></td>
                                        <td class="center  sorting_1">


                                            <%

                                                        out.print(" <a class='btn btn-danger' href='/E-Admin/DeleteRepost?id=" + rs1.getInt("report_id") + "'><i class='halflings-icon white trash'></i></a>");

                                                    }
                                                }

                                            %>


                                        </td>
                                    </tr>
                                    <%}
                                        }
                                    %>

                                </tbody>
                                <tbody role="alert" aria-live="polite" aria-relevant="all">
                                    <%
                                        if ((Integer) session.getAttribute("role") == 1 || (Integer) session.getAttribute("role") == 2) {
                                            ResultSet rs2 = (ResultSet) request.getAttribute("repost3");

                                            while (rs2.next()) {
                                                if ((Integer) session.getAttribute("role") == 1) {
                                                    if (user.getId() == rs2.getInt("usr_id")) {

                                    %>
                                    <tr class="odd">
                                        <td class=""><%= rs2.getInt("report_id")%></td>
                                        <td class="center "><%= db.getNameByID(rs2.getInt("usr_id"))%></td>
                                        <td class="center "><%if (rs2.getInt("techID") == 0) {
                                                out.print("None");
                                            } else {
                                                out.print(db.getNameByID(rs2.getInt("techID")));
                                            }%></td>
                                        <td class="center "><%= db.getLabNameByID(rs2.getInt("lab_id"))%></td>
                                        <td class=""><%= rs2.getNString("report_title")%></td>
                                        <td class="center "><%= rs2.getNString("report_content")%></td>
                                        <td class="center "><%= rs2.getDate("report_timere")%></td>
                                        <td class="center "><%= rs2.getDate("report_deadline")%></td>
                                        <td class="center ">Done</td>
                                        <td class="center "><%= rs2.getNString("report_message")%></td>
                                        <td class="center  sorting_1">
                                            <% out.print(" <a class='btn btn-danger' href='/E-Admin/DeleteRepost?id=" + rs2.getInt("report_id") + "'><i class='halflings-icon white trash'></i></a>");
                                                }
                                            } else if ((Integer) session.getAttribute("role") == 2) {
                                                if (user.getId() == rs2.getInt("techID")) {

                                            %>
                                    <tr class="odd">
                                        <td class=""><%= rs2.getInt("report_id")%></td>
                                        <td class="center "><%= db.getNameByID(rs2.getInt("usr_id"))%></td>
                                        <td class="center "><%if (rs2.getInt("techID") == 0) {
                                                out.print("None");
                                            } else {
                                                out.print(db.getNameByID(rs2.getInt("techID")));
                                            }%></td>
                                        <td class="center "><%= db.getLabNameByID(rs2.getInt("lab_id"))%></td>
                                        <td class=""><%= rs2.getNString("report_title")%></td>
                                        <td class="center "><%= rs2.getNString("report_content")%></td>
                                        <td class="center "><%= rs2.getDate("report_timere")%></td>
                                        <td class="center "><%= rs2.getDate("report_deadline")%></td>
                                        <td class="center ">Done</td>
                                        <td class="center "><%= rs2.getNString("report_message")%></td>
                                        <td class="center  sorting_1">

                                            <%out.print(" <a class='btn btn-danger' href='/E-Admin/DeleteRepost?id=" + rs2.getInt("report_id") + "'><i class='halflings-icon white trash'></i></a>");
                                                    }
                                                }

                                            %>


                                        </td>
                                    </tr>
                                    <%}
                                        }
                                    %>

                                </tbody>
                                <tbody role="alert" aria-live="polite" aria-relevant="all">
                                    <%
                                        if ((Integer) session.getAttribute("role") == 2) {
                                            ResultSet rs2 = (ResultSet) request.getAttribute("repost1");

                                            while (rs2.next()) {

                                                if (user.getId() == rs2.getInt("techID")) {

                                    %>
                                    <tr class="odd">
                                        <td class=""><%= rs2.getInt("report_id")%></td>
                                        <td class="center "><%= db.getNameByID(rs2.getInt("usr_id"))%></td>
                                        <td class="center "><%= db.getNameByID(rs2.getInt("techID"))%></td>
                                        <td class="center "><%= db.getLabNameByID(rs2.getInt("lab_id"))%></td>
                                        <td class=""><%= rs2.getNString("report_title")%></td>
                                        <td class="center "><%= rs2.getNString("report_content")%></td>
                                        <td class="center "><%= rs2.getDate("report_timere")%></td>
                                        <td class="center "><%= rs2.getDate("report_deadline")%></td>
                                        <td class="center ">Processing</td>
                                        <td class="center "><%= rs2.getNString("report_message")%></td>
                                        <td class="center  sorting_1">


                                            <% out.print(" <a class='btn btn-danger' href='/E-Admin/DeleteRepost?id=" + rs2.getInt("report_id") + "'><i class='halflings-icon white trash'></i></a>");
                                                    out.print(" <a class='btn btn-info' href='/E-Admin/TechProcess?id=" + rs2.getInt("report_id") + "'><i class='halflings-icon white edit'></i></a>");
                                                }

                                            %>


                                        </td>
                                    </tr>
                                    <%}
                                        }
                                    %>

                                </tbody>
                                <tbody role="alert" aria-live="polite" aria-relevant="all">
                                    <%
                                        if ((Integer) session.getAttribute("role") == 2 || (Integer) session.getAttribute("role") == 1) {
                                            ResultSet rs2 = (ResultSet) request.getAttribute("repost4");

                                            while (rs2.next()) {
                                                if ((Integer) session.getAttribute("role") == 1) {
                                                    if (user.getId() == rs2.getInt("usr_id")) {

                                    %>
                                    <tr class="odd">
                                        <td class=""><%= rs2.getInt("report_id")%></td>
                                        <td class="center "><%= db.getNameByID(rs2.getInt("usr_id"))%></td>
                                        <td class="center "><%= db.getNameByID(rs2.getInt("techID"))%></td>
                                        <td class="center "><%= db.getLabNameByID(rs2.getInt("lab_id"))%></td>
                                        <td class=""><%= rs2.getNString("report_title")%></td>
                                        <td class="center "><%= rs2.getNString("report_content")%></td>
                                        <td class="center "><%= rs2.getDate("report_timere")%></td>
                                        <td class="center "><%= rs2.getDate("report_deadline")%></td>
                                        <td class="center ">Rejected</td>
                                        <td class="center "><%= rs2.getNString("report_message")%></td>
                                        <td class="center  sorting_1">

                                            <% out.print(" <a class='btn btn-danger' href='/E-Admin/DeleteRepost?id=" + rs2.getInt("report_id") + "'><i class='halflings-icon white trash'></i></a>");
                                                }
                                            } else if ((Integer) session.getAttribute("role") == 2) {
                                                if (user.getId() == rs2.getInt("techID")) {%>
                                    <tr class="odd">
                                        <td class=""><%= rs2.getInt("report_id")%></td>
                                        <td class="center "><%= db.getNameByID(rs2.getInt("usr_id"))%></td>
                                        <td class="center "><%= db.getNameByID(rs2.getInt("techID"))%></td>
                                        <td class="center "><%= db.getLabNameByID(rs2.getInt("lab_id"))%></td>
                                        <td class=""><%= rs2.getNString("report_title")%></td>
                                        <td class="center "><%= rs2.getNString("report_content")%></td>
                                        <td class="center "><%= rs2.getDate("report_timere")%></td>
                                        <td class="center "><%= rs2.getDate("report_deadline")%></td>
                                        <td class="center ">Rejected</td>
                                        <td class="center "><%= rs2.getNString("report_message")%></td>
                                        <td class="center  sorting_1">
                                            <%out.print(" <a class='btn btn-danger' href='/E-Admin/DeleteRepost?id=" + rs2.getInt("report_id") + "'><i class='halflings-icon white trash'></i></a>");
                                                    }
                                                }

                                            %>


                                        </td>
                                    </tr>
                                    <%}
                                        }
                                    %>

                                </tbody>

                                <tbody role="alert" aria-live="polite" aria-relevant="all">
                                    <%
                                        if ((Integer) session.getAttribute("role") == 0) {
                                            ResultSet rs2 = (ResultSet) request.getAttribute("repost5");

                                            while (rs2.next()) {
                                                if (rs2.getInt("report_status") == 0) {


                                    %>
                                    <tr class="odd">
                                        <td class=""><%= rs2.getInt("report_id")%></td>
                                        <td class="center "><%= db.getNameByID(rs2.getInt("usr_id"))%></td>
                                        <td class="center "><% if (rs2.getInt("techID") == 0) {
                                                out.print("None");
                                            } else {
                                                out.print(db.getNameByID(rs2.getInt("techID")));
                                            }%></td>
                                        <td class="center "><%= db.getLabNameByID(rs2.getInt("lab_id"))%></td>
                                        <td class=""><%= rs2.getNString("report_title")%></td>
                                        <td class="center "><%= rs2.getNString("report_content")%></td>
                                        <td class="center "><%= rs2.getDate("report_timere")%></td>
                                        <td class="center "><%= rs2.getDate("report_deadline")%></td>
                                        <td class="center ">Pending</td>
                                        <td class="center "><%= rs2.getNString("report_message")%></td>
                                        <td class="center  sorting_1">


                                            <% out.print(" <a class='btn btn-danger' href='/E-Admin/DeleteRepost?id=" + rs2.getInt("report_id") + "'><i class='halflings-icon white trash'></i></a>");
                                                    out.print(" <a class='btn btn-info' href='/E-Admin/Edit_Repost?id=" + rs2.getInt("report_id") + "'><i class='halflings-icon white edit'></i></a>");
                                                }
                                                if (rs2.getInt("report_status") == 1||rs2.getInt("report_status") == 2||rs2.getInt("report_status") == 3) {%>  
                                    <tr class="odd">
                                        <td class=""><%= rs2.getInt("report_id")%></td>
                                        <td class="center "><%= db.getNameByID(rs2.getInt("usr_id"))%></td>
                                        <td class="center "><% if (rs2.getInt("techID") == 0) {
                                                out.print("None");
                                            } else {
                                                out.print(db.getNameByID(rs2.getInt("techID")));
                                            }%></td>
                                        <td class="center "><%= db.getLabNameByID(rs2.getInt("lab_id"))%></td>
                                        <td class=""><%= rs2.getNString("report_title")%></td>
                                        <td class="center "><%= rs2.getNString("report_content")%></td>
                                        <td class="center "><%= rs2.getDate("report_timere")%></td>
                                        <td class="center "><%= rs2.getDate("report_deadline")%></td>
                                        <td class="center "><% if (rs2.getInt("report_status")==1) {
                                                out.print("Processing");
                                            }
                                        if (rs2.getInt("report_status")==2) {
                                                out.print("Done");
                                            }
                                        if (rs2.getInt("report_status")==3) {
                                                out.print("Rejected");
                                            }
                                            %></td>
                                        <td class="center "><%= rs2.getNString("report_message")%></td>
                                        <td class="center  sorting_1">
                                            <% out.print(" <a class='btn btn-danger' href='/E-Admin/DeleteRepost?id=" + rs2.getInt("report_id") + "'><i class='halflings-icon white trash'></i></a>");
                                                }

                                            %>


                                        </td>
                                    </tr>
                                    <%}
                                        }
                                    %>

                                </tbody>
                            </table>
                        </div>            

                    </div>
                </div>








            </div>

        </div>



        <!--/.fluid-container-->

        <!-- end: Content -->
    </div><!--/#content.span10-->
</div><!--/fluid-row-->

<jsp:include page = "footer.jsp"/>
</body>
</html>
