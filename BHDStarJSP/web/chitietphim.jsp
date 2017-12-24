<%-- 
    Document   : chitietphim
    Created on : Dec 23, 2017, 5:29:13 PM
    Author     : DaiPhongPC
--%>

<%@page import="control.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="DAO.SeatDAO"%>
<%@page import="model.Seat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="model.Schedule"%>
<%@page import="java.sql.Date"%>
<%@page import="java.util.ArrayList"%>
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
        
    </head>
    <body>
        <%
            Connection con = DBConnection.getConnection();
            SeatDAO seatDAO = new SeatDAO();

            Film film = (Film) request.getAttribute("film");
            film.setTrailer(film.getTrailer() + "?enablejsapi=1&controls=0");

            ArrayList<Date> listDate = (ArrayList<Date>) request.getAttribute("listDate");
            ArrayList<Schedule> listSchedule_1 = (ArrayList<Schedule>) request.getAttribute("listSchedule_1");
            ArrayList<Schedule> listSchedule_2 = (ArrayList<Schedule>) request.getAttribute("listSchedule_2");
            ArrayList<Schedule> listSchedule_3 = (ArrayList<Schedule>) request.getAttribute("listSchedule_3");
            ArrayList<Schedule> listSchedule = (ArrayList<Schedule>) request.getAttribute("listSchedule_1");
            ArrayList<Seat> listSeat = new ArrayList<Seat>();
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
                                                        <% if (listDate != null) {
                                                                String active = "active";
                                                                SimpleDateFormat ft = new SimpleDateFormat("E");
                                                                for (Date date : listDate) {
                                                                    String thu = ft.format(date);
                                                                    int thang = date.getMonth();
                                                                    int ngay = date.getDate();
                                                        %>
                                                        <li role="presentation" class="<%=active%>">
                                                            <a href="#<%=thu + ngay%>" aria-controls="<%=thu + ngay%>" role="tab" data-toggle="tab">
                                                                <span><%= thang%></span>
                                                                <em><%= thu%></em>
                                                                <strong><%= ngay%></strong>
                                                            </a>
                                                        </li>
                                                        <% active = "";
                                                                }
                                                            } %>
                                                    </ul>
                                                    <!-- end tab child -->
                                                    <!-- Tab panes  showtimes film-->
                                                    <div class="tab-content tabs-showtimes">
                                                        <% for (int i = 0; i <= 6; i++) {
                                                                String active_1 = "active";
                                                                SimpleDateFormat ft = new SimpleDateFormat("E");
                                                                String thu = ft.format(listDate.get(i));
                                                                int ngay = listDate.get(i).getDay();
                                                                int thang = listDate.get(i).getMonth();
                                                        %>
                                                        <div role="tabpanel" class="tab-pane <%= active_1%>" id="<%=thu + ngay%>" style="background-color: #25313c;">

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
                                                                    <%
                                                                        if (i <= 2) {
                                                                            if (i == 0) {
                                                                                listSchedule = listSchedule_1;
                                                                            }
                                                                            if (i == 1) {
                                                                                listSchedule = listSchedule_2;
                                                                            }
                                                                            if (i == 2) {
                                                                                listSchedule = listSchedule_3;
                                                                            }
                                                                    %>
                                                                    <div class="showtimes-film-tech">
                                                                        <strong>2D Phụ Đề Việt</strong>
                                                                    </div>
                                                                    <div class="showtimes-film-all">
                                                                        <!-- time list -->
                                                                        <ul class="time_list">
                                                                            <%
                                                                                for (Schedule schedule : listSchedule) {
                                                                                listSeat = seatDAO.getNumberSeated(con, schedule.getId());
                                                                            %>
                                                                            <li>
                                                                                <a href="BookTicketServlet?film_id=<%=film.getId()%>&schedule_id=<%=schedule.getId()%>">
                                                                                    <span><%=schedule.getTime()%></span>
                                                                                    <br>
                                                                                    <span>Số ghế trống: <%= listSeat.size()%></span>
                                                                                </a>
                                                                            </li>
                                                                            <% listSeat = new ArrayList<Seat>(); }
                                                                            %>

                                                                        </ul>
                                                                        <!-- end time list -->
                                                                    </div>
                                                                    <% } else {%>
                                                                    <p>Hiện chưa có lịch chiếu cho  ngày này</p>    
                                                                    <% }%>
                                                                </div>
                                                            </div>
                                                            <div class="clear-both"></div>
                                                            <hr>
                                                            <!-- end film -->
                                                        </div>

                                                        <%  active_1 = "";
                                                            }
                                                        %>   
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
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="js/chitietphim.js"></script>
        <jsp:include page="view_component/footer.jsp"></jsp:include>
    </body>
</html>
