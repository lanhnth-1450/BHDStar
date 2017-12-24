<%-- 
    Document   : index
    Created on : Nov 9, 2017, 4:21:00 PM
    Author     : Lanh
--%>

<%@page import="control.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Film"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.FilmDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BHDSTAR CINEPLEX - HỆ THỐNG RẠP CHIẾU PHIM HIỆN ĐẠI</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/reset.css" type="text/css" />
        <link rel="stylesheet" href="css/style_LANH.css" type="text/css" />
        <link rel="stylesheet" href="css/responsive.css" type="text/css" />	
        <link rel="stylesheet" type="text/css" href="css/stylevideo.css">
        <script type="text/javascript" src="js/video.js"></script>
    </head>
    <body class="home blog">
        <jsp:include page="view_component/header.jsp"></jsp:include>
        <jsp:include page="view_component/slide.jsp"></jsp:include>
        <%
            Connection con = DBConnection.getConnection();
            FilmDAO filmDAO = new FilmDAO();
            ArrayList<Film> listFilm = filmDAO.getListFilm(con);
        %>     
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
                                    <% for (int i = 0; i < listFilm.size(); i++) {%>    
                                    <li class="type-movies" style="width: 200px; margin-right: 23px; float: left; display: block; margin-left: 120px;">
                                        <div class="film-item">
                                            <a class="bhd-trailer-box bhd-trailer" href="<%=listFilm.get(i).getTrailer()%>">Trailer</a>

                                            <span class="meta-box-type">
                                                <span class="film--rating">C 18</span>
                                                <span class="tech--2d">2D</span>
                                            </span>
                                            <a href="chitietphim_lanh.jsp">
                                                <img src="<%=listFilm.get(i).getPoster()%>">
                                            </a>
                                            <a href="#">
                                                <span class="movie--name"><%=listFilm.get(i).getName()%></span>
                                            </a>
                                        </div>
                                        <a href="#" class="btn--green">
                                            <i class="fa fa-ticket"></i>
                                            MUA VÉ
                                        </a>
                                    </li>
                                    <% }%>
                                </ul>
                            </div>
                            <!-- 	<ul class="flex-direction-nav">
                                            <li class="flex-nav-prev">
                                                    <a class="flex-prev" href="#">Previous</a>
                                            </li>
                                            <li class="flex-nav-next">
                                                    <a class="flex-next" href="#">Next</a>
                                            </li>
                                    </ul>
                            </div> -->
                    </li>
                    <li id="film-2" class="list--film js__tab_content js__active"></li>
                    <li id="film-3" class="list--film js__tab_content"></li>
                </ul>
            </div>

            <div class="section--member">
                <div class="container">
                    <img class="img--title" src="images/bg-title-bhd-member.png">
                    <div class="card-holder">
                        <!-- <img src="images/img-hand.png"> -->
                    </div>
                    <div class="flexslider">
                        <div class="flex-viewport">
                            <ul class="list--card-member slides">
                                <li>
                                    <a href="#">
                                        <img class="img--card-member" src="images/STAR.png">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img class="img--card-member" src="images/GOLD.png">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img class="img--card-member" src="images/DIAMOND.png">
                                    </a>
                                </li>
                            </ul>	
                        </div>
                    </div>


                    <a href="#" class="btn--white"> ĐĂNG KÝ NGAY</a>
                </div>
            </div>

            <div class="section--promotion">
                <h1 class="title">
                    <strong class="js__active js__promotion_tab" data-target="#promotion-1">
                        <span>Khuyến mãi</span>
                    </strong>
                    <span>|</span>
                    <strong class="js__promotion_tab" data-target="#promotion-2">
                        <span>Sự kiện</span>
                    </strong>
                </h1>
                <div class="container">
                    <div id="promotion-1" class="flexslider js__flexslider_promotion js__promotion_tab_content js__active">
                        <div class="flex-viewport">
                            <ul class="slides">
                                <li data-thumb-alt>
                                    <a href="#">
                                        <img src="images/sale-event/BHD-Star-GoiPhim-TrangYeuThuong-710x320-02.jpg">
                                    </a>
                                </li>
                                <li data-thumb-alt>
                                    <a href="#">
                                        <img src="images/sale-event/1463628861_710x320-1.png">
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- <div id="promotion-2" class="flexslider js__flexslider_promotion js__promotion_tab_content js__active">
                            <div class="flex-viewport">
                                    <ul class="slides">
                                            <li data-thumb-alt>
                                                    <a href="#">
                                                            <img src="images/sale-event/1463628861_710x320-1.png">
                                                    </a>
                                            </li>
                                            <li data-thumb-alt>
                                                    <a href="#">
                                                            <img src="images/sale-event/BHD-Star-GoiPhim-TrangYeuThuong-710x320-02.jpg">
                                                    </a>
                                            </li>
                                    </ul>
                            </div>
                    </div> -->
                </div>
            </div>
        </div>
        <jsp:include page="view_component/footer.jsp"></jsp:include>
    </body>
</html>
