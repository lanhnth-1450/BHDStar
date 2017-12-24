<%-- 
    Document   : LoginCineme
    Created on : Dec 24, 2017, 1:25:28 AM
    Author     : DaiPhongPC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <link rel="stylesheet" href="css/reset.css" type="text/css" />
         <link rel="stylesheet" type="text/css" href="css/style_LOAN.css">
        <link rel="stylesheet" href="css/style_LANH.css" type="text/css" />
        <!-- <link rel="stylesheet" href="css/style_bhdstar.css" type="text/css" /> -->
    </head>
    <body>

                <div class="warper-content">
                    <div class="page--member cinema--background">
                        <div class="container">
                            <div class="product--title">
                                <h3 style="color: #ffffff">Đăng ký thành viên</h3>
                            </div>
                            <div class="row bhd-page-register bhd-page-user">
                                <div class="col-md-6">
                                    <div class="widget--right">
                                        <h4 class="title--member" style="color: #ffffff">Đăng nhập</h4>
                                        <div class="member--login">
                                            <form class="form--inside">
                                                <label class="controls">
                                                    <span class="txt--label">Email (*)</span>
                                                    <input type="email" name="email" class="inp--text">
                                                </label>
                                                <label class="controls">
                                                    <span class="txt--label">Password (*)</span>
                                                    <input type="password" name="password" class="inp--text">
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
                                        <form id="bhd-submit-dang-ky" class="form--inside" action="http://www.bhdstar.vn/wp-admin/admin-post.php" method="post">
                                            <input name="bhd_lang" value="vi" type="hidden">
                                            <input name="action" value="dangky" type="hidden">
                                            <label class="controls"><span class="txt--label">Email (*)</span>
                                                <input name="email" value="" class="inp--text" required="" type="email">
                                            </label>
                                            <label class="controls"><span class="txt--label">Mật khẩu (*)</span>
                                                <input name="password" class="inp--text" required="" type="password">
                                            </label>
                                            <label class="controls"><span class="txt--label">Nhập lại mật khẩu (*)</span>
                                                <input name="confirm_password" class="inp--text" required="" type="password">
                                            </label>
                                            <label class="controls"><span class="txt--label">Họ (*)</span>
                                                <input value="" name="first_name" class="inp--text" required="" type="text">
                                            </label>
                                            <label class="controls"><span class="txt--label">Tên (*)</span>
                                                <input value="" name="last_name" class="inp--text" required="" type="text">
                                            </label>
                                            <label class="controls"><span class="txt--label">Số điện thoại (*)</span>
                                                <input name="phone" class="inp--text" required="" type="tel">
                                            </label>
                                            <label class="controls"><span class="txt--label">Giới tính (*)</span>
                                                <select name="gender" class="js__heapbox select2-hidden-accessible" data-placeholder="Chọn" required="" tabindex="-1" aria-hidden="true">
                                                    <option value="male">Nam</option>
                                                    <option value="female">Nữ</option>
                                                </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 63px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-gender-nm-container"><span class="select2-selection__rendered" id="select2-gender-nm-container" title="Nam">Nam</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span>
                                                    </span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                            </label>
                                            <label class="controls"><span class="txt--label">Sinh nhật</span>
                                                <span class="txt--label">Sinh nhật</span>
                                                <select name="birthday_day" class="js__heapbox bt_ok select2-hidden-accessible" required="" tabindex="-1" aria-hidden="true">
                                                    <option selected="selected" value="01">01</option>
                                                    <option value="02">02</option>
                                                    <option value="03">03</option>
                                                    <option value="04">04</option>
                                                    <option value="05">05</option>
                                                    <option value="06">06</option>
                                                    <option value="07">07</option>
                                                    <option value="08">08</option>
                                                    <option value="09">09</option>
                                                    <option value="10">10</option>
                                                    <option value="11">11</option>
                                                    <option value="12">12</option>
                                                    <option value="13">13</option>
                                                    <option value="14">14</option>
                                                    <option value="15">15</option>
                                                    <option value="16">16</option>
                                                    <option value="17">17</option>
                                                    <option value="18">18</option>
                                                    <option value="19">19</option>
                                                    <option value="20">20</option>
                                                    <option value="21">21</option>
                                                    <option value="22">22</option>
                                                    <option value="23">23</option>
                                                    <option value="24">24</option>
                                                    <option value="25">25</option>
                                                    <option value="26">26</option>
                                                    <option value="27">27</option>
                                                    <option value="28">28</option>
                                                    <option value="29">29</option>
                                                    <option value="30">30</option>
                                                    <option value="31">31</option>
                                                </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 49px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-birthday_day-3g-container"><span class="select2-selection__rendered" id="select2-birthday_day-3g-container" title="01">01</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span>
                                                    </span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                                <select name="birthday_month" class="js__heapbox bt_ok select2-hidden-accessible" required="" tabindex="-1" aria-hidden="true">
                                                    <option selected="selected" value="01">01</option>
                                                    <option value="02">02</option>
                                                    <option value="03">03</option>
                                                    <option value="04">04</option>
                                                    <option value="05">05</option>
                                                    <option value="06">06</option>
                                                    <option value="07">07</option>
                                                    <option value="08">08</option>
                                                    <option value="09">09</option>
                                                    <option value="10">10</option>
                                                    <option value="11">11</option>
                                                    <option value="12">12</option>
                                                </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 49px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-birthday_month-s8-container"><span class="select2-selection__rendered" id="select2-birthday_month-s8-container" title="01">01</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span>
                                                    </span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                                <select name="birthday" class="js__heapbox bt_ok select2-hidden-accessible" required="" tabindex="-1" aria-hidden="true">
                                                    <option value="2016">2016</option>
                                                    <option value="2015">2015</option>
                                                    <option value="2014">2014</option>
                                                    <option value="2013">2013</option>
                                                    <option value="2012">2012</option>
                                                    <option value="2011">2011</option>
                                                    <option value="2010">2010</option>
                                                    <option value="2009">2009</option>
                                                    <option value="2008">2008</option>
                                                    <option value="2007">2007</option>
                                                    <option value="2006">2006</option>
                                                    <option value="2005">2005</option>
                                                    <option value="2004">2004</option>
                                                    <option value="2003">2003</option>
                                                    <option value="2002">2002</option>
                                                    <option value="2001">2001</option>
                                                    <option value="2000">2000</option>
                                                    <option value="1999">1999</option>
                                                    <option value="1998">1998</option>
                                                    <option value="1997">1997</option>
                                                    <option value="1996">1996</option>
                                                    <option value="1995">1995</option>
                                                    <option value="1994">1994</option>
                                                    <option value="1993">1993</option>
                                                    <option value="1992">1992</option>
                                                    <option value="1991">1991</option>
                                                    <option value="1990">1990</option>
                                                    <option value="1989">1989</option>
                                                    <option value="1988">1988</option>
                                                    <option value="1987">1987</option>
                                                    <option value="1986">1986</option>
                                                    <option value="1985">1985</option>
                                                    <option value="1984">1984</option>
                                                    <option value="1983">1983</option>
                                                    <option value="1982">1982</option>
                                                    <option value="1981">1981</option>
                                                    <option value="1980">1980</option>
                                                    <option value="1979">1979</option>
                                                    <option value="1978">1978</option>
                                                    <option value="1977">1977</option>
                                                    <option value="1976">1976</option>
                                                    <option value="1975">1975</option>
                                                    <option value="1974">1974</option>
                                                    <option value="1973">1973</option>
                                                    <option value="1972">1972</option>
                                                    <option value="1971">1971</option>
                                                    <option value="1970">1970</option>
                                                    <option value="1969">1969</option>
                                                    <option value="1968">1968</option>
                                                    <option value="1967">1967</option>
                                                    <option value="1966">1966</option>
                                                    <option value="1965">1965</option>
                                                    <option value="1964">1964</option>
                                                    <option value="1963">1963</option>
                                                    <option value="1962">1962</option>
                                                    <option value="1961">1961</option>
                                                    <option value="1960">1960</option>
                                                    <option value="1959">1959</option>
                                                    <option value="1958">1958</option>
                                                    <option value="1957">1957</option>
                                                    <option value="1956">1956</option>
                                                    <option value="1955">1955</option>
                                                    <option value="1954">1954</option>
                                                    <option value="1953">1953</option>
                                                    <option value="1952">1952</option>
                                                    <option value="1951">1951</option>
                                                    <option value="1950">1950</option>
                                                    <option value="1949">1949</option>
                                                    <option value="1948">1948</option>
                                                    <option value="1947">1947</option>
                                                    <option value="1946">1946</option>
                                                    <option value="1945">1945</option>
                                                    <option value="1944">1944</option>
                                                    <option value="1943">1943</option>
                                                    <option value="1942">1942</option>
                                                    <option value="1941">1941</option>
                                                </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 66px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-birthday-1v-container"><span class="select2-selection__rendered" id="select2-birthday-1v-container" title="2016">2016</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span>
                                                    </span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                                <div class="clear"></div>
                                            </label>
                                            <div class="controls">
                                                <label class="form--row-first"><span class="txt--label">Địa chỉ</span>
                                                    <input name="address" class="inp--text" type="text">
                                                </label>
                                                <div class="form--row-last">
                                                    <select name="city" class="js__heapbox select2-hidden-accessible" data-placeholder="Thành Phố" tabindex="-1" aria-hidden="true">
                                                        <option value="Hà Nội">Hà Nội</option>
                                                        <option value="Hà Giang">Hà Giang</option>
                                                        <option value="Cao Bằng">Cao Bằng</option>
                                                        <option value="Bắc Kạn">Bắc Kạn</option>
                                                        <option value="Tuyên Quang">Tuyên Quang</option>
                                                        <option value="Lào Cai">Lào Cai</option>
                                                        <option value="Điện Biên">Điện Biên</option>
                                                        <option value="Lai Châu">Lai Châu</option>
                                                        <option value="Sơn La">Sơn La</option>
                                                        <option value="Yên Bái">Yên Bái</option>
                                                        <option value="Hòa Bình">Hòa Bình</option>
                                                        <option value="Thái Nguyên">Thái Nguyên</option>
                                                        <option value="Lạng Sơn">Lạng Sơn</option>
                                                        <option value="Quảng Ninh">Quảng Ninh</option>
                                                        <option value="Bắc Giang">Bắc Giang</option>
                                                        <option value="Phú Thọ">Phú Thọ</option>
                                                        <option value="Vĩnh Phúc">Vĩnh Phúc</option>
                                                        <option value="Bắc Ninh">Bắc Ninh</option>
                                                        <option value="Hải Dương">Hải Dương</option>
                                                        <option value="Hải Phòng">Hải Phòng</option>
                                                        <option value="Hưng Yên">Hưng Yên</option>
                                                        <option value="Thái Bình">Thái Bình</option>
                                                        <option value="Hà Nam">Hà Nam</option>
                                                        <option value="Nam Định">Nam Định</option>
                                                        <option value="Ninh Bình">Ninh Bình</option>
                                                        <option value="Thanh Hóa">Thanh Hóa</option>
                                                        <option value="Nghệ An">Nghệ An</option>
                                                        <option value="Hà Tĩnh">Hà Tĩnh</option>
                                                        <option value="Quảng Bình">Quảng Bình</option>
                                                        <option value="Quảng Trị">Quảng Trị</option>
                                                        <option value="Thừa Thiên Huế">Thừa Thiên Huế</option>
                                                        <option value="Đà Nẵng">Đà Nẵng</option>
                                                        <option value="Quảng Nam">Quảng Nam</option>
                                                        <option value="Quảng Ngãi">Quảng Ngãi</option>
                                                        <option value="Bình Định">Bình Định</option>
                                                        <option value="Phú Yên">Phú Yên</option>
                                                        <option value="Khánh Hòa">Khánh Hòa</option>
                                                        <option value="Ninh Thuận">Ninh Thuận</option>
                                                        <option value="Bình Thuận">Bình Thuận</option>
                                                        <option value="Kon Tum">Kon Tum</option>
                                                        <option value="Gia Lai">Gia Lai</option>
                                                        <option value="Đắk Lắk">Đắk Lắk</option>
                                                        <option value="Đắk Nông">Đắk Nông</option>
                                                        <option value="Lâm Đồng">Lâm Đồng</option>
                                                        <option value="Bình Phước">Bình Phước</option>
                                                        <option value="Tây Ninh">Tây Ninh</option>
                                                        <option value="Bình Dương">Bình Dương</option>
                                                        <option value="Đồng Nai">Đồng Nai</option>
                                                        <option value="Bà Rịa - Vũng Tàu">Bà Rịa - Vũng Tàu</option>
                                                        <option selected="selected" value="Hồ Chí Minh">Hồ Chí Minh</option>
                                                        <option value="Long An">Long An</option>
                                                        <option value="Tiền Giang">Tiền Giang</option>
                                                        <option value="Bến Tre">Bến Tre</option>
                                                        <option value="Trà Vinh">Trà Vinh</option>
                                                        <option value="Vĩnh Long">Vĩnh Long</option>
                                                        <option value="Đồng Tháp">Đồng Tháp</option>
                                                        <option value="An Giang">An Giang</option>
                                                        <option value="Kiên Giang">Kiên Giang</option>
                                                        <option value="Cần Thơ">Cần Thơ</option>
                                                        <option value="Hậu Giang">Hậu Giang</option>
                                                        <option value="Sóc Trăng">Sóc Trăng</option>
                                                        <option value="Bạc Liêu">Bạc Liêu</option>
                                                        <option value="Cà Mau">Cà Mau</option>
                                                    </select><span class="select2 select2-container select2-container--default" dir="ltr" style="width: 148px;"><span class="selection"><span class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true" aria-expanded="false" tabindex="0" aria-labelledby="select2-city-gd-container"><span class="select2-selection__rendered" id="select2-city-gd-container" title="Hồ Chí Minh">Hồ Chí Minh</span><span class="select2-selection__arrow" role="presentation"><b role="presentation"></b></span></span>
                                                        </span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                                </div>
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

    </body>
</html>
