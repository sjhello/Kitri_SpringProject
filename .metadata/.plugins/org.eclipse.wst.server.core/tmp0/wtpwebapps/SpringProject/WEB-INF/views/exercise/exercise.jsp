<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				href="login.do">운동법</a></li>
		</ol>
	</div>

</section>
<!-- #page-title end -->

<!-- Content
		============================================= -->
<section id="content">
	<div class="content-wrap">
		<div class="container clearfix" style="margin-bottom: 175px;">
			<h2 style=" color: mediumvioletred; ">박노율 고객님의 운동 계획</h2>
			<p style="float:left"><label for="dp-de2">선택된 날짜</label> : <input type="text" class="w16em" id="dp-de2" name="dp-de2" value="" /></p> 
			<script type="text/javascript">
			// <![CDATA[  
			  var opts = {                            
			          formElements:{"dp-de2":"d-sl-m-sl-Y"},
			          showWeeks:true,
			          statusFormat:"l-cc-sp-d-sp-F-sp-Y",
			          staticPos:true,
			          finalOpacity:90                  
			          };           
			  datePickerController.createDatePicker(opts);
			// ]]>
			</script>
			
			<div style="float:left;width: 743px;margin-left: 49px;">
				<div class="tabs tabs-bordered clearfix" id="tab-2">
		
					<ul class="tab-nav clearfix">
						<li><a href="#tabs-5"><i class="icon-home2 norightmargin"></i></a></li>
						<li><a href="#tabs-6">아침</a></li>
						<li><a href="#tabs-7">점심</a></li>
						<li class="hidden-phone"><a href="#tabs-8">저녁</a></li>
					</ul>
		
					<div class="tab-container">
		
						<div class="tab-content clearfix" id="tabs-5">
							매일 새로운 운동법을 알려드립니다. 해당하는 시간을 클릭하시오.
						</div>
						<div class="tab-content clearfix" id="tabs-6">
							<iframe width="560" height="315" src="https://www.youtube.com/embed/uhC2Vjle8vU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
							<br><br>
							<a class="button button-3d button-rounded button-amber">취소</a>
							<a class="button button-3d button-rounded">체크</a>
							<a class="button button-3d button-mini button-rounded button-green">미션완료</a>
							<a class="button button-3d button-mini button-rounded button-teal">미션실패</a>
						</div>
						<div class="tab-content clearfix" id="tabs-7">
							<iframe width="560" height="315" src="https://www.youtube.com/embed/3hhaXS4_NnI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
							<br><br>
							<a class="button button-3d button-rounded button-amber">취소</a>
						</div>
						<div class="tab-content clearfix" id="tabs-8">
							<iframe width="560" height="315" src="https://www.youtube.com/embed/joh777Z8FBI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
							<br><br>
							<a class="button button-3d button-rounded button-amber">취소</a>
						</div>
		
					</div>
		
				</div>
			</div>
		</div>
		<div class="line"></div>
		
	</div>
</section>