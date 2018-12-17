<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<div class="container-fluid">
	<!-- Begin Page Header-->
	<div class="row">
	    <div class="page-header">
	     <div class="d-flex align-items-center">
	         <h2 class="page-header-title">Dashboard</h2>
	     </div>
	    </div>
	</div>
	
	<div class="row flex-row">
	    <div class="col-xl-12 col-md-6">
	        <!-- Begin Widget 09 -->
	        <div class="widget widget-09 has-shadow">
	            <!-- Begin Widget Header -->
	            <div class="widget-header d-flex align-items-center">
	            </div>
	            <!-- End Widget Header -->
	            <!-- Begin Widget Body -->
	            <div class="widget-body">
	                <div class="row">
	                    <div class="col-xl-10 col-12 no-padding">
	                        <div>
	                            <canvas id="orders"></canvas>
	                        </div>
	                    </div>
	                    <div class="col-xl-2 col-12 d-flex flex-column my-auto no-padding text-center">
	                        <div class="some-stats mt-5">
	                            <div class="title">총 수익</div>
	                            <div class="number text-blue">4800만원</div>
	                        </div>
	                        <div class="some-stats mt-3">
	                            <div class="title">총 가입자</div>
	                            <div class="number text-blue">100명</div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!-- End Widget 09 -->
	    </div>
	    <div class="col-xl-6">
		    <!-- Doughnut Chart -->
		    <div class="widget has-shadow">
		        <div class="widget-header bordered no-actions d-flex align-items-center">
		            <h4>Doughnut Chart</h4>
		        </div>
		        <div class="widget-body">
		            <div class="chart">
		                <canvas id="doughnut-chart"></canvas>
		            </div>
		        </div>
		    </div>
		    <!-- End Doughnut Chart -->
		</div>
		<div class="col-xl-6">
		    <!-- Pie Chart -->
		    <div class="widget has-shadow">
		        <div class="widget-header bordered no-actions d-flex align-items-center">
		            <h4>Pie Chart</h4>
		        </div>
		        <div class="widget-body">
		            <div class="chart">
		                <canvas id="pie-chart"></canvas>
		            </div>
		        </div>
		    </div>
		    <!-- End Pie Chart -->
		</div>
		<div class="col-xl-6">
		    <!-- Radar Chart -->
		    <div class="widget has-shadow">
		        <div class="widget-header bordered no-actions d-flex align-items-center">
		            <h4>Radar Chart</h4>
		        </div>
		        <div class="widget-body">
		            <div class="chart">
		                <canvas id="radar-chart"></canvas>
		            </div>
		        </div>
		    </div>
		    <!-- End Radar Chart -->
		</div>
		<div class="col-xl-6">
		    <!-- Polar Chart -->
		    <div class="widget has-shadow">
		        <div class="widget-header bordered no-actions d-flex align-items-center">
		            <h4>Polar Chart</h4>
		        </div>
		        <div class="widget-body">
		            <div class="chart">
		                <canvas id="polar-chart"></canvas>
		            </div>
		        </div>
		    </div>
		    <!-- End Polar Chart -->
		</div>
	</div>
</div>
<script src="assets/js/dashboard/db-default2.js"></script>
<script>
(function(c) {
	var a = document.getElementById("doughnut-chart").getContext("2d");
	var b = new Chart(a, {
		type : "doughnut",
		data : {
			labels : [ "Blue", "Green", "Red" ],
			datasets : [ {
				label : "Label",
				backgroundColor : [ "#08a6c3", "#5cb85c", "#d9534f" ],
				hoverBorderColor : [ "#fff", "#fff", "#fff" ],
				borderColor : [ "#fff", "#fff", "#fff" ],
				borderWidth : 10,
				data : [ 2478, 4268, 1265 ]
			} ]
		},
		options : {
			legend : {
				display : true,
				position : "top",
				labels : {
					fontColor : "#2e3451",
					usePointStyle : true,
					fontSize : 13
				}
			},
			tooltips : {
				backgroundColor : "rgba(47, 49, 66, 0.8)",
				titleFontSize : 13,
				titleFontColor : "#fff",
				caretSize : 0,
				cornerRadius : 4,
				xPadding : 10,
				displayColors : true,
				yPadding : 10
			}
		}
	});
	var a = document.getElementById("pie-chart").getContext("2d");
	var b = new Chart(a, {
		type : "pie",
		data : {
			labels : [ "Blue", "Green", "Red" ],
			datasets : [ {
				label : "Label",
				backgroundColor : [ "#08a6c3", "#5cb85c", "#d9534f" ],
				borderColor : [ "#fff", "#fff", "#fff" ],
				hoverBorderColor : [ "#fff", "#fff", "#fff" ],
				borderWidth : 10,
				data : [ 2478, 4268, 1265 ]
			} ]
		},
		options : {
			legend : {
				display : true,
				position : "top",
				labels : {
					fontColor : "#2e3451",
					usePointStyle : true,
					fontSize : 13
				}
			},
			tooltips : {
				backgroundColor : "rgba(47, 49, 66, 0.8)",
				titleFontSize : 13,
				titleFontColor : "#fff",
				caretSize : 0,
				cornerRadius : 4,
				xPadding : 10,
				displayColors : true,
				yPadding : 10
			}
		}
	});
	var a = document.getElementById("radar-chart").getContext("2d");
	var b = new Chart(a, {
		type : "radar",
		data : {
			labels : [ "January", "Febuary", "March", "April", "May" ],
			datasets : [ {
				label : "1950",
				fill : true,
				backgroundColor : "rgba(93, 83, 134, 0.2)",
				borderColor : "rgba(93, 83, 134, 0.8)",
				pointBorderColor : "#fff",
				pointBackgroundColor : "rgba(93, 83, 134, 1)",
				data : [ 40, 55, 60, 10, 70 ]
			}, {
				label : "2050",
				fill : true,
				backgroundColor : "rgba(231, 108, 144, 0.2)",
				borderColor : "rgba(231, 108, 144, 0.8)",
				pointBorderColor : "#fff",
				pointBackgroundColor : "rgba(231, 108, 144, 1)",
				pointBorderColor : "#fff",
				data : [ 60, 70, 35, 20, 80 ]
			} ]
		},
		options : {
			legend : {
				display : false
			},
			tooltips : {
				backgroundColor : "rgba(47, 49, 66, 0.8)",
				titleFontSize : 13,
				titleFontColor : "#fff",
				caretSize : 0,
				cornerRadius : 4,
				xPadding : 10,
				displayColors : true,
				yPadding : 10
			}
		}
	});
	var a = document.getElementById("polar-chart").getContext("2d");
	var b = new Chart(a,
			{
				type : "polarArea",
				data : {
					labels : [ "Blue", "Green", "Red", "Violet" ],
					datasets : [ {
						label : "Label",
						backgroundColor : [ "#08a6c3", "#5cb85c", "#d9534f",
								"#5d5386" ],
						borderColor : [ "#fff", "#fff", "#fff", "#fff" ],
						hoverBorderColor : [ "#fff", "#fff", "#fff", "#fff" ],
						borderWidth : 5,
						data : [ 2478, 4268, 1265, 3000 ]
					} ]
				},
				options : {
					legend : {
						display : true,
						position : "top",
						labels : {
							fontColor : "#2e3451",
							usePointStyle : true,
							fontSize : 13
						}
					},
					tooltips : {
						backgroundColor : "rgba(47, 49, 66, 0.8)",
						titleFontSize : 13,
						titleFontColor : "#fff",
						caretSize : 0,
						cornerRadius : 4,
						xPadding : 10,
						displayColors : true,
						yPadding : 10
					}
				}
			})
})(jQuery);
</script>