<%-- 
    Document   : header
    Created on : Nov 9, 2017, 5:05:54 PM
    Author     : Lanh
--%>

<%@page import="model.Client"%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body class="home blog">
        <% String name;
            try {
//                name = request.getAttribute("user").toString();
                name = "loanxu";

            } catch (Exception e) {
                name = null;
            }
        %>
        <div class="wrapper" style="z-index: 99999">
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
                                <!-- <a class="top--link" href="#" target="_blank">
                                        <img src="images/bhdstar-member.png">
                                </a>
                                <a class="top--link" href="#" target="_blank">
                                        <img src="images/bhdstar-member.png">
                                </a>
                                <a class="top--link" href="#" target="_blank">
                                        <img src="images/bhdstar-member.png">
                                </a> -->
                                <div class="dang-ki">
                                    <img src="images/avatar.png" width="0px" height="20px">
                                    <% if (name!= null) {%>
                                    <a href="#" style="color: darkgreen; display: inline-block;"><%=name%></a>
                                    <%} else {%>
                                    <a href="dangnhap.jsp" style="color: darkgreen; display: inline-block;">Đăng ký</a>
                                    <%}%>


                                </div>
                                <div class="top-search-form">
                                    <form  name="vinform">
                                        <input type="text" id="search" name="name" placeholder="Search .." onkeyup="searchInfo()">
                                        <ul id="myUL" class="showResult" style="display: block;">
                                            <li><a href="#">Adele</a></li>
                                        </ul> 
                                    </form>
                                    <p><span id="mylocation"> </span></p>
                                </div>
                                <img src="images/line-header1.png" alt="bgmenu" class="line-header">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <script type="text/javascript">

            $(document).ready(function () {

                $('#search').blur(function () {

                    var name = $('#yourname').val();

                    $.ajax({

                        type: "GET",

                        url: "GetFilmServlet",

                        data: {name: name},

                        success: function (result) {

                            $('#myUL').htnl(result);

                        }

                    });

                });

            });

        </script>
    </body>
</html>
