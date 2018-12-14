<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<script>
	if(${id == null}) {
		alert("잘못된 접근입니다.");
		location.href="main.do";
	}
</script>
<section id="page-title" class="page-title-parallax page-title-dark" style="padding: 250px 0; background-image: url('images/about/parallax.jpg'); background-size: cover; background-position: center center;" data-bottom-top="background-position:0px 400px;" data-top-bottom="background-position:0px -500px;">

			<div class="container clearfix">
				<h1>ANIFIT</h1>
				<span>최고의 가성비로 누구나 건강을 관리할 수 있습니다.</span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="main.do">Home</a></li>
					<li class="breadcrumb-item"><a href="#">ANIFIT</a></li>
					<li class="breadcrumb-item active" aria-current="page"><a href="qa.do">1:1문의</a></li>
				</ol>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix" style="margin-bottom: 175px;">
					<h4>1:1 문의</h4>
					<div class="col_one">
						<table class="table table-bordered">
						  <thead>
							<tr>
							 	<th colspan="2">문의 상세보기</th>
							</tr>
						  </thead>
						  <tbody>
							<tr>
							  <td style=" width: 242px; ">제목</td>
							  <td>${list.title }</td>
							</tr>
							<tr>
							  <td>아이디</td>
							  <td>${list.id }</td>
							</tr>
							<tr>
							  <td>내용</td>
							  <td style=" height: 386px; ">${list.content }</td>
							</tr>
							<tr>
								<td colspan="2">
									<a href="qa11.do" class="btn btn-secondary btn-sm fright" style=" margin-left: 3px; ">목록</a>
								</td>
							</tr>
						  </tbody>
						</table>
					</div>
				</div>
			</div>
		</section><!-- #content end -->