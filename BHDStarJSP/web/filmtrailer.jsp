<%-- 
    Document   : filmtrailer
    Created on : Dec 24, 2017, 12:25:54 AM
    Author     : DaiPhongPC
--%>

<%@page import="model.Film"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <%
            String linktrailer = request.getParameter("link_trailer");
            System.out.println(linktrailer);
        %>
        <title><%=linktrailer%></title>
        <link rel="stylesheet" type="text/css" href="css/stylevideo.css">
    </head>

    <body>
        <%
            //      String linktrailer= request.getParameter("link_trailer");
            //     System.out.println(linktrailer);
%>
        <script type="text/javascript" src="js/video_trailer_1.js"></script>
            <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <script>
            $(function () {
                $(document).on('click', function (e) {
                   if(e.target.id!=""){
                     
                   }
                   else{
                       stopVideo();
                      parent.clicktrailer();
                   }

                })
            });

        </script>

        <div class="container">
            <div class="player">
                <iframe id="video--view" width="640" height="360" src="<%= linktrailer + "?enablejsapi=1&controls=0"%>" frameborder="0" style="border: solid 4px #37474F"></iframe>
            </div>
            <div class="controls">
                <div class="process">
                    <progress id="progress-bar" value="0" min="0" max="100" onclick="onclickproresbar()">0% played</progress>
                </div>
                <div class="list--button">
                    <div class="view--left">
                        <button id="btnlowmotion" class="slow" onclick="slowspeed()"> Slow</button>
                        <button id="btnfastmotion" class="fast" onclick="fastspeed()"> Fast</button>
                        <button id="btnpreview" class="preview" onclick="previewvideo()"> Preview</button>
                        <button id="btnplay" class="play" onclick="playvideo()">Play</button>
                        <div class="view--time">
                            <h5 id="curentime">00:00</h5>
                            <h5>/</h5>
                            <h5 id="durationtime">00:00</h5>
                        </div>
                    </div>
                    <div class="view--right">
                        <div class="process-volune">
                            <button id="btnvolue" class="volune" onclick="changeVolume()"> 0% player</button>
                            <progress id="progress-volune" value="100" min="1" max="100" onclick="onclickproresbar()">0% played</progress>
                        </div>
                        <button id="btnfullscreen" class="fullscreen" onclick="fullscreen()"> Full Screen</button>
                    </div>
                </div>
            </div>
             <button title="Close (Esc)" type="button"  class="mfp-close">×</button>
            <img class="tag" id="id--tag" src="images/bg-video.png" width="700" height="540" onclick="none_click()">
        </div>
    </body>
</html>
