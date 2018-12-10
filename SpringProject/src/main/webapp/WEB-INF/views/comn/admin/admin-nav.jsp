<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="default-sidebar">
<!-- Begin Side Navbar -->
<nav class="side-navbar box-scroll sidebar-scroll">
	<ul class="list-unstyled">
        <li><a href="admin.do"><i class="la la-bar-chart"></i><span>대시보드</span></a></li>
    </ul>
    <span class="heading">회원</span>
    <ul class="list-unstyled">
        <li><a href="#dropdown-user" aria-expanded="false" data-toggle="collapse"><i class="la la-group"></i><span>회원관리</span></a>
            <ul id="dropdown-user" class="collapse list-unstyled pt-0">
                <li><a href="memberList.do">회원목록</a></li>
                <li><a href="bookMember.do">예약자 목록</a></li>
                <li><a href="inactiveMember.do">휴먼 계정</a></li>
            </ul>
        </li>
    </ul>
    <span class="heading">건강</span>
    <ul class="list-unstyled">
	    <li><a href="#dropdown-health" aria-expanded="false" data-toggle="collapse"><i class="la ti-apple"></i><span>식단</span></a>
	        <ul id="dropdown-health" class="collapse list-unstyled pt-0">
	            <li><a href="adDietWrite.do">식단등록</a></li>
	            <li><a href="adDiet.do">식단조회</a></li>
	        </ul>
	    </li>
	    <li><a href="#dropdown-exercise" aria-expanded="false" data-toggle="collapse"><i class="la la-bicycle"></i><span>운동법</span></a>
	        <ul id="dropdown-exercise" class="collapse list-unstyled pt-0">
	            <li><a href="adExercise.do">운동조회</a></li>
	            <li><a href="adExerciseSelect.do">날짜조회</a></li>
	        </ul>
	    </li>
	</ul>
    <span class="heading">측정</span>
	<ul class="list-unstyled">
        <li><a href="adInbody.do"><i class="la la-yc-square"></i><span>인바디</span></a></li>
        <li><a href="adFixTest.do"><i class="la la-certificate"></i><span>체력검정</span></a></li>
    </ul>  
    <span class="heading">게시판</span>
	<ul class="list-unstyled">
        <li><a href="adqa11.do"><i class="la la-yc-square"></i><span>1:1문의</span></a></li>
        <li><a href="adqa.do"><i class="la la-certificate"></i><span>Q&A</span></a></li>
    </ul>  
</nav>
</div>
