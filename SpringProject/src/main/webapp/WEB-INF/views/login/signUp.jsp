<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="//code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnAdd').click(function(){
			$('#f').attr('action', '${pageContext.request.contextPath}/member/add');
			$('#f').submit();
		});
		
		/* 패스워드 일치 체크 */
		$('#pwd').change(function() {
			var pwd = $('#pwd').val();
			var pwdCheck = $('#pwdCheck').val();
			
			if (pwd == pwdCheck) {
				$('#check').css('display','none');
			} else {
				$('#check').css('display','');
			}
		});
		
		$('#pwdCheck').change(function() {
			var pwd = $('#pwd').val();
			var pwdCheck = $('#pwdCheck').val();
			
			if (pwd == pwdCheck) {
				$('#check').css('display','none');
			}else {
				$('#check').css('display','');
			}
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
					<li class="breadcrumb-item active" aria-current="page"><a href="signUp.do">신청</a></li>
				</ol>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix" style="margin-bottom: 175px;">

					<div class="col_one">
						<h3>신청 하기</h3>

						<form style="max-width: 25rem;" id="f" method="post">
							<div class="form-group">
								<label for="exampleInputId">아이디</label>
								<input id="id" name="id" type="text" class="form-control" aria-describedby="emailHelp" placeholder="Enter id">
								<br>
								<div class="style-msg alertmsg">
									<div class="sb-msg"><i class="icon-warning-sign"></i><strong>경고!</strong> 이미 존재하는 아이디입니다.</div> 
								</div>
								<div class="style-msg successmsg">
									<div class="sb-msg"><i class="icon-thumbs-up"></i><strong>사용가능</strong> 사용할 수 있는 아이디입니다.</div>
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">비밀번호</label>
								<input type="password" class="form-control" id="pwd" name="pwd" placeholder="Password">
							</div>
							<div class="form-group">
								<label for="exampleInputPasswordCheck">비밀번호체크</label>
								<input type="password" class="form-control" id="pwdCheck" placeholder="PasswordCheck">
								<br>
								<div class="style-msg alertmsg" id='check'>
									<div class="sb-msg"><i class="icon-warning-sign"></i><strong>경고!</strong> 비밀번호가 일치하지 않습니다.</div> 
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputName">이름</label>
								<input type="text" class="form-control" name="name" id="name" placeholder="Name">
							</div>
							<div class="form-group">
								<label for="exampleInputTel">전화번호</label>
								<input type="text" class="form-control" id="tel" name="tel" placeholder="Tel">
							</div>
							<div class="form-group">
								<label for="exampleInputSex">성별</label>
								<input type="text" class="form-control" id="sex" name="sex" placeholder="Sex">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail">이메일</label>
								<input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" placeholder="Email">
								<br>
								<div class="style-msg alertmsg">
									<div class="sb-msg"><i class="icon-warning-sign"></i><strong>경고!</strong> 이미 존재하는 이메일 입니다.</div> 
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail">주소</label>
								<input type="email" class="form-control" id="address" name="address" aria-describedby="emailHelp" placeholder="Email">
								<br>
								<div class="style-msg alertmsg">
									<div class="sb-msg"><i class="icon-warning-sign"></i><strong>경고!</strong> 이미 존재하는 이메일 입니다.</div> 
								</div>
							</div>
							<button type="submit" class="btn btn-primary mt-3" id="btnAdd">신청</button>
							<button type="submit" class="btn btn-primary mt-3">취소</button>
						</form>
					</div>
				</div>
			</div>
		</section><!-- #content end -->