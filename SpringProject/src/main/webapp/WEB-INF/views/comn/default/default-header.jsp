<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header id="header" class="transparent-header full-header" data-sticky-class="not-dark">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<div id="header-wrap">
	<c:set var="id" value="${sessionScope.id }" />
		<div class="container clearfix">
	
			<div id="primary-menu-trigger"><i class="icon-reorder"></i></div>
	
			<!-- Logo
			============================================= -->
			<div id="logo">
				<a href="main.do" class="standard-logo" data-dark-logo="images/logo-dark.png"><img src="images/logo.png" alt="Canvas Logo"></a>
				<a href="main.do" class="retina-logo" data-dark-logo="images/logo-dark@2x.png"><img src="images/logo@2x.png" alt="Canvas Logo"></a>
			</div><!-- #logo end -->
	
			<!-- Primary Navigation
			============================================= -->
			<nav id="primary-menu" class="dark">
	
				<ul>
					<li class="current"><a href="intro.do"><div>ANYFIT</div></a>
						<ul>
							<li><a href="intro.do"><div>소개</div></a></li>
							<li><a href="way.do"><div>오시는길</div></a></li>
						</ul>
					</li>
					<li class="current"><a href="notice.do"><div>공지사항</div></a>
					</li>
					<c:if test="${id==null }">
						<li class="current"><a href="#" data-toggle="modal" data-target="#myModal"><div>로그인</div></a>
						</li>
					</c:if>
					<li class="current"><a href="qa11.do"><div>1:1문의</div></a>
					</li>
					<c:if test="${id==null }">
						<li class="current"><a href="signUp.do"><div>신청 및 회원가입</div></a>
						</li>
					</c:if>
					<li class="current"><a href="diet.do"><div>식단</div></a>
					</li>
					<li class="current"><a href="exercise.do"><div>운동법</div></a>
					</li>
					<c:if test="${id!=null }">
						<li class="current"><a href="calendar.do"><div>내상태보기</div></a>
							<ul>
								<li><a href="calendar.do"><div>캘린더</div></a></li>
								<li><a href="inbody.do"><div>인바디</div></a></li>
								<li><a href="fitTest.do"><div>체력검정</div></a></li>
							</ul>
						</li>
					</c:if>
					<li class="current"><a href="qa.do"><div>Q&A</div></a>
					</li>
					<c:if test="${id=='admin' }">
						<li class="current"><a href="admin.do"><div>${id }</div></a>
						</li>
					</c:if>
					<c:if test="${id!='admin' }">
						<li class="current"><a href="#"><div>${id }</div></a>
						</li>
					</c:if>
					<c:if test="${id!=null }">
						<li class="current"><a href=${pageContext.request.contextPath}/memberLogout><div>로그아웃</div></a>
						</li>
					</c:if>
				</ul>
			</nav><!-- #primary-menu end -->
	
			</div>
	
		</div>
	
</header><!-- #header end -->