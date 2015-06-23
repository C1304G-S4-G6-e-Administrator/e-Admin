<%-- 
    Document   : login
    Created on : Jun 20, 2015, 8:32:26 AM
    Author     : duc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" type="text/css" rel="stylesheet"/>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="content">
            <div class="left-cont">
                <div class="l">
                    <div class="login">
                        <form action="#" method="POST">
                            <table>
                                <tr>
                                    <td>
                                        Username
                                    </td>
                                    <td>
                                       <input name="txt_username" type="text"/><br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                         Password
                                    </td>
                                    <td>
                                         <input name="txt_password" type="password"/><br/>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <input type="submit" value="Login"/>
                                    </td>
                                </tr>
                            </table>
                            
                           
                        </form>
                    </div>
                </div>
            </div>
            <div class="right-cont">
                <div class="r">
                    <div class="title-menu">
                        LAB INFORMATION
                    </div>
                    <ul>
                        <li><a href="#">Lab Details</a></li>
                        <li><a href="#">Time table</a></li>
                        <li><a href="#">Report</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
