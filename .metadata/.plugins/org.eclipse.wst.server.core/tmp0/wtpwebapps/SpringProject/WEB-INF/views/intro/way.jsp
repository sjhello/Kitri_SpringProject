<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section id="page-title" class="page-title-parallax page-title-dark" style="padding: 250px 0; background-image: url('images/about/parallax.jpg'); background-size: cover; background-position: center center;" data-bottom-top="background-position:0px 400px;" data-top-bottom="background-position:0px -500px;">

			<div class="container clearfix">
				<h1>ANIFIT</h1>
				<span>최고의 가성비로 누구나 건강을 관리할 수 있습니다.</span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="main.do">Home</a></li>
					<li class="breadcrumb-item"><a href="#">ANIFIT</a></li>
					<li class="breadcrumb-item active" aria-current="page"><a href="way.do">오시는길</a></li>
				</ol>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content" style="padding: 80px; padding-bottom: 0px;margin-bottom: 163px;">
			<div class="content-wrap">
				<div class="container clearfix">

					<div class="col_one">

						<div class="heading-block fancy-title nobottomborder title-bottom-border">
							<h4><span>ANIFIT</span> 찾아오시는길</h4>
							<br>
							<img src="images/KITRI.jpg" style="float:left"/>
							<div class="table_article">
								
								<table summary="키트리 구로본원 주소와 대표전호 팩스 확인가능합니다." style=" margin-left: 25px; float: left; ">
									<colgroup>
										<col width="25%">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th scope="row"><p>주소</p></th>
											<td><p>서울시 구로구 디지털로 34길 43 코오롱사이언스벨리 1차<br>(2호선 구로디지털단지역 3번 출구 도보 3분 이내)</p></td>
										</tr>
										<tr>
											<th scope="row"><p>대표전화</p></th>
											<td><p>02-869-8301</p></td>
										</tr>
										<tr>
											<th scope="row"><p>FAX</p></th>
											<td><p>02-869-6052</p></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="content-wrap" style="padding:39px">
				<div class="container clearfix">
					<div class="col_one" style="height:300px">
						<div class="heading-block fancy-title nobottomborder title-bottom-border">
							 <div id="map" style="height:400px"></div>
								<script>
									// Initialize and add the map
									function initMap() {
									  // The location of Uluru
									  var uluru = {lat: 37.4851267, lng: 126.89881289999994};
									  // The map, centered at Uluru
									  var map = new google.maps.Map(
									      document.getElementById('map'), {zoom: 16, center: uluru});
									  // The marker, positioned at Uluru
									  var marker = new google.maps.Marker({position: uluru, map: map});
									}
									    </script>
									    <!--Load the API from the specified URL
									    * The async attribute allows the browser to render the page while the API loads
									    * The key parameter will contain your own API key (which is not needed for this tutorial)
									    * The callback parameter executes the initMap() function
									    -->
									    <script async defer
									    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCbJ4gVQ2QY2T_4z3CCueXkwCViNTmhSYI&callback=initMap">
								</script>
						</div>
					</div>
				</div>
			</div>
		</section><!-- #content end -->