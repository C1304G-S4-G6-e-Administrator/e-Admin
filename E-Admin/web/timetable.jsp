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
        <script>
        function myFunction() {
if (<%if (request.getAttribute("message")!=null) {
        out.print(true);
            }
          %>) {
    alert("Delete completed");
    <% request.removeAttribute("message"); %>
}
    
}
</script>
    </head>
    <body onload="myFunction()">
        <%
            if ((String) session.getAttribute("username") == null) {
                response.sendRedirect("home.jsp");

            }
           User user= (User)session.getAttribute("user");
           
            data.database db = new database();
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
                                            Time Table ID
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 166px;" aria-label="Username: activate to sort column ascending">
                                            Lab
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 166px;" aria-label="Username: activate to sort column ascending">
                                            Instructor
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 166px;" aria-label="Username: activate to sort column ascending">
                                            Status
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 166px;" aria-label="Username: activate to sort column ascending">
                                            Date
                                        </th>
                                        <th class="sorting" role="columnheader" tabindex="0" aria-controls="DataTables_Table_0" rowspan="1" colspan="1" style="width: 134px;" aria-label="Role: activate to sort column ascending">
                                            Slot
                                        </th>
                                      
                                        <%
                                                out.print("<th class='sorting_asc' role='columnheader' tabindex='0' aria-controls='DataTables_Table_0' rowspan='1' colspan='1' style='width: 298px;' aria-sort='ascending' aria-label='Actions: activate to sort column descending'><a href='/E-Admin/Add_repot' style='font-size: large'></a></th>");
                                            
                                        %>




                                    </tr>
                                </thead>   

                                <tbody role="alert" aria-live="polite" aria-relevant="all">
                                    <%
                                        if ((Integer) session.getAttribute("role") == 1 || (Integer) session.getAttribute("role") == 0) {
                                            ResultSet rs1 = (ResultSet) request.getAttribute("tables");

                                            while (rs1.next()) {
                                                if ((Integer) session.getAttribute("role") == 1){
                                                if (user.getId()==rs1.getInt("usr_id")) {
                                                        
                                                    
                                                    
                                                
                                    %>
                                    <tr class="odd">
                                        <td class=""><%= rs1.getInt("time_tableID")%></td>
                                        <td class=""><%= db.getLabNameByID(rs1.getInt("lab_ID")) %></td>
                                        <td class="center "><%= db.getNameByID(rs1.getInt("usr_id"))%></td>
                                        <td class="center "><%if (rs1.getInt("sta")==0) {
                                                out.print("Pending");
                                            }
                                        else out.print("Allowed");
                                            %></td>
                                       
                                        <td class="center "><%= rs1.getDate("dat") %></td>
                                        <td class=""><%= rs1.getInt("slot")%></td>
                                        
                                        
                                        <td class="center  sorting_1">
                                                

                                            <%if ((Integer) session.getAttribute("role") == 1) {

                                                    out.print(" <a class='btn btn-danger' href='/E-Admin/DeleteTimetable?id=" + rs1.getInt("time_tableID") + "'><i class='halflings-icon white trash'></i></a>");
                                                }}} else if ((Integer) session.getAttribute("role") == 0){
                                                
                                                %>
                                                   <tr class="odd">
                                        <td class=""><%= rs1.getInt("time_tableID")%></td>
                                        <td class=""><%= db.getLabNameByID(rs1.getInt("lab_ID")) %></td>
                                        <td class="center "><%= db.getNameByID(rs1.getInt("usr_id"))%></td>
                                        <td class="center "><%if (rs1.getInt("sta")==0) {
                                                out.print("Pending");
                                            }
                                        else out.print("Allowed"); %></td>
                                       
                                        <td class="center "><%= rs1.getDate("dat") %></td>
                                        <td class=""><%= rs1.getInt("slot")%></td>
                                        
                                        
                                        <td class="center  sorting_1">
                                              <%  
                                                
                                                    out.print(" <a class='btn btn-info' href='/E-Admin/EditTimeTable?id=" + rs1.getInt("time_tableID") + "'><i class='halflings-icon white edit'></i></a>");
                                                    out.print(" <a class='btn btn-danger' href='/E-Admin/DeleteTimetable?id=" + rs1.getInt("time_tableID") + "'><i class='halflings-icon white trash'></i></a>");
                                                
                                            %>


                                        </td>
                                    </tr>
                                    <%}
                                        }}
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
