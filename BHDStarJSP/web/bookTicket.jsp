<%-- 
    Document   : bookTicket
    Created on : Dec 24, 2017, 10:20:38 PM
    Author     : Lanh
--%>

<%@page import="control.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="dao2.SeatDAO"%>
<%@page import="model.Schedule"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Seat"%>
<%@page import="model.Film"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <link rel="stylesheet" href="css/reset.css" type="text/css" />
        <link rel="stylesheet" href="css/style_LANH.css" type="text/css" />
        <link rel="stylesheet" href="css/responsive.css" type="text/css" />	
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/view_seats_main.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">

    </head>
    <body>
        <jsp:include page="view_component/header.jsp"></jsp:include>
        <%  
            Film film = (Film) request.getAttribute("film");
            Schedule schedule = (Schedule) request.getAttribute("schedule");

            ArrayList<Seat> listSeat = (ArrayList<Seat>) request.getAttribute("listSeat");
            ArrayList<Seat> allSeat = (ArrayList<Seat>) request.getAttribute("allSeat");

            int numSeatFree = 114 - listSeat.size();
            
            SeatDAO seatDAO = new SeatDAO();
        %>     
        <div class="main-container">
            <div class="lc-main">
                <div class="row">
                    <div class="lc-col-main">
                        <!-- main-container -->
                        <div class="lc-main-container">

                            <div class="lc-main-book-ticket" style="margin-top: 90px;">
                                <!-- header -->
                                <div class="lc-main-book-ticket-header">
                                    <h3>Bạn đang chọn phim: <%=film.getName()%></h3>
                                </div>
                                <!-- end header -->
                                <!-- site  -->
                                <div class="lc-main-book-ticket-site">
                                    <div class="book-ticket-item">
                                        <div class="lc-main-book-ticket-site-left">
                                            <p>BHD Star PhamNgocThach | 2A09 </p>
                                            <p class="book-time">Ngay: 27/11/2018 </p>
                                        </div>
                                        <div class="lc-main-book-ticket-site-right">
                                            <div class="book-ticket-combo">
                                                <div class="book-ticket-combo-right">
                                                    <h5 class="book-time">16:15 PM - 18:50 PM</h5>
                                                    <h5 class="book-time"> Số ghế: <span><%=numSeatFree%>/114</span></h5>
                                                </div>
                                            </div>
                                            <div class="clear-both"></div>
                                            <div class="space"></div>
                                        </div>
                                    </div>
                                </div>
                                <!-- end site  -->
                                <!-- seatmap -->
                                <div class="lc-main-book-ticket-seatmap">
                                    <!-- left seatmap -->
                                    <div class="seatmap-left">
                                        <div class="seatmap-title">
                                            <span class="screen"></span>
                                        </div>
                                        <div class="seatmap-row">
                                            <% int dem = 0;
                                                String nameClass = "";
                                                Connection con = DBConnection.getConnection();
                                                for (int i = 1; i <= 10; i++) {
                                            %>
                                            
                                            <div class="seat-row">
                                                
                                                <%  String status = "";
                                                    int isJ = 12;
                                                    if (i == 1 || i == 4 || i == 5) {
                                                        isJ = 10;
                                                    }
                                                    for (int j = 1; j <= isJ; j++) {
                                                        dem = dem + 1;
                                                        if (i <= 4) {
                                                            nameClass = "standard";
                                                        }
                                                        else {
                                                            if (5 <= i && i <= 8) {
                                                            nameClass = "vip";
                                                        }
                                                        else nameClass = "couple";
                                                        }
                                                        for (Seat seat : listSeat) {
                                                            if (dem == seat.getId()){
                                                                status = "disabled";
                                                                System.out.println(seat.getId());
                                                            }
                                                        }
                                                %>
                                                
                                                <div class="box-seat <%=nameClass%> <%=status%>"> <%= seatDAO.getSeat(con, dem).getId()%></div>
                                                
                                                <% status = "";
                                                    }
                                                %>
                                            </div>
                                            <%
                                                }
                                            %>
                                            <div class="seat-row">
                                                <div class="box-seat standard disabled">B12</div>
                                                <div class="box-seat vip">B11</div>
                                                <div class="box-seat couple selected">B10</div>
                                                <div class="box-seat standard">B9</div>
                                                <div class="box-seat standard">B8</div>
                                                <div class="box-seat standard selected">B7</div>
                                                <div class="box-seat standard selected">B6</div>
                                                <div class="box-seat standard selected">B5</div>
                                                <div class="box-seat standard selected">B4</div>
                                                <div class="box-seat standard">B3</div>
                                                <div class="box-seat standard">B2</div>
                                                <div class="box-seat standard">B1</div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end left seatmap  -->
                                    <!-- right seatmap  -->
                                    <div class="seatmap-right">
                                        <div class="seatmap-right-content">
                                            <div class="select-row">
                                                <p>
                                                    <span class="seat-select seat-choose">&nbsp;</span>Đang chọn
                                                </p>
                                            </div>
                                            <div class="select-row">
                                                <p>
                                                    <span class="seat-select seat-choosed">&nbsp;</span>Đã chọn
                                                </p>
                                            </div>
                                            <div class="seatmap-space"></div>
                                            <div class="select-row">
                                                <p>
                                                    <span class="seat-select seat-standard">&nbsp;</span>Thường
                                                </p>
                                            </div>
                                            <div class="select-row">
                                                <p>
                                                    <span class="seat-select seat-vip">&nbsp;</span>VIP
                                                </p>
                                            </div>
                                            <div class="select-row">
                                                <p>
                                                    <span class="seat-select seat-couple">&nbsp;</span>Ghế đôi
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end right seatmap -->
                                </div>
                                <!-- end seatmap -->
                                <!-- bottom -->
                                <div class="lc-main-book-ticket-bottom">
                                    <div class="lc-main-book-ticket-bottom-center">
                                        <div class="lc-main-book-ticket-bottom-prev">
                                            <a href="#" title="">Previous</a>
                                        </div>

                                        <div class="lc-main-book-ticket-bottom-main">
                                            <div class="lc-main-book-ticket-bottom-col col-film-first">
                                                <div class="bottom-img">
                                                    <img src="images/films/BHD-Star-Kingsman-poster-470x700-245x365.jpg" alt="">
                                                </div>
                                                <div class="bottom-content-film">
                                                    <p><%=film.getName()%></p>
                                                    <p><strong>2D</strong></p>
                                                </div>
                                            </div>
                                            <div class="lc-main-book-ticket-bottom-col col-film-secound">
                                                <div class="bottom-content-session">
                                                    <p>
                                                        <span>Rạp chiếu phim:</span>
                                                        <strong>BHD Star Pham Ngoc Thach</strong>
                                                    </p>
                                                </div>
                                                <div class="bottom-content-session">
                                                    <p>
                                                        <span>Ngày:</span>
                                                        <strong>24/11/2017</strong>
                                                    </p>
                                                </div>
                                                <div class="bottom-content-session">
                                                    <p>
                                                        <span>Phòng chiếu: </span>
                                                        <strong><%=schedule.getRoom().getName()%></strong>
                                                    </p>
                                                </div>
                                                <div class="bottom-content-session">
                                                    <p>
                                                        <span>Ghế:</span>
                                                    </p>
                                                    <p><strong>prime B4, B5, B6, B7, L3, L4, K10, K9</strong></p>
                                                </div>
                                            </div>
                                            <div class="lc-main-book-ticket-bottom-col col-film-third">
                                                <div class="bottom-content-price">
                                                    <p>
                                                        <span>Phim:</span>
                                                        <strong>496.000,00 ₫</strong>
                                                    </p>
                                                </div>
                                                <div class="bottom-content-price">
                                                    <p>
                                                        <span class="total">Tổng:</span>
                                                        <strong>496.000,00 ₫</strong>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="lc-main-book-ticket-bottom-next">
                                            <a href="#" title="Thanh toan" style="color: red;">Thanh toán</a>
                                        </div>
                                    </div>

                                </div>
                                <!-- end bottom -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="view_component/footer.jsp"></jsp:include>
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
