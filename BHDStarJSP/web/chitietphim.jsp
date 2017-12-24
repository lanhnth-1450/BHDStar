<%-- 
    Document   : chitietphim
    Created on : Dec 23, 2017, 5:29:13 PM
    Author     : DaiPhongPC
--%>

<%@page import="model.Film"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chi tiết phim</title>
        <link rel="stylesheet" type="text/css" href="css/style_LOAN.css">
        <link rel="stylesheet" href="css/style_LANH.css" type="text/css" />
        <link rel="stylesheet" type="text/css" href="css/view_lichchieu_main.css">
        <link rel="stylesheet" type="text/css" href="css/stylevideo.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script type="text/javascript" src="js/chitietphim.js"></script>
    </head>
    <body>
        <%
            Film film = (Film) request.getAttribute("film");
            film.setTrailer(film.getTrailer() + "?enablejsapi=1&controls=0");
//            Film f = (Film) session.getAttribute("film");
            
        %>
        <jsp:include page="view_component/header.jsp"></jsp:include>
            <div id="wrapper">
                <div class="wraper--content">
                    <div class="film--wrapper">
                        <div class="container" style="    margin-left: 90px;">
                            <div class="film--detail-title">
                                <h3>
                                    <a href="index.html">Trang chủ</a>
                                </h3>
                                <span style="margin-left: 15px; margin-right: 15px;">|</span>
                                <h3 class="active">
                                    <a href="*" rel="tag">Phim đang chiếu</a>
                                </h3>
                            </div>
                            <div class="film--detail-content-top">
                                <div class="row">
                                    <div class="col-thubnail-bhd col-md-5" style="margin-left: 40px;">
                                        <a href="#"><img src="<%= film.getPoster()%>" sizes="(max-width: 470px) 100vw, 470px" width="300" height="420"></a>
                                </div>
                                <div class="product--view col-md-7">
                                    <div class="product--name">
                                        <h3><%= film.getName()%></h3>
                                        <span class="film--rating">C</span>
                                    </div>
                                    <div class="film-tech">
                                        <span class="tech--2d">2D</span>
                                    </div>
                                    <div class="film--detail">
                                        <p><%= film.getDes()%></p>
                                    </div>
                                    <span>
                                        <ul class="film--info" >
                                            <li class="films--li">
                                                <span class="col-left">Đạo diễn</span>
                                                <span class="col-right">Peter Landesman</span>
                                            </li>
                                            <li class="films--li">
                                                <span class="col-left">Diễn viên</span>
                                                <span class="col-right">Liam Neeson, Diane Lane, Marton Csokas </span>
                                            </li>
                                            <li class="films--li">
                                                <span class="col-left">Vote</span>
                                                <span class="col-right"><%= film.getVote()%> </span>
                                            </li>
                                            <li class="films--li">
                                                <span class="col-left">Thể loại</span>
                                                <span class="col-right">Lịch sử</span>
                                            </li>
                                            <li class="films--li">
                                                <span class="col-left">Khởi chiếu</span>
                                                <span class="col-right"><%= film.getRealeaseDate()%></span>
                                            </li>
                                            <li class="films--li">
                                                <span class="col-left">Thời lượng</span>
                                                <span class="col-right"><%= film.getRunningTime()%> phút</span>
                                            </li>
                                            <li class="films--li">
                                                <span class="col-left">Ngôn ngữ</span>
                                                <span class="col-right">Tiếng Anh với phụ đề tiếng Việt</span>
                                            </li>
                                        </ul>
                                    </span>
                                    <div class="lsbuton">
                                        <a class="btn--green" id="btn--trailer" onclick="clicktrailer()">
                                            <i class="fa fa-ticket"></i>
                                            Trailer
                                        </a>
                                        <a href="#" class="btn--green" style="margin-left: 40px;">
                                            <i class="fa fa-ticket"></i>
                                            Đặt vé
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="mfp-content" onclick="clicktrailer()">
                                <div class="mfp-iframe-scaler"  style="display: none;" id="frame-trailer">
                                    <button title="Close (Esc)" type="button"  class="mfp-close">×</button>
                                    <iframe class="mfp-iframe" 
                                            src="filmtrailer.jsp" allowfullscreen="" frameborder="0"></iframe>
                                </div>
                            </div>
                        </div>
                        <!-- main-container -->
                        <div class="lc-main-container">
                            <!-- showtime -->
                            <div class="lc-main-showtimes-title">
                                <div role="tabpanel" class="lc-main-showtimes-tabs">
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div role="tabpanel" class="tab-pane active" id="lichchieu">
                                            <!-- lich  -->
                                            <div class="lc-main-showtimes">
                                                <div role="tabpanel">
                                                    <!-- Nav tabs -->
                                                    <!-- tab child -->
                                                    <ul class="nav nav-tabs nav-showtimes-child" role="tablist" style="background-color: #d2e2cb;">
                                                        <li role="presentation" class="active">
                                                            <a href="#theater1" aria-controls="theater1" role="tab" data-toggle="tab">
                                                                <span>09</span>
                                                                <em>Tue</em>
                                                                <strong>26</strong>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                    <!-- end tab child -->
                                                    <!-- Tab panes  showtimes film-->
                                                    <div class="tab-content tabs-showtimes">
                                                        <div role="tabpanel" class="tab-pane active" id="theater1" style="background-color: #25313c;">
                                                            <!-- film -->
                                                            <div class="lc-main-showtimes-film">
                                                                <div class="lc-main-showtimes-film-left">
                                                                    <!-- poster -->
                                                                    <div class="lc-main-showtimes-film-poster">
                                                                        <a href="#" title="Amityville: Quỷ Dữ Thức Tỉnh">
                                                                            <img style="width: 185px;"
                                                                                 src="<%= film.getPoster()%>" alt="Amityville: Quỷ Dữ Thức Tỉnh">
                                                                        </a>
                                                                    </div>
                                                                    <!-- end poster -->
                                                                </div>
                                                                <div class="lc-main-showtimes-film-right">
                                                                    <div class="showtimes-film-all">
                                                                        <!-- time list -->
                                                                        <ul class="time_list">

                                                                        </ul>

                                                                        <!-- end time list -->
                                                                    </div>

                                                                    <div class="showtimes-film-tech">
                                                                        <strong>2D Phụ Đề Việt</strong>
                                                                    </div>
                                                                    <div class="showtimes-film-all">
                                                                        <!-- time list -->
                                                                        <ul>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <span>14:20 PM</span>
                                                                                    <br>
                                                                                    <span>89 ghế trống</span>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <span>15:20 PM</span>
                                                                                    <br>
                                                                                    <span>89 ghế trống</span>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <span>16:20 PM</span>
                                                                                    <br>
                                                                                    <span>89 ghế trống</span>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <span>17:20 PM</span>
                                                                                    <br>
                                                                                    <span>89 ghế trống</span>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <span>18:20 PM</span>
                                                                                    <br>
                                                                                    <span>89 ghế trống</span>
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                        <!-- end time list -->
                                                                    </div>
                                                                    <div class="clear-both"></div>
                                                                    <div class="showtimes-film-tech">
                                                                        <strong>3D Phụ Đề Việt</strong>
                                                                    </div>
                                                                    <div class="showtimes-film-all">
                                                                        <!-- time list -->
                                                                        <ul>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <span>14:20 PM</span>
                                                                                    <br>
                                                                                    <span>89 ghế trống</span>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <span>15:20 PM</span>
                                                                                    <br>
                                                                                    <span>89 ghế trống</span>
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                        <!-- end time list -->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="clear-both"></div>
                                                            <hr>
                                                            <!-- end film -->
                                                        </div>
                                                        <div role="tabpanel" class="tab-pane" id="theater2" style="background-color: aliceblue;">
                                                            <div class="lc-main-showtimes-film">
                                                                <div class="lc-main-showtimes-film-left">
                                                                    <!-- poster -->
                                                                    <div class="lc-main-showtimes-film-poster">
                                                                        <a href="#" title="IT: Chú Hề Ma Quái">
                                                                            <img src="images/films/BHD-Star-Kingsman-poster-470x700-245x365.jpg" alt="IT: Chú Hề Ma Quái">
                                                                        </a>
                                                                    </div>
                                                                    <!-- end poster -->
                                                                </div>
                                                                <div class="lc-main-showtimes-film-right">
                                                                    <div class="showtimes-film-tech">
                                                                        <strong>2D Phụ Đề Việt</strong>
                                                                    </div>
                                                                    <div class="showtimes-film-all">
                                                                        <!-- time list -->
                                                                        <ul>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <span>14:20 PM</span>
                                                                                    <br>
                                                                                    <span>89 ghế trống</span>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <span>15:20 PM</span>
                                                                                    <br>
                                                                                    <span>89 ghế trống</span>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <span>16:20 PM</span>
                                                                                    <br>
                                                                                    <span>89 ghế trống</span>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <span>17:20 PM</span>
                                                                                    <br>
                                                                                    <span>89 ghế trống</span>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <span>18:20 PM</span>
                                                                                    <br>
                                                                                    <span>89 ghế trống</span>
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                        <!-- end time list -->
                                                                    </div>
                                                                    <div class="clear-both"></div>
                                                                    <div class="showtimes-film-tech">
                                                                        <strong>3D Phụ Đề Việt</strong>
                                                                    </div>
                                                                    <div class="showtimes-film-all">
                                                                        <!-- time list -->
                                                                        <ul>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <span>14:20 PM</span>
                                                                                    <br>
                                                                                    <span>89 ghế trống</span>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <span>15:20 PM</span>
                                                                                    <br>
                                                                                    <span>89 ghế trống</span>
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                        <!-- end time list -->
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="clear-both"></div>
                                                            <hr>
                                                            <!-- end film -->
                                                        </div>
                                                    </div>
                                                    <!-- end showtimes film -->
                                                </div>
                                            </div>
                                            <!-- end lich -->
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end showtime -->

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <style type="text/css">
            .red {
                border: 1px solid red!important;
                cursor:not-allowed!important;
            }
            .green {
                border: 1px solid green!important;
            }
        </style>
        <script src="js/jquery-1.10.2.min.js"></script>
        <script>
                                $(document).ready(function () {
                                    function createDivAtrr(code, attrName, attrValue) {
                                        return $(document.createElement(code)).attr(attrName, attrValue);
                                    }

                                    function createSuatChieu(ten_phim, ngay_chieu, gio_chieu, so_ghe_trong) {
                                        console.log(createDivAtrr('a', 'href', '#'));
                                        var li = $(document.createElement('li'));
                                        var a = createDivAtrr('a', 'href', 'view_seats.html');
                                        var span1 = $(document.createElement('span')).text(gio_chieu);
                                        var br = $(document.createElement('br'));
                                        var span2 = $(document.createElement('span')).text(so_ghe_trong + ' ghế trống');
                                        console.log(span2);
                                        a.append(span1, br, span2);
                                        li.append(a);
                                        return li;
                                    }

                                    $(window).load(function () {

                                        fetch('kingmans.json')
                                                .then((resp) => resp.json())
                                                .then(function (data) {
                                                    let all = data;
                                                    $.each(all, function (key, value) {
                                                        var li = createSuatChieu(
                                                                value.ten_phim,
                                                                value.ngay_chieu,
                                                                value.gio_chieu,
                                                                value.so_ghe_trong,
                                                                );
                                                        if (value.status == "no") {
                                                            li.addClass('red');
                                                            li.children().css("cursor", "not-allowed");
                                                        } else {
                                                            li.addClass('green');
                                                        }
                                                        $('.time_list').append(li);
                                                    });
                                                }).catch(function (error) {
                                            console.log(error);
                                        });
                                    });

                                });
        </script>
        <jsp:include page="view_component/footer.jsp"></jsp:include>
    </body>
</html>
