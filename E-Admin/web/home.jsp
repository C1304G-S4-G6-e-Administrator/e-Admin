<%-- 
    Document   : instructor
    Created on : Jun 18, 2015, 9:10:38 AM
    Author     : DUNG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>

        <link href="webContent/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="webContent/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
        <link href="webContent/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="webContent/css/style-responsive.css" rel="stylesheet" type="text/css"/>

        <style type="text/css"> .hovergallery img{ -webkit-transform:scale(0.8); /*Webkit: Scale down image to 0.8x original size*/ -moz-transform:scale(0.8); /*Mozilla scale version*/ -o-transform:scale(0.8); /*Opera scale version*/ -webkit-transition-duration: 0.5s; /*Webkit: Animation duration*/ -moz-transition-duration: 0.5s; /*Mozilla duration version*/ -o-transition-duration: 0.5s; /*Opera duration version*/ opacity: 0.7; /*initial opacity of images*/ margin: 0 ; /*margin between images*/ } .hovergallery img:hover{ -webkit-transform:scale(1.3); /*Webkit: Scale up image to 1.2x original size*/ -moz-transform:scale(1.1); /*Mozilla scale version*/ -o-transform:scale(1.3); /*Opera scale version*/ box-shadow:0px 0px 30px gray; /*CSS3 shadow: 30px blurred shadow all around image*/ -webkit-box-shadow:0px 0px 30px gray; /*Safari shadow version*/ -moz-box-shadow:0px 0px 30px gray; /*Mozilla shadow version*/ opacity: 1; } </style> 


    </head>

    <body>     



        <jsp:include page = "header.jsp"/>

        <!-- start: Content -->
        <div class="hovergallery">
            <div id="content" class="span10">
                <ul class="breadcrumb">
                    <li>
                        <i class="icon-home"></i>
                        <a href="home.jsp">Home</a> 
                        <i class="icon-angle-right"></i>
                    </li>
                    <li><a href="home.jsp">instructor</a></li>
                </ul>

                <div>

                    <div class="box-content">
                        <div class="masonry-gallery masonry" style="position: relative; height: 778px; overflow: hidden;">
                            <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im1.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im1.jpg" alt="Sample Image 1"/>
                                </a>
                            </div>
                            <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im2.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im2.jpg" alt="Sample Image 1"/>
                                </a>
                            </div>
                            <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im3.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im3.jpg" alt="Sample Image 1"/>
                                </a>
                            </div>
                            <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im4.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im4.jpg" alt="Sample Image 1"/>
                                </a>
                            </div>
                            <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im5.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im5.jpg" alt="Sample Image 1"/>
                                </a>
                            </div>
                            <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im6.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im6.jpg" alt="Sample Image 1"/>
                                </a>
                            </div>
                            <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im7.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im7.jpg" alt="Sample Image 1"/>
                                </a>
                            </div>
                            <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im8.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im8.jpg" alt="Sample Image 1"/>
                                </a>
                            </div>
                            <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im9.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im9.jpg" alt="Sample Image 1"/>
                                </a>
                            </div>
                            <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im10.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im10.jpg" alt="Sample Image 1"/>
                                </a>
                            </div>
                            <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im11.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im11.jpg" alt="Sample Image 1"/>
                                </a>
                            </div>
                            <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im12.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im1.jpg" alt="Sample Image 1"/>
                                </a>
                            </div> <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im12.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im1.jpg" alt="Sample Image 1"/>
                                </a>
                            </div> <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im13.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im13.jpg" alt="Sample Image 1"/>
                                </a>
                            </div> <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im14.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im14.jpg" alt="Sample Image 1"/>
                                </a>
                            </div> <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im15.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im15.jpg" alt="Sample Image 1"/>
                                </a>
                            </div> <div id="image-1" class="masonry-thumb masonry-brick" style="position: absolute; width: 273px; top: 0px; left: 0px;">
                                <a style="" title="Sample Image 1" href="webContent/img/gallery/im16.jpg">
                                    <img class="grayscale" src="webContent/img/gallery/im16.jpg" alt="Sample Image 1"/>
                                </a>
                            </div>







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