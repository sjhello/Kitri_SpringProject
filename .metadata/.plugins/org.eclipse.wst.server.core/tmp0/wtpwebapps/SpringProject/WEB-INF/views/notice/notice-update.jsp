<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<script>
	$(document).ready(function() {
		$('#updateButton').click(function() {
			$('#updateForm').submit();
		});
	});
</script>

<section id="page-title" class="page-title-parallax page-title-dark" style="padding: 250px 0; background-image: url('images/about/parallax.jpg'); background-size: cover; background-position: center center;" data-bottom-top="background-position:0px 400px;" data-top-bottom="background-position:0px -500px;">

			<div class="container clearfix">
				<h1>ANIFIT</h1>
				<span>최고의 가성비로 누구나 건강을 관리할 수 있습니다.</span>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="main.do">Home</a></li>
					<li class="breadcrumb-item"><a href="#">ANIFIT</a></li>
					<li class="breadcrumb-item active" aria-current="page"><a href="qa.do">공지사항</a></li>
				</ol>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix" style="margin-bottom: 175px;">
					<h4>공지사항</h4>
					<div class="col_one">
						<form id="updateForm" action="notice-update.do" method="post">
						<input type="hidden" name="num" value="${list.num }">
						<table class="table table-bordered">
						  <thead>
							<tr>
							 	<th colspan="2">공지사항 수정</th>
							</tr>
						  </thead>
						  <tbody>
							<tr>
							  <td>제목</td>
							  <td><input name="title" type="text" style="width:487px" value="${list.title }" maxlength="100"/></td>
							</tr>
							<tr>
							  <td>아이디</td>
							  <td>admin</td>
							</tr>
							<tr>
							  <td>내용</td>
							  <td style=" height: 386px; "><textarea name="content" rows="25" cols="61" style="resize: none;"  maxlength="4000">${list.content }</textarea></td>
							</tr>
							<tr>
								<td colspan="2">
									<a id="updateButton" href="#" class="btn btn-secondary btn-sm fright" style=" margin-left: 3px; ">수정</a>
									<a href="notice.do" class="btn btn-secondary btn-sm fright" style=" margin-left: 3px; ">취소</a>
								</td>
							</tr>
						  </tbody>
						</table>
						</form>
					</div>
				</div>
			</div>
		</section><!-- #content end -->