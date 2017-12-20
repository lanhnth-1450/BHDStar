<%-- 
    Document   : index
    Created on : Nov 9, 2017, 4:21:00 PM
    Author     : Lanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BHDSTAR CINEPLEX - HỆ THỐNG RẠP CHIẾU PHIM HIỆN ĐẠI</title>
        <!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/reset.css" type="text/css" />
        <link rel="stylesheet" href="css/style_LANH.css" type="text/css" />
        <link rel="stylesheet" href="css/responsive.css" type="text/css" />	
        <link rel="stylesheet" type="text/css" href="css/stylevideo.css">
        <script type="text/javascript" src="js/video.js"></script>
    </head>
    <body class="home blog">
        <jsp:include page="header.jsp"></jsp:include>
            <div id="wrapper">
                <div class="index">
                    <div class="section--product-view">
                        <ul>
                            <li class="product--title">
                                <h3 class="js__tab" data-target="#film-1">PHIM ĐANG CHIẾU</h3>
                                <h3 class="js__tab js__active" data-target="#film-2">PHIM SẮP CHIẾU</h3>
                                <h3 class="js__tab" data-target="#film-3">VÉ BÁN TRƯỚC</h3>
                            </li>
                            <li id="film-1" class="list--film js__tab_content">
                                <div class="scroll-wrapper js_film">
                                    <div class="flex-viewport" style="overflow: hidden;position: relative;">
                                        <ul class="slides">
                                            <li class="type-movies" style="width: 200px; margin-right: 23px; float: left; display: block; margin-left: 120px;">
                                                <div class="film-item">
                                                    <a class="bhd-trailer-box bhd-trailer" href="slidevideo.html" onclick="videoFuntion()">Trailer</a>

                                                    <span class="meta-box-type">
                                                        <span class="film--rating">C 18</span>
                                                        <span class="tech--2d">2D</span>
                                                    </span>
                                                    <a href="#">
                                                        <img src="http://www.bhdstar.vn/wp-content/uploads/2017/09/BHD-STAR-QUY-DU-THUC-TINH-POSTER-470X700-245x365.jpg">
                                                    </a>
                                                    <a href="#">
                                                        <span class="movie--name">AMITYVILLE: QUỶ DỮ THỨC TỈNH</span>
                                                    </a>
                                                </div>
                                                <a href="#" class="btn--green">
                                                    <i class="fa fa-ticket"></i>
                                                    MUA VÉ
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                            </li>
                            <li id="film-2" class="list--film js__tab_content js__active"></li>
                            <li id="film-3" class="list--film js__tab_content"></li>
                        </ul>
                    </div>
                </div>
            <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
