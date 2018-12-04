<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
			<h2 style=" color: mediumvioletred; ">박노율 고객님의 측정 인바디</h2>
			<div class="row charts-container chart1"></div>
		</div>
		<div class="line"></div>
		
	</div>
</section>

<script src="js/chart.js"></script>
<script src="js/chart-utils.js"></script>
<script src="js/components/moment.js"></script>

<%
	int [] weight = new int[12];
	
%>

<table border="1">
	<tr>
		<th>weight</th>
		<th>muscle</th>
	</tr>
	<c:forEach var="i" items="${list }">
		<tr>
			<td>${i.weight }</td>
			<td>${i.muscle }</td>
		</tr>
	</c:forEach>
	<tr>
		<td>aaa</td>
		<td>bbb</td>
	</tr>
</table>



<script>
	function createConfig(gridlines, title) {
		return {
			type: 'line',
			data: {
				labels: ["1월", "2월", "3월", "April", "May", "June", "July"],
				datasets: [{
					label: "평균",
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [<%=weight[0] %>, 70, 70, 70, 70, 70, 70],
					fill: false,
				}, {
					label: "1",
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [<%=weight[1] %>, <%=weight[2] %>,<%=weight[3] %>, <%=weight[4] %>, 90, 95, 89],
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
							max: 150,
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
				labels: ["January", "February", "March", "April", "May", "June", "July"],
				datasets: [{
					label: "나",
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [3, 30, 39, 20, 25, 34, 0],
					fill: false,
				}, {
					label: "2",
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [10, 10, 10, 10, 10, 10, 10],
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
							max: 100,
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
				labels: ["January", "February", "March", "April", "May", "June", "July"],
				datasets: [{
					label: "나",
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [20, 20, 20, 20, 20, 20, 20],
					fill: false,
				}, {
					label: "3",
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [6, 33, 22, 19, 11, 39, 30],
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
							max: 100,
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
				labels: ["January", "February", "March", "April", "May", "June", "July"],
				datasets: [{
					label: "나",
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [7, 30, 39, 20, 25, 34, 0],
					fill: false,
				}, {
					label: "4",
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [30, 30, 30, 30, 30, 30, 30],
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
							max: 100,
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
				labels: ["January", "February", "March", "April", "May", "June", "July"],
				datasets: [{
					label: "나",
					backgroundColor: window.chartColors.red,
					borderColor: window.chartColors.red,
					data: [9, 30, 39, 20, 25, 34, 0],
					fill: false,
				}, {
					label: "5",
					fill: false,
					backgroundColor: window.chartColors.blue,
					borderColor: window.chartColors.blue,
					data: [40, 40, 40, 40, 40, 40, 40],
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
							max: 100,
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
			title: '체지방률',
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
			var config = createConfig5(details.gridLines, details.title);
			new Chart(ctx, config);
		});
	};
</script>
