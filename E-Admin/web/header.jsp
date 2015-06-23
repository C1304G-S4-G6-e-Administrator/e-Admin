<%-- 
    Document   : header
    Created on : Jun 23, 2015, 11:40:59 PM
    Author     : duc
--%>

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
        
    </head>
    <body>
         <div class="content">
            <div class="left-cont">
                <div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
	
				<a class="brand" href="index.html"><span>HOME</span></a>
								
				<!-- start: Header Menu -->
				
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
            
	<!-- start: Header -->
	
		<div class="container-fluid-full">
		<div class="row-fluid">
				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span2">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						
						<li><a href="labs.jsp"><i class="icon-edit"></i><span class="hidden-tablet"> Lab Details</span></a></li>
						<li><a href="reports.jsp"><i class="icon-picture"></i><span class="hidden-tablet"> Reports</span></a></li>
						<li><a href="accounts.jsp"><i class="icon-align-justify"></i><span class="hidden-tablet"> Account</span></a></li>						
						<li><a href="login.jsp"><i class="icon-lock"></i><span class="hidden-tablet"> Login Page</span></a></li>
					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
    </body>
</html>
