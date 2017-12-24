<%-- 
    Document   : index
    Created on : Nov 9, 2017, 4:21:00 PM
    Author     : Lanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BHDSTAR CINEPLEX - HỆ THỐNG RẠP CHIẾU PHIM HIỆN ĐẠI</title>
        <!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="css/reset.css" type="text/css" />
        <link rel="stylesheet" href="css/style_LANH.css" type="text/css" />
        <link rel="stylesheet" href="css/responsive.css" type="text/css" />	
        <link rel="stylesheet" type="text/css" href="css/stylevideo.css">
        <script type="text/javascript" src="js/video.js"></script>
    </head>
    <body class="home blog">
        <jsp:include page="view_component/header.jsp"></jsp:include>
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
                                <div class="flex-viewport">
                                    <ul class="slides">

                                    </ul>
                                </div>
                        </li>
                        <li id="film-2" class="list--film js__tab_content js__active"></li>
                        <li id="film-3" class="list--film js__tab_content"></li>
                    </ul>
                </div>
            </div>
        <jsp:include page="view_component/footer.jsp"></jsp:include>
        <script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/video.js"></script>
    <script src="js/jquery-1.10.2.min.js"></script>
        <script>
		$(document).ready(function(){
			var baseUrlImg = 'https://image.tmdb.org/t/p/w185_and_h278_bestv2';
			var baseUrl = 'https://api.themoviedb.org/3/movie/';
			var api_key = '7112850f72925082c7789c6474e41a18';

			function createDiv(code,className) {
				return $(document.createElement(code)).attr('class',className);
			}
			function createDivAtrr(code, attrName, attrValue) {
				return $(document.createElement(code)).attr(attrName, attrValue);
			}
			function createPSpan(p, span) {
				return $(document.createElement('p')).text(p).append("<span>"+span+"</span>");
			}

			function createElementFilm(nameFilm, vote, releasedate, urlImg, urlFilm) {

				var type_movies = createDiv('div','type-movies');
				var film_item = createDiv('div','film-item');
				var aTrailer = $(document.createElement('a')).attr({
					class: 'bhd-trailer-box bhd-trailer',
					text: 'Trailer',
					href: 'urlFilm',
				});

				var span1 = createDiv('span', 'meta-box-type');
				var span11 = $(document.createElement('span')).attr('class', 'film--rating').text("C 18");
				var span12 = $(document.createElement('span')).attr('class','tech--2d').text("2D");

				var a_img = createDivAtrr('a','href', urlFilm);
				var img = createDivAtrr('img','src', baseUrlImg+urlImg);

				var a_name = $(document.createElement('a'));
				var span_name = $(document.createElement('span')).attr('class', 'movie--name').text(nameFilm);
				
				var a_muave = createDiv('a','btn--green').text("Mua vé");
				var i_muave = createDiv('i', 'fa fa-ticket');

				a_img.append(img);
				a_name.append(span_name);
				span1.append(span11, span12);
				film_item.append(aTrailer, span1, a_img, a_name);

				// a_muave.append(i_muave);
				type_movies.append(film_item, a_muave);
				return type_movies;
			}

			function createUrl(category, page) {
				return baseUrl+category+"?api_key="+api_key+"&page="+page;
			}
			function createpPathUrl(url) {
				for(var i= url.length-1; i > 0; i--){
					if( url[i] == '/'){
						return url.substr(0,i+1);
					}
				}
				return null;
			}
			$(window).load(function() {
				var page = 1;

				fetch(createUrl('popular', page))
				.then((resp) => resp.json())
				.then(function(data) {
					let all = data.results;
					$.each(all, function (key, value) {
						$('.slides').append(createElementFilm(
							value.title, 
							value.vote_average, 
							value.release_date, 
							value.poster_path, 
							// createpPathUrl(window.location.href)+"phim-detail.html?movies="+value.id
							createpPathUrl(window.location.href)+"chitietphim.html"
						));
					});
				})
				.catch(function(error) {
					console.log(error);
				});   

				 console.log(window.location.search.substr(1).split('&'));
				var t = window.location.href;
				console.log(createpPathUrl(t));
			});

			function paginationFetch(page) {
				fetch(createUrl('popular',page))
				.then((resp) => resp.json())
				.then(function(data) {
					let all = data.results;
					$.each(all, function (key, value) {
						$('.slides').append(createElementFilm(value.title, value.vote_average, value.release_date, value.poster_path, createpPathUrl(window.location.href)+"cgv.html?movies="+value.id));
					});
					$('#loading-mask').hide();

				})
				.catch(function(error) {
					console.log(error);
				});
			}
			$('.pagination li a').on('click', function(){
				$('#loading-mask').show();
				$('.film_list').empty();
				paginationFetch($(this).text());
			});	



			fetch('movie_ids_04_28_2017.json')
				.then((resp) => resp.json())
				.then(function(data) {
					let all = data;
					console.log(all);
				}).catch(function(error) {
					console.log(error);
				});
		});
	</script>
    </body>
</html>
