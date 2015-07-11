<%-- 
    Document   : User
    Created on : Jun 29, 2015, 10:49:09 AM
    Author     : DUNG
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
        function myFunction() {
if (<%if (request.getAttribute("message")!=null) {
        out.print(true);
            }
          %>) {
    alert("Can't not delete this user. It can have constraint with a timetable or report");
    <% request.removeAttribute("message"); %>
}
    
}
</script>
<body onload="myFunction()">
<%
    if ((String) session.getAttribute("username")==null) {        
        response.sendRedirect("home.jsp");
       
        }
    else {
     if (Integer.valueOf(session.getAttribute("role").toString())!=0) {
                response.sendRedirect("home.jsp");
            }
    }
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
                <li><a href="accounts.jsp">User</a></li>
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
                                            Id
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 245px;" aria-label="Date registered: activate to sort column ascending">
                                            UserName
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 134px;" aria-label="Role: activate to sort column ascending">
                                            Name
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 145px;" aria-label="Status: activate to sort column ascending">
                                            Pass
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 134px;" aria-label="Role: activate to sort column ascending">
                                            Role
                                        </th>
                                        <%if ((Integer) session.getAttribute("role")==0) {
                                    out.print("<th class='sorting_asc' role='columnheader' tabindex='0' aria-controls='DataTables_Table_0' rowspan='1' colspan='1' style='width: 298px;' aria-sort='ascending' aria-label='Actions: activate to sort column descending'><a href='/E-Admin/add' style='font-size: large'> +Add </a></th>");
                                    }
                                    %>
                                        
                                    </tr>
                                </thead>   

                                <tbody role="alert" aria-live="polite" aria-relevant="all">
                                    <% ResultSet rs = (ResultSet) request.getAttribute("Users");
                                        while (rs.next()) {%>
                                    <tr class="odd">
                                        <td class=""><%= rs.getInt("usr_id")%></td>
                                        <td class="center "><%= rs.getString("usr_username")%></td>
                                        <td class="center "><%= rs.getNString("usr_name")%></td>
                                        <td class="center "><%= rs.getString("usr_pass")%></td>
                                        <td class="center "><% if (rs.getInt("usr_role")==0) {
                                                out.print("Admin");
                                            }
                                        else if (rs.getInt("usr_role")==1) {
                                                out.print("Instructor");
                                            }
                                        else if (rs.getInt("usr_role")==2) {
                                                out.print("Teach Support");
                                            }
                                               %></td>
                                        <td class="center  sorting_1">
                                                 <%if ((Integer) session.getAttribute("role")==0) {
                                    out.print("<a class='btn btn-info' href='/E-Admin/sua?id="+ rs.getInt("usr_id")+"'><i class='halflings-icon white edit'></i></a>");
                                    out.print("<a class='btn btn-danger' href='/E-Admin/Delete?id="+ rs.getInt("usr_id")+"'><i class='halflings-icon white trash'></i></a>");
                                                 
                                                 
                                                 }
//                                                 
                                    
                                    %>
                                            
                                            
                                        </td>
                                    </tr>
                                    <%}
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
