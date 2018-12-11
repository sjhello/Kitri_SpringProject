<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<script>
	$(document).ready(function() {
		$('.datePickerTable td').click(function() {
		   var class1 = $(this).attr("class");
	       var check = class1.split(" ");
	       var dateString = check[1];
	       var secDate = dateString.substring(3);
	       var year = secDate.substr(0,4);
	       var month = secDate.substr(4,2);
	       var day = secDate.substr(6,2);
	       var date = month + "/" + day + "/" + year;
	       
	       location.href = "exercise.do?date="+date;
	    });
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
			<p style="float:left"><label for="dp-de2">선택된 날짜</label> : <input type="text" class="w16em" id="dp-de2" name="dp-de2" value="${date }" /></p> 
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
				<div class="tabs tabs-bordered clearfix" id="tab-1">
		
					<ul class="tab-nav clearfix" id="head1">
						<li><a href="#tabs-1"><i class="icon-home2 norightmargin"></i></a></li>
						<c:forEach var="list" items="${list}" varStatus="status">
							<li><a href="#tabs-${status.count+1}">${list.title }</a></li>
						</c:forEach>
					</ul>
		
					<div class="tab-container" id="body1">
		
						<div class="tab-content clearfix" id="tabs-1">
							매일 새로운 운동법을 알려드립니다. 해당하는 시간을 클릭하시오.
							<a class="button button-3d button-rounded button-amber">취소</a>
							<a class="button button-3d button-rounded">체크</a>
							<a class="button button-3d button-mini button-rounded button-green">미션완료</a>
							<a class="button button-3d button-mini button-rounded button-teal">미션실패</a>
						</div>
						<c:forEach var="list" items="${list}" varStatus="status">
							<div class="tab-content clearfix" id="tabs-${status.count+1}">
								${list.contents }
							</div>
						</c:forEach>
					</div>
		
				</div>
			</div>
		</div>
		<div class="line"></div>
		
	</div>
</section>