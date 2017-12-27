<%-- 
    Document   : dangnhap
    Created on : Dec 24, 2017, 9:40:26 AM
    Author     : DaiPhongPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đăng nhập</title>
        <link rel="stylesheet" type="text/css" href="css/style_LOAN.css">
        <link rel="stylesheet" href="css/style_LANH.css" type="text/css" />
        <link rel="stylesheet" type="text/css" href="css/view_lichchieu_main.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <jsp:include page="view_component/header.jsp"></jsp:include>
            <div class="wrapper">

                <div class="warper-content">
                    <div class="page--member cinema--background">
                        <div class="container" style="margin-top: -20px;">
                            <div class="product--title">
                                <h3 style="color: #ffffff">Đăng ký thành viên</h3>
                            </div>
                            <div class="row bhd-page-register bhd-page-user">
                                <div class="col-md-6">
                                    <div class="widget--right">
                                        <h4 class="title--member" style="color: #ffffff">Đăng nhập</h4>
                                        <div class="member--login">
                                            <form class="form--inside" action="LoginServlet">
                                                <label class="controls">
                                                    <span class="txt--label">Email (*)</span>
                                                    <input type="email" name="em" class="inp--text">
                                                </label>
                                                <label class="controls">
                                                    <span class="txt--label">Password (*)</span>
                                                    <input type="password" name="pa" class="inp--text">
                                                </label>
                                                <div class="clearfix form--last">
                                                    <input class="btn--yolo" type="submit" name="Đăng nhập">
                                                    <a href="#" class="forgot--link"></a>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <h4 class="title--member" style="color: #ffffff">ĐĂNG KÝ MỚI</h4>
                                    <div class="member--register-new">
                                        <form id="bhd-submit-dang-ky" class="form--inside" action="SingUpServlet" method="get">
                                            <input name="bhd_lang" value="vi" type="hidden">
                                            <input name="action" value="dangky" type="hidden">
                                            <label class="controls"><span class="txt--label">Email (*)</span>
                                                <input name="em" value="" class="inp--text" required="" type="email">
                                            </label>
                                            <label class="controls"><span class="txt--label">Mật khẩu (*)</span>
                                                <input name="pa" class="inp--text" required="" type="password">
                                            </label>
                                            <label class="controls"><span class="txt--label">Nhập lại mật khẩu (*)</span>
                                                <input name="confirm" class="inp--text" required="" type="password">
                                            </label>
                                            <label class="controls"><span class="txt--label">Họ và tên (*)</span>
                                                <input value="" name="name" class="inp--text" required="" type="text">
                                            </label>
                                            <label class="controls"><span class="txt--label">Số điện thoại (*)</span>
                                                <input name="phone" class="inp--text" required="" type="tel">
                                            </label>

                                            <div class="controls">
                                                <label class="form--row-first"><span class="txt--label">Địa chỉ</span>
                                                    <input name="address" class="inp--text" type="text">
                                                </label>

                                            </div>
                                            <label class="controls--checkbox bhd-dieu-khoan">
                                                <input id="bhd-dieu-khoan" name="dieukhoan" class="inp--checkbox" required="" type="checkbox">
                                                <span>Tôi đã đọc, hiểu và đồng ý với các <a href="http://www.bhdstar.vn/quy-dinh-thanh-vien/">điều khoản</a></span>
                                            </label>
                                            <div class="form--last">
                                                <input id="bhd-dang-ky" value="ĐĂNG KÝ" class="btn--yolo" type="submit">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        <jsp:include page="view_component/footer.jsp"></jsp:include>
    </body>
</html>
