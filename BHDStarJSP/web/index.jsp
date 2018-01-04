<%-- 
    Document   : index
    Created on : Nov 9, 2017, 4:21:00 PM
    Author     : Lanh
--%>

<%@page import="control.DBConnection"%>
<%@page import="dao.FilmDAO"%>
<%@page import="model.Client"%>
<%@page import="model.User"%>
<%@page import="java.sql.Connection"%>
<%@page import="model.Film"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <%
            Connection con = DBConnection.getConnection();
            FilmDAO filmDAO = new FilmDAO();
            ArrayList<Film> listFilm = filmDAO.getListFilm(con);
            Client c = null;
            try {
                c = (Client) request.getAttribute("client");
            } catch (Exception e) {
                c = null;
            }
        %>
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

        <div class="wrapper">
            <div class="main_header fixed">
                <div class="main_header_innor">
                    <div id="menu"></div>
                    <div id="header">
                        <div class="header--top">
                            <a href="index.jsp" class="logo">
                                <img alt="" class="logo" src="images/logo.png">
                            </a>
                            <ul class="list--social">
                                <li>
                                    <a href="#">
                                        <img alt="fb_bhd" src="images/fb_logo.png">
                                    </a>
                                </li>
                                <li>
                                    <a href="lichchieu.html">
                                        <img alt="fb_bhd" src="images/lc.png">
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img alt="fb_bhd" src="images/mvtp.png">
                                    </a>
                                </li>
                                <li>
                                    <a href="rap.html">
                                        <img alt="fb_bhd" src="images/mvtr.png">
                                    </a>
                                </li>
                            </ul>
                            <div class="language">
                                <a class="active" href="#">VN</a>
                                <a class="not-active" href="#"> | EN</a>
                            </div>
                            <a href="" class="hotline">
                                <span>
                                    <img src="images/phone.png" alt="hotline_bhd">:028 62 670 670
                                </span>
                            </a>
                            <div class="header--right">
                                <div class="dang-ki">

                                    <% if (c != null) {%>
                                    <% if (c.getAva() == null) {%>
                                    <img src="images/avatar.png" width="0px" height="20px">

                                    <%} else {%>
                                    <img src="<%=c.getAva()%>" width="0px" height="20px">
                                    <%}%>
                                    <a href="#" style="color: darkgreen; display: inline-block;"><%=c.getName()%></a>
                                    <%} else {%>
                                    <img src="images/avatar.png" width="0px" height="20px">
                                    <a href="dangnhap.jsp" style="color: darkgreen; display: inline-block;">Đăng ký</a>
                                    <%}%>


                                </div>
                                <div class="top-search-form">
                                    <form action="">
                                        <input type="text" id="search" placeholder="Search.." onkeyup="showResult(this.value)">

                                    </form>
                                    <p><span id="resultSearchFilm"> </span></p>
                                    <div class="result" style="display: none" id="resultSearchFilm">
                                        <ul>
                                            <li>
                                                <a href="#">Siêu bão địa cầu Siêu bão địa cầu</a>
                                                <a href="#">Siêu bão địa cầu</a>
                                                <a href="#">Siêu bão địa cầu</a>
                                                <a href="#">Siêu bão địa cầu</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <img src="images/line-header1.png" alt="bgmenu" class="line-header">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="view_component/slide.jsp"></jsp:include>

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
                                            <a href="DetailFilmServlet?film_id=<%= listFilm.get(i).getId()%>">
                                                <img src="<%=listFilm.get(i).getPoster()%>">
                                            </a>
                                            <a href="DetailFilmServlet?film_id=<%= listFilm.get(i).getId()%>">
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

                </div>
            </div>
        </div>
        <jsp:include page="view_component/footer.jsp"></jsp:include>
        <script>
            function showResult(str)
            {
            if (str.length == 0) {
            document.getElementById("resultSearchFilm").innerHTML = "";
            return;
            } else {
            var xmlHttp = new XMLHttpRequest();
            xmlHttp.onreadystatechange() = function() {
            if (xmlHttp.readyState == 4 && xmlHttp.status = 200) {
            document.getElementById("resultSearchFilm").innerHTML = xmlHttp.responseText;
            }
            }
            xmlHttp.open("GET", "SearchFilmServlet?q=" + str, true);
            xmlHttp.send();
            }

            }
        </script>
    </body>
</html>
