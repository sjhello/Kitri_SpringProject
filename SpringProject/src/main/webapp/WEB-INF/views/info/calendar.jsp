<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<!-- Content
		============================================= -->
		<section id="content">
<!-- 			<div style="top: 108px;z-index: 1;color: white;position: absolute;float: initial;left: 22px;"> -->
<!-- 				<h2>시작한 날짜 : 18/11/01</h2><br> -->
<!-- 				<h2>성공 횟수 : 23번</h2><br> -->
<!-- 				<h2>실패 횟수 : 4번</h2> -->
<!-- 			</div> -->
			<div class="content-wrap">
				<div class="parallax header-stick bottommargin-lg dark" style="padding: 60px 0; background-image: url('images/parallax/calendar.jpg'); height: auto;" data-bottom-top="background-position:0px 0px;" data-top-bottom="background-position:0px -500px;">
					<div class="container clearfix">
						<div class="events-calendar">
							<div class="events-calendar-header clearfix">
								<h2>내 운동기록</h2>
								<h3 class="calendar-month-year">
									<span id="calendar-month" class="calendar-month"></span>
									<span id="calendar-year" class="calendar-year"></span>
									<nav>
										<span id="calendar-prev" class="calendar-prev"><i class="icon-chevron-left"></i></span>
										<span id="calendar-next" class="calendar-next"><i class="icon-chevron-right"></i></span>
										<span id="calendar-current" class="calendar-current" title="Got to current date"><i class="icon-reload"></i></span>
									</nav>
								</h3>
							</div>
							<div id="calendar" class="fc-calendar-container"></div>
						</div>
					</div>
				</div>
			</div>
		</section>
		
		
	<script src="js/jquery.calendario.js"></script>
	<script src="js/events-data.js"></script>
	<script>

		var cal = $( '#calendar' ).calendario( {
				onDayClick : function( $el, $contentEl, dateProperties ) {

					for( var key in dateProperties ) {
						console.log( key + ' = ' + dateProperties[ key ] );
					}

				},
				caldata : canvasEvents
			} ),
			$month = $( '#calendar-month' ).html( cal.getMonthName() ),
			$year = $( '#calendar-year' ).html( cal.getYear() );

		$( '#calendar-next' ).on( 'click', function() {
			cal.gotoNextMonth( updateMonthYear );
		} );
		$( '#calendar-prev' ).on( 'click', function() {
			cal.gotoPreviousMonth( updateMonthYear );
		} );
		$( '#calendar-current' ).on( 'click', function() {
			cal.gotoNow( updateMonthYear );
		} );

		function updateMonthYear() {
			$month.html( cal.getMonthName() );
			$year.html( cal.getYear() );
		};

	</script>