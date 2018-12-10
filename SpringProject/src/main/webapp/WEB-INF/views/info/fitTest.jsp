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
			<li class="breadcrumb-item"><a href="#">ANIFIT</a></li>
			<li class="breadcrumb-item active" aria-current="page"><a
				href="inbody.do">체력 측정</a></li>
		</ol>
	</div>

</section>
<!-- #page-title end -->

<!-- Content
		============================================= -->
<section id="content">
	<div class="content-wrap">
		<div class="container clearfix" style="margin-bottom: 175px;">
			<h2 style=" color: mediumvioletred; ">박노율 고객님의 체력측정</h2>
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
						"${i.fit_date }",
					</c:forEach>
				],
				datasets: [{
					label: "평균",
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [
						<c:forEach var="i" items="${list }">
							50,
						</c:forEach>
						],
					fill: false,
				}, {
					label: "팔굽",
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [
						<c:forEach var="i" items="${list }">
							${i.pushup },
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
							max: 120,
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
						"${i.fit_date }",
					</c:forEach>
				],
				datasets: [{
					label: "평균",
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [
						<c:forEach var="i" items="${list }">
							10,
						</c:forEach>
						],
					fill: false,
				}, {
					label: "턱걸이",
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [
						<c:forEach var="i" items="${list }">
							${i.pullup },
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
							stepSize: 10
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
						"${i.fit_date }",
					</c:forEach>
				],
				datasets: [{
					label: "평균",
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [
						<c:forEach var="i" items="${list }">
							50,
						</c:forEach>
						],
					fill: false,
				}, {
					label: "스퀏",
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [
						<c:forEach var="i" items="${list }">
							${i.squat },
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
							max: 120,
							stepSize: 10
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
						"${i.fit_date }",
					</c:forEach>
				],
				datasets: [{
					label: "평균",
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [
						<c:forEach var="i" items="${list }">
							60,
						</c:forEach>
						],
					fill: false,
				}, {
					label: "윗몸",
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [
						<c:forEach var="i" items="${list }">
							${i.situp },
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
							max: 120,
							stepSize: 10
						}
					}]
				}
			}
		};
	}
	
	function createConfig5(gridlines, title) {
		return {
			type: 'line',
			data: {
				labels: [
					<c:forEach var="i" items="${list }">
						"${i.fit_date }",
					</c:forEach>
				],
				datasets: [{
					label: "평균",
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [
						<c:forEach var="i" items="${list }">
							15, 
						</c:forEach>
						],
					fill: false,
				}, {
					label: "버피",
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [
						<c:forEach var="i" items="${list }">
							${i.burpee },
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
							max: 50,
							stepSize: 10
						}
					}]
				}
			}
		};
	}
	

	window.onload = function() {
		var container = document.querySelector('.chart1');
		
		[{
			title: '팔굽혀 펴기',
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
			title: '턱걸이',
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
			title: '스쿼트',
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
			title: '윗몸일으키기',
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
		
		var container = document.querySelector('.chart1');
		
		[{
			title: '버피테스트',
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
			var config = createConfig5(details.gridLines, details.title);
			new Chart(ctx, config);
		});
	};
</script>