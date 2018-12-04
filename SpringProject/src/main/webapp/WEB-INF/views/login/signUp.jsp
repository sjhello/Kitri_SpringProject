<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="//code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnAdd').click(function(){
			var id = $('#id').val();
			if(id=='' || id==null){
				alert('id를 입력하세요');
				return ;
			}
			$('#f').attr('action', '${pageContext.request.contextPath}/memberAdd');
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
		
		/* id 중복체크 */
		$('#id').change(function(){
			var id = $('#id').val();
			var param = "id="+id;
			
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/memberIdCheck",
				data:param,
				success:function(data){
					var obj = eval('('+data+')');
					if(obj.flag){	// 사용 가능한 아이디
						$('#idCheckSuccess').css('display','');
						$('#idCheckFail').css('display','none');
					} else {	// 중복된 아이디
						$('#idCheckFail').css('display','');
						$('#idCheckSuccess').css('display','none');
					}
				}
			});
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
								<div class="style-msg alertmsg" style="display:none;" id="idCheckFail">
									<div class="sb-msg"><i class="icon-warning-sign"></i><strong>경고!</strong> 이미 존재하는 아이디입니다.</div> 
								</div>
								<div class="style-msg successmsg" style="display:none;" id="idCheckSuccess">
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
								<select name="sex" class="custom-select form-control">
                                    <option>남성</option>
                                    <option>여성</option>
                                </select>
							</div>
							<div class="form-group">
                                <label for="exampleAge">연령</label>
                                <select name="age" class="custom-select form-control">
                                    <option>10대</option>
                                    <option>20대</option>
                                    <option>30대</option>
                                    <option>40대</option>
                                    <option>50대</option>
                                    <option>60대</option>
                                </select>
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
								<input type="text" class="form-control" id="address" name="address" aria-describedby="emailHelp" placeholder="Email">
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