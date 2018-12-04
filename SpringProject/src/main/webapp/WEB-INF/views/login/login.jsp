<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script>
    	//alert("비밀번호가 틀렸습니다.");
    	
    	$(document).ready(function() {
    		$('#signUp').click(function() {
    			location.href="signUp.do";	
    		});
    		
    		$('#btnLogin').click(function(){
    			$('#f').attr('action', '${pageContext.request.contextPath}/member/login');
    			$('#f').submit();
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
					<li class="breadcrumb-item active" aria-current="page"><a href="login.do">로그인</a></li>
				</ol>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix" style="margin-bottom: 175px;">

					<div class="col_one">
						<h3>Simple Form</h3>

						<form style="max-width: 25rem;" method="post" id="f">
							<div class="form-group">
								<label for="exampleInputEmail1">아이디</label>
								<input type="text" class="form-control" id="id" name="id" aria-describedby="emailHelp" placeholder="Enter id">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">비밀번호</label>
								<input type="password" class="form-control" id="pwd" name="pwd" placeholder="Password">
							</div>
							<div class="form-check">
								<input type="checkbox" class="form-check-input" id="exampleCheck1">
								<label class="form-check-label" for="exampleCheck1">Check me out</label>
							</div>
							<button type="submit" class="btn btn-primary mt-3" id="btnLogin">로그인</button>
							<button id="signUp" type="button" class="btn btn-primary mt-3">신청하러가기</button>
						</form>
					</div>
				</div>
			</div>
		</section><!-- #content end -->