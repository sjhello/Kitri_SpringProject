<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script src="assets/js/components/datepicker/datepicker.js"></script>
<script src="assets/vendors/js/datepicker/moment.min.js"></script>
<script src="assets/vendors/js/datepicker/daterangepicker.js"></script>
    
<div class="container-fluid">
    <div class="row no-margin">
        <div class="col-xl-12">
            <!-- Begin Widget -->
            <div class="row widget has-shadow">
                <div class="widget-header bordered d-flex align-items-center">
                    <h2>식단 캘린더</h2>
                    <div class="widget-body">
                        <div class="form-group">
                            <div class="btn-group" role="group" aria-label="Buttons Group">
                                <a href="adDiet.do?type=1"><button type="button" class="btn btn-info mb-2">저체중</button></a>
                                <a href="adDiet.do?type=2"><button type="button" class="btn btn-warning mb-2">정상체중</button></a>
                                <a href="adDiet.do?type=3"><button type="button" class="btn btn-danger mb-2">과체중</button></a>
                            </div>
                        </div>
                         <div class="row">
	                        <span class="col-xl-12">
								<a href="adDietWriteForm.do?type=${type }"><button type="button" class="btn btn-primary btn-block mb-2" style=" width: 256px; "><i class="la la-pencil"></i>작성하기</button></a>
							</span>
						</div>
                    </div>
                </div>
                <!-- End Widget Header -->
                <!-- Begin Widget Body -->
                <div class="widget-body">
                    <!-- Begin Calendar -->
                    <div id="demo-calendar"></div>
                    <!-- End Calendar -->
                </div>
                <!-- End Widget Body -->
            </div>
            <!-- End Widget -->
        </div>
        <!-- End Col -->
    </div>
</div>

<script>
	(function ($) {
	
		
		$('.circle-orders').circleProgress({
			value: 0.43,
			size: 120,
			startAngle: -Math.PI / 2,
			thickness: 6,
			lineCap: 'round',
			emptyFill: '#e4e8f0',
			fill: {
				gradient: ['#0087a4', '#08a6c3']
			}
		}).on('circle-animation-progress', function (event, progress) {
			$(this).find('.percent-orders').html(Math.round(43 * progress) + '<i>%</i>');
		});
	
	    // ------------------------------------------------------- //
	    // Calendar
	    // ------------------------------------------------------ //
		$(function() {
			// page is ready
			$('#demo-calendar').fullCalendar({
				// emphasizes business hours
				businessHours: true,
				defaultView: 'month',
				// event dragging & resizing
				editable: true,
				// header
				header: {
					left: 'title',
					center: 'month,agendaWeek,agendaDay',
					right: 'today prev,next'
				},
				events: [
					<c:forEach var="list" items="${list}" varStatus="status">
						<fmt:parseDate var="parseRegDate" value="${list.f_date}" pattern="MM/dd/yyyy"/>
							<c:if test="${status.index == 0}">
								{
									title: '${list.mealtime }',
									description: '<c:if test="${list.f != null}"></c:if><br><br><a href="adDieUpdateForm.do?num=${list.num }"><button type="button" class="btn btn-outline-success mr-1 mb-2">수정</button></a>&emsp;<a href="adDietDel.do?num=${list.num }"><button type="button" class="btn btn-outline-danger mr-1 mb-2">삭제</button></a>',
									start: '<fmt:formatDate value="${parseRegDate}" pattern="yyyy-MM-dd"/>',
									end: '<fmt:formatDate value="${parseRegDate}" pattern="yyyy-MM-dd"/>',
									className: 'fc-bg-default',
									icon : "commenting"
								}
							</c:if>
							<c:if test="${status.index != 0}">
								,{
									title: '${list.mealtime }',
									description: '<c:if test="${list.f != null}"></c:if><br><br><a href="adDieUpdateForm.do?num=${list.num }"><button type="button" class="btn btn-outline-success mr-1 mb-2">수정</button></a>&emsp;<a href="adDietDel.do?num=${list.num }"><button type="button" class="btn btn-outline-danger mr-1 mb-2">삭제</button></a>',
									start: '<fmt:formatDate value="${parseRegDate}" pattern="yyyy-MM-dd"/>',
									end: '<fmt:formatDate value="${parseRegDate}" pattern="yyyy-MM-dd"/>',
									className: 'fc-bg-default',
									icon : "commenting"
								}
							</c:if>
						</c:forEach>
					],
				eventRender: function(event, element) {
					if(event.icon){          
						element.find(".fc-title").prepend("<i class='la la-"+event.icon+"'></i>");
					}
				  },
				eventClick: function(event, jsEvent, view) {
				        $('.event-icon').html("<i class='la la-"+event.icon+"'></i>");
						$('.event-title').html(event.title);
						$('.event-body').html(event.description);
						$('.eventUrl').attr('href',event.url);
						$('#modal-view-event').modal();
				},
			})
		});
		
	    // ------------------------------------------------------- //
	    // Files
	    // ------------------------------------------------------ //
		$('.widget20').owlCarousel({
			dots: true,
			nav: false,
			loop: true,
			responsiveClass:true,
			navText: ['<i class="la la-angle-left" aria-hidden="true"></i>', '<i class="la la-angle-right" aria-hidden="true"></i>'],
			responsive:{
				0:{
					items:1
				},
				600:{
					items:2
				},
				1000:{
					items:2
				}
			}
		});
	
	})(jQuery);
</script>