<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
 
    
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
						<table class="table table-striped">
						  <thead>
							<tr>
							  <th>no</th>
							  <th>title</th>
							  <th>date</th>
							  <th>hits</th>
							</tr>
						  </thead>
						  <tbody>
						    <c:forEach var="list" items="${list }">
							<tr>
							  <td>${list.num}</td>
							  <td><a href="noticeDetail.do?num=${list.num }">${list.title}</a></td>
							  <td>${list.reg_date}</td>
							  <td>${list.hits}</td>
							</tr>
						    </c:forEach>
						  </tbody>
						</table>
						<c:if test="${id == 'admin' }">
						<a href="notice-writeForm.do" class="btn btn-secondary btn-sm fright">작성하기</a>
						</c:if>
						<nav aria-label="Page navigation example">
						  <ul class="pagination">
						    <li class="page-item disabled">
						      <span class="page-link">&laquo;</span>
						    </li>
						    <li class="page-item"><a class="page-link" href="#">1</a></li>
						    <li class="page-item active">
						      <span class="page-link">
						        2
						        <span class="sr-only">(current)</span>
						      </span>
						    </li>
						    <li class="page-item"><a class="page-link" href="#">3</a></li>
						    <li class="page-item">
						      <a class="page-link" href="#">&raquo;</a>
						    </li>
						  </ul>
						</nav>
					</div>
				</div>
			</div>
		</section><!-- #content end -->