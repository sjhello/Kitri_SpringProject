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
					<li class="breadcrumb-item active" aria-current="page"><a href="qa.do">Q&A</a></li>
				</ol>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix" style="margin-bottom: 175px;">
					<h4>Q&A</h4>
					<div class="col_One">
						<div id="accordion">
						  <c:forEach var="list" items="${list }" varStatus="status">
						  <c:if test="${status.index == 0}">
						  	<div class="card">
						    <div class="card-header" id="heading${list.q_num }">
						      <h5 class="mb-0">
						        <button class="btn btn-link show" data-toggle="collapse" data-target="#collapse${list.q_num }" aria-expanded="true" aria-controls="collapse${list.q_num }">
						          ${list.title }
						        </button>
						      </h5>
						    </div>
						    <div id="collapse${list.q_num }" class="collapse show" aria-labelledby="heading${list.q_num }" data-parent="#accordion">
						      <div class="card-body">
								${list.content }
						      </div>
						    </div>
						  </div>
						  </c:if>
						  <c:if test="${status.index != 0}">
						  	<div class="card">
						    <div class="card-header" id="heading${list.q_num }">
						      <h5 class="mb-0">
						        <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse${list.q_num }" aria-expanded="true" aria-controls="collapse${list.q_num }">
						          ${list.title }
						        </button>
						      </h5>
						    </div>
						    <div id="collapse${list.q_num }" class="collapse collapsed" aria-labelledby="heading${list.q_num }" data-parent="#accordion">
						      <div class="card-body">
								${list.content }
						      </div>
						    </div>
						  </div>
						  </c:if>
						  </c:forEach>
						</div>
					</div>
				</div>
			</div>
		</section><!-- #content end -->