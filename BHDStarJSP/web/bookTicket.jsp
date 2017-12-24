<%-- 
    Document   : bookTicket
    Created on : Dec 24, 2017, 10:20:38 PM
    Author     : Lanh
--%>

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
            ArrayList<Seat> listSeat = (ArrayList<Seat>) request.getAttribute("listSeat");
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
                                    <h3>Người / Ghế</h3>
                                </div>
                                <!-- end header -->
                                <!-- site  -->
                                <div class="lc-main-book-ticket-site">
                                    <div class="book-ticket-item">
                                        <div class="lc-main-book-ticket-site-left">
                                            <p>BHD Star PhamNgocThach | 2A09 | Số ghế: <span>(/120)</span></p>
                                            <p class="book-time">27/11/2017 | 16:15 PM - 18:50 PM</p>
                                        </div>
                                        <div class="lc-main-book-ticket-site-right">
                                            <!-- site book combo  -->
                                            <div class="book-ticket-combo">
                                                <div class="book-ticket-combo-left">
                                                    BHD COMBO(ONLINE)
                                                </div>
                                                <div class="book-ticket-combo-right">
                                                    <span class="icon-book"></span>
                                                    <ul>
                                                        <li class="active-combo-book"><span>0</span></li>
                                                        <li><span>1</span></li>
                                                        <li><span>2</span></li>
                                                        <li><span>3</span></li>
                                                        <li><span>4</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="clear-both"></div>
                                            <div class="space"></div>
                                            <div class="book-ticket-combo">
                                                <div class="book-ticket-combo-left">
                                                    MY COMBO(ONLINE)
                                                </div>
                                                <div class="book-ticket-combo-right">
                                                    <span class="icon-book"></span>
                                                    <ul>
                                                        <li class="active-combo-book-online"><span>0</span></li>
                                                        <li><span>1</span></li>
                                                        <li><span>2</span></li>
                                                        <li><span>3</span></li>
                                                        <li><span>4</span></li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <!-- end site combo book -->
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
                                            <div class="seat-row">
                                                <div class="box-seat standard">A10</div>
                                                <div class="box-seat standard">A9</div>
                                                <div class="box-seat standard">A8</div>
                                                <div class="box-seat standard">A7</div>
                                                <div class="box-seat standard">A6</div>
                                                <div class="box-seat standard">A5</div>
                                                <div class="box-seat standard">A4</div>
                                                <div class="box-seat standard">A3</div>
                                                <div class="box-seat standard">A2</div>
                                                <div class="box-seat standard">A1</div>
                                            </div>
                                            <div class="seat-row">
                                                <div class="box-seat standard">B12</div>
                                                <div class="box-seat standard">B11</div>
                                                <div class="box-seat standard">B10</div>
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
                                            <div class="seat-row">
                                                <div class="box-seat standard">C12</div>
                                                <div class="box-seat standard">C11</div>
                                                <div class="box-seat standard">C10</div>
                                                <div class="box-seat standard disabled">C9</div>
                                                <div class="box-seat standard disabled">C8</div>
                                                <div class="box-seat standard disabled">C7</div>
                                                <div class="box-seat standard disabled">C6</div>
                                                <div class="box-seat standard">C5</div>
                                                <div class="box-seat standard">C4</div>
                                                <div class="box-seat standard">C3</div>
                                                <div class="box-seat standard">C2</div>
                                                <div class="box-seat standard">C1</div>
                                            </div>
                                            <div class="seat-row">
                                                <div class="box-seat standard">D10</div>
                                                <div class="box-seat standard">D9</div>
                                                <div class="box-seat standard">D8</div>
                                                <div class="box-seat standard">D7</div>
                                                <div class="box-seat standard">D6</div>
                                                <div class="box-seat standard">D5</div>
                                                <div class="box-seat standard">D4</div>
                                                <div class="box-seat standard">D3</div>
                                                <div class="box-seat standard">D2</div>
                                                <div class="box-seat standard">D1</div>
                                            </div>
                                            <div class="seat-row">
                                                <div class="box-seat vip">E10</div>
                                                <div class="box-seat vip">E9</div>
                                                <div class="box-seat vip">E8</div>
                                                <div class="box-seat vip">E7</div>
                                                <div class="box-seat vip">E6</div>
                                                <div class="box-seat vip">E5</div>
                                                <div class="box-seat vip">E4</div>
                                                <div class="box-seat vip">E3</div>
                                                <div class="box-seat vip">E2</div>
                                                <div class="box-seat vip">E1</div>
                                            </div>
                                            <div class="seat-row">
                                                <div class="box-seat vip">F12</div>
                                                <div class="box-seat vip">F11</div>
                                                <div class="box-seat vip">F10</div>
                                                <div class="box-seat vip">F9</div>
                                                <div class="box-seat vip">F8</div>
                                                <div class="box-seat vip">F7</div>
                                                <div class="box-seat vip">F6</div>
                                                <div class="box-seat vip">F5</div>
                                                <div class="box-seat vip">F4</div>
                                                <div class="box-seat vip">F3</div>
                                                <div class="box-seat vip">F2</div>
                                                <div class="box-seat vip">F1</div>
                                            </div>
                                            <div class="seat-row">
                                                <div class="box-seat vip">G12</div>
                                                <div class="box-seat vip">G11</div>
                                                <div class="box-seat vip">G10</div>
                                                <div class="box-seat vip">G9</div>
                                                <div class="box-seat vip">G8</div>
                                                <div class="box-seat vip">G7</div>
                                                <div class="box-seat vip">G6</div>
                                                <div class="box-seat vip">G5</div>
                                                <div class="box-seat vip">G4</div>
                                                <div class="box-seat vip">G3</div>
                                                <div class="box-seat vip">G2</div>
                                                <div class="box-seat vip">G1</div>
                                            </div>
                                            <div class="seat-row">
                                                <div class="box-seat vip">H12</div>
                                                <div class="box-seat vip">H11</div>
                                                <div class="box-seat vip">H10</div>
                                                <div class="box-seat vip">H9</div>
                                                <div class="box-seat vip">H8</div>
                                                <div class="box-seat vip">H7</div>
                                                <div class="box-seat vip">H6</div>
                                                <div class="box-seat vip">H5</div>
                                                <div class="box-seat vip">H4</div>
                                                <div class="box-seat vip">H3</div>
                                                <div class="box-seat vip">H2</div>
                                                <div class="box-seat vip">H1</div>
                                            </div>
                                            <div class="seat-row">
                                                <div class="box-seat couple">L12</div>
                                                <div class="box-seat couple">L11</div>
                                                <div class="box-seat couple">L10</div>
                                                <div class="box-seat couple">L9</div>
                                                <div class="box-seat couple">L8</div>
                                                <div class="box-seat couple">L7</div>
                                                <div class="box-seat couple">L6</div>
                                                <div class="box-seat couple">L5</div>
                                                <div class="box-seat couple selected">L4</div>
                                                <div class="box-seat couple selected">L3</div>
                                                <div class="box-seat couple">L2</div>
                                                <div class="box-seat couple">L1</div>
                                            </div>
                                            <div class="seat-row">
                                                <div class="box-seat couple">K12</div>
                                                <div class="box-seat couple">K11</div>
                                                <div class="box-seat couple selected">K10</div>
                                                <div class="box-seat couple selected">K9</div>
                                                <div class="box-seat couple">K8</div>
                                                <div class="box-seat couple">K7</div>
                                                <div class="box-seat couple">K6</div>
                                                <div class="box-seat couple">K5</div>
                                                <div class="box-seat couple">K4</div>
                                                <div class="box-seat couple">K3</div>
                                                <div class="box-seat couple">K2</div>
                                                <div class="box-seat couple">K1</div>
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
                                                        <span>Phòng chiếu:</span>
                                                        <strong>Cinema 1</strong>
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
