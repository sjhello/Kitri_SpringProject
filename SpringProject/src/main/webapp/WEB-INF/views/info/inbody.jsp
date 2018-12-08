<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<script>
	$(document).ready(function() {
	});
</script>
<section id="page-title" class="page-title-parallax page-title-dark"
	style="padding: 250px 0; background-image: url('images/about/parallax.jpg'); background-size: cover; background-position: center center;"
	data-bottom-top="background-position:0px 400px;"
	data-top-bottom="background-position:0px -500px;">

	<div class="container clearfix">
		<h1>ANIFIT</h1>
		<span>최고의 가성비로 누구나 건강을 관리할 수 있습니다.</span>
		<ol class="breadcrumb">
			<li class="breadcrumb-item"><a href="main.do">Home</a></li>
			<li class="breadcrumb-item"><a href="#">ANYFIT</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a
				href="inbody.do">인바디</a></li>
		</ol>
	</div>

</section>
<!-- #page-title end -->

<!-- Content
		============================================= -->
<section id="content">
	<div class="content-wrap">
		<div class="container clearfix" style="margin-bottom: 175px;">
			<h2 style=" color: mediumvioletred; ">박노율 고객님의 측정 인바디 </h2>
			<h3>키: 성별: 나이: </h3>
			<div class="row charts-container chart1"></div>
		</div>
		<div class="line"></div>
		
	</div>
</section>

<script src="js/chart.js"></script>
<script src="js/chart-utils.js"></script>
<script src="js/components/moment.js"></script>
	

<script>

	function createConfig(gridlines, title) {

		return {
			type: 'line',
			data: {
				labels: [
						<c:forEach var="i" items="${list }">
							"${i.i_date }",
						</c:forEach>
					],
				datasets: [{
					label: "평균",
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [
						<c:forEach var="i" items="${list }">
							${i.height }-100,
						</c:forEach>
						],
					fill: false,
				}, {
					label: "회원",
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [
						<c:forEach var="i" items="${list }">
							${i.weight },
						</c:forEach>
						],
				}]
			},
			options: {
				responsive: true,
				title:{
					display: true,
					text: title
				},
				scales: {
					xAxes: [{
						gridLines: gridlines
					}],
					yAxes: [{
						gridLines: gridlines,
						ticks: {
							min: <c:forEach var="i" items="${list }">
									<c:set var="min" value="100"/>
										<c:if
								${i.weight },
								</c:forEach>,
							max: 110,
							stepSize: 10
						}
					}]
				}
			}
		};
	}
	
	function createConfig2(gridlines, title) {
		return {
			type: 'line',
			data: {
				labels: [
					<c:forEach var="i" items="${list }">
						"${i.i_date }",
					</c:forEach>
				],
				datasets: [{
					label: "평균",
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [
						<c:forEach var="i" items="${list }">
							${i.weight }*0.45,
						</c:forEach>
						],
					fill: false,
				}, {
					label: "회원",
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [
						<c:forEach var="i" items="${list }">
							${i.muscle },
						</c:forEach>
						],
				}]
			},
			options: {
				responsive: true,
				title:{
					display: true,
					text: title
				},
				scales: {
					xAxes: [{
						gridLines: gridlines
					}],
					yAxes: [{
						gridLines: gridlines,
						ticks: {
							min: 30,
							max: 50,
							stepSize: 5
						}
					}]
				}
			}
		};
	}
	
	function createConfig3(gridlines, title) {
		return {
			type: 'line',
			data: {
				labels: [
					<c:forEach var="i" items="${list }">
						"${i.i_date }",
					</c:forEach>
				],
				datasets: [{
					label: "평균",
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [
						<c:forEach var="i" items="${list }">
							${i.weight }*0.15,
						</c:forEach>
						],
					fill: false,
				}, {
					label: "회원",
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [
						<c:forEach var="i" items="${list }">
							${i.fat },
						</c:forEach>
						],
				}]
			},
			options: {
				responsive: true,
				title:{
					display: true,
					text: title
				},
				scales: {
					xAxes: [{
						gridLines: gridlines
					}],
					yAxes: [{
						gridLines: gridlines,
						ticks: {
							min: 0,
							max: 40,
							stepSize: 5
						}
					}]
				}
			}
		};
	}
	
	
	
	function createConfig4(gridlines, title) {
		return {
			type: 'line',
			data: {
				labels: [
					<c:forEach var="i" items="${list }">
						"${i.i_date }",
					</c:forEach>
				],
				datasets: [{
					label: "평균",
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [
						<c:forEach var="i" items="${list }">
							22,
						</c:forEach>
						],
					fill: false,
				}, {
					label: "회원",
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [
						<c:forEach var="i" items="${list }">
							${i.bmi },
						</c:forEach>
						],
				}]
			},
			options: {
				responsive: true,
				title:{
					display: true,
					text: title
				},
				scales: {
					xAxes: [{
						gridLines: gridlines
					}],
					yAxes: [{
						gridLines: gridlines,
						ticks: {
							min: 10,
							max: 35,
							stepSize: 5
						}
					}]
				}
			}
		};
	}

	window.onload = function() {
		var container = document.querySelector('.chart1');
		
		[{
			title: '몸무게',
			gridLines: {
				display: false
			}
		}].forEach(function(details) {
			var div = document.createElement('div');
			div.classList.add('col-md-6');

			var canvas = document.createElement('canvas');
			div.appendChild(canvas);
			container.appendChild(div);

			var ctx = canvas.getContext('2d');
			var config = createConfig(details.gridLines, details.title);
			new Chart(ctx, config);
		});
		
		var container = document.querySelector('.chart1');
		
		[{
			title: '골격근량',
			gridLines: {
				display: false
			}
		}].forEach(function(details) {
			var div = document.createElement('div');
			div.classList.add('col-md-6');

			var canvas = document.createElement('canvas');
			div.appendChild(canvas);
			container.appendChild(div);

			var ctx = canvas.getContext('2d');
			var config = createConfig2(details.gridLines, details.title);
			new Chart(ctx, config);
		});
		
		var container = document.querySelector('.chart1');
		
		[{
			title: '체지방',
			gridLines: {
				display: false
			}
		}].forEach(function(details) {
			var div = document.createElement('div');
			div.classList.add('col-md-6');

			var canvas = document.createElement('canvas');
			div.appendChild(canvas);
			container.appendChild(div);

			var ctx = canvas.getContext('2d');
			var config = createConfig3(details.gridLines, details.title);
			new Chart(ctx, config);
		});
		
		var container = document.querySelector('.chart1');
		
		[{
			title: 'BMI',
			gridLines: {
				display: false
			}
		}].forEach(function(details) {
			var div = document.createElement('div');
			div.classList.add('col-md-6');

			var canvas = document.createElement('canvas');
			div.appendChild(canvas);
			container.appendChild(div);

			var ctx = canvas.getContext('2d');
			var config = createConfig4(details.gridLines, details.title);
			new Chart(ctx, config);
		});
		
		
	};
</script>
