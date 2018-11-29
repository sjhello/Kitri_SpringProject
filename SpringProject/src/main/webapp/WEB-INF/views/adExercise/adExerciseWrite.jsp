<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container-fluid">
    <div class="row no-margin">
        <div class="col-xl-12">
            <!-- Begin Widget -->
            <div class="row widget has-shadow">
                <div class="widget-header bordered d-flex align-items-center">
                    <h2>Calendar</h2>
                    <div class="widget-body">
                        <div class="form-group">
                            <div class="btn-group" role="group" aria-label="Buttons Group">
                                <button type="button" class="btn btn-info mb-2">초급</button>
                                <button type="button" class="btn btn-warning mb-2">중급</button>
                                <button type="button" class="btn btn-danger mb-2">고급</button>
                            </div>
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
					{
						title: '어께',
						description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu pellentesque nibh. In nisl nulla, convallis ac nulla eget, pellentesque pellentesque magna.',
						start: '2018-11-29',
						end: '2018-11-30',
						className: 'fc-bg-violet',
						icon : "calendar"
					}, 
					{
						title: '하체',
						description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu pellentesque nibh. In nisl nulla, convallis ac nulla eget, pellentesque pellentesque magna.',
						start: '2018-11-29',
						end: '2018-11-30',
						className: 'fc-bg-default',
						icon : "child"
					},
					{
						title: '등',
						description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu pellentesque nibh. In nisl nulla, convallis ac nulla eget, pellentesque pellentesque magna.',
						start: '2018-11-29',
						end: '2018-11-30',
						className: 'fc-bg-default',
						icon : "birthday-cake"
					},
					{
						title: 'test',
						description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras eu pellentesque nibh. In nisl nulla, convallis ac nulla eget, pellentesque pellentesque magna.',
						start: '2018-11-29',
						end: '2018-11-30',
						className: 'fc-bg-default',
						icon : "birthday-cake"
					}
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