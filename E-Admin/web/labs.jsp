<%-- 
    Document   : labs
    Created on : Jun 23, 2015, 11:37:49 PM
    Author     : duc
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab Details</title>
    </head>
    <script>
        function myFunction() {
if (<%if (request.getAttribute("message")!=null) {
        out.print(true);
            }
          %>) {
    alert("Can't not delete this lab. It can have constraint with a timetable or report");
    <% request.removeAttribute("message"); %>
}
    
}
</script>
    <body onload="myFunction()">

        <jsp:include page = "header.jsp"/>
        <!-- start: Content -->
        <%
            if ((String) session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");

            }
        %>
        <div id="content" class="span10">
            <ul class="breadcrumb">
                <li>
                    <i class="icon-home"></i>
                    <a href="home.jsp">Home</a> 
                    <i class="icon-angle-right"></i>
                </li>
                <li><a href="home.jsp">Lab</a></li>
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
                                            Lab ID
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 134px;" aria-label="Role: activate to sort column ascending">
                                            Lab Name
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 145px;" aria-label="Status: activate to sort column ascending">
                                            Number Of Student
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 134px;" aria-label="Role: activate to sort column ascending">
                                            Number of Computer
                                        </th>
                                      
                                        <%if ((Integer) session.getAttribute("role") == 0) {
                                                out.print(" <th class='sorting_asc' role='columnheader' tabindex='0' aria-controls='DataTables_Table_0' rowspan='1' colspan='1' style='width: 298px;' aria-sort='ascending' aria-label='Actions: activate to sort column descending'><a href='/E-Admin/Add_lab' style='font-size: large'> +Add </a></th>");
                                            }
                                        %>

                                    </tr>
                                </thead>   

                                <tbody role="alert" aria-live="polite" aria-relevant="all">
                                    <% ResultSet rs1 = (ResultSet) request.getAttribute("list1");
                                        while (rs1.next()) {%>
                                    <tr class="odd">
                                        <td class=""><%= rs1.getInt("lab_id")%></td>
                                        <td class="center "><%= rs1.getNString("lab_name")%></td>
                                        <td class="center "><%= rs1.getInt("lab_quantity_student")%></td>
                                        <td class="center "><%= rs1.getInt("numOfCom")%></td>
                                        
                                        <td class="center  sorting_1">

                                            <%if ((Integer) session.getAttribute("role") == 0) {
                                                    out.print(" <a class='btn btn-info' href='/E-Admin/Edit_lab?id=" + rs1.getInt("lab_id") + "'><i class='halflings-icon white edit'></i></a>");
                                                    out.print(" <a class='btn btn-danger' href='/E-Admin/Delete_lab?id=" + rs1.getInt("lab_id") + "'><i class='halflings-icon white trash'></i></a>");
                                                }
                                            %>
                                              <%if ((Integer) session.getAttribute("role") == 1) {
                                                    out.print(" <a class='btn btn-info' href='/E-Admin/Book?id=" + rs1.getInt("lab_id") + "'>Book now</a>");
                                                    
                                                }
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
