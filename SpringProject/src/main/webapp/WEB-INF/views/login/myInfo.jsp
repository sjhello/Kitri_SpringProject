<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="//code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	/* 패스워드 일치 체크 */
	$('#myInfoPwd').change(function() {
		var pwd = $('#myInfoPwd').val();
		var pwdCheck = $('#myInfoPwdCheck').val();
		
		if (pwd == pwdCheck) {
			$('#check').css('display','none');
		} else {
			$('#check').css('display','');
		}
	});	
	
	$('#myInfoPwdCheck').change(function() {
		var pwd = $('#myInfoPwd').val();
		var pwdCheck = $('#myInfoPwdCheck').val();
		
		if (pwd == pwdCheck) {
			$('#check').css('display','none');
		} else {
			$('#check').css('display','');
		}
	});	
	
	$('#btnEdit').click(function(){
		$('#myInfoForm').attr('action', '${pageContext.request.contextPath}/memberEdit');
		$('#myInfoForm').submit();
	});
});
</script>
<div class="content-wrap">

				<div class="container clearfix">

					<div class="row clearfix">

						<div class="col-md-9">

							<img src="images/icons/avatar.jpg" class="alignleft img-circle img-thumbnail notopmargin nobottommargin" alt="Avatar" style="max-width: 84px;">

							<div class="heading-block noborder">
								<h3>${m.id }님의 개인정보</h3>
								<span>Your Profile Bio</span>
							</div>

							<div class="clear"></div>

							<div class="row clearfix">

								<div class="col-lg-12">

									<div class="tabs tabs-alt clearfix" id="tabs-profile">

										<ul class="tab-nav clearfix">
											<li><a href="#tab-feeds"><i class="icon-rss2"></i>내정보</a></li>
											<li><a href="#tab-posts"><i class="icon-pencil2"></i> Posts</a></li>
											<li><a href="#tab-replies"><i class="icon-reply"></i> Replies</a></li>
											<li><a href="#tab-connections"><i class="icon-users"></i> Connections</a></li>
										</ul>

										<div class="tab-container">


					<div class="col_one">
						<h3>신청 하기</h3>
						<form style="max-width: 25rem;" id="myInfoForm" method="post">
							<div class="form-group">
								<label for="exampleInputId">아이디</label>
								<input id="myInfoId" name="id" type="text" class="form-control" aria-describedby="emailHelp" value="${m.id }" readonly>
								<br>
								<div class="style-msg alertmsg" style="display:none;" id="idCheckFail">
									<div class="sb-msg"><i class="icon-warning-sign"></i><strong>경고!</strong> 이미 존재하는 아이디입니다.</div> 
								</div>
								<div class="style-msg alertmsg" style="display:none;" id="idCheckNull">
									<div class="sb-msg"><i class="icon-warning-sign"></i><strong>경고!</strong> 아이디를 입력해주세요</div> 
								</div>
								<div class="style-msg successmsg" style="display:none;" id="idCheckSuccess">
									<div class="sb-msg"><i class="icon-thumbs-up"></i><strong>사용가능</strong> 사용할 수 있는 아이디입니다.</div>
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">비밀번호</label>
								<input type="password" class="form-control" id="myInfoPwd" name="pwd" value="${m.pwd }">
							</div>
							<div class="form-group">
								<label for="exampleInputPasswordCheck">비밀번호체크</label>
								<input type="password" class="form-control" id="myInfoPwdCheck" value="${m.pwd }">
								<br>
								<div class="style-msg alertmsg" id='check' style="display:none;">
									<div class="sb-msg"><i class="icon-warning-sign"></i><strong>경고!</strong> 비밀번호가 일치하지 않습니다.</div> 
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputName">이름</label>
								<input type="text" class="form-control" name="name" id="name" value="${m.name }">
							</div>
							<div class="form-group">
								<label for="exampleInputTel">전화번호</label>
								<input type="text" class="form-control" id="tel" name="tel" value="${m.tel }">
							</div>
							<div class="form-group">
								<label for="exampleInputTel">성별</label>
								<input type="text" class="form-control" id="sex" name="sex" value="${m.sex }" readonly>
							</div>
							<div class="form-group">
                                <label for="exampleInputTel">연령</label>
								<input type="text" class="form-control" id="age" name="age" value="${m.age }" readonly>
                            </div>
							<div class="form-group">
								<label for="exampleInputEmail">이메일</label>
								<input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" value="${m.email }" readonly>
								<br>
								<div class="style-msg alertmsg" style="display:none;" id="emailCheckFail">
									<div class="sb-msg"><i class="icon-warning-sign"></i><strong>경고!</strong> 이미 존재하는 이메일 입니다.</div> 
								</div>
								<div class="style-msg successmsg" style="display:none;" id="emailCheckSuccess">
									<div class="sb-msg"><i class="icon-thumbs-up"></i><strong>사용가능</strong> 사용할 수 있는 이메일입니다.</div>
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail">주소</label>
								<!-- <input type="text" class="form-control" id="address" name="address" aria-describedby="emailHelp">
								<br> -->
								<div style="width:100%">
									<input type="text" class="form-control" id="postnum" name="postnum" placeholder="우편번호" style="width:30%;float:left" value="${m.postnum }" readonly>
		                            <input type="button" style="width:110px;" class="btn btn-primary mt-3" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
                            	</div>
		                            <input type="text" class="form-control" id="signAddress1" name="signAddress1" placeholder="도로명주소" value="${addr1 }" readonly>
		                            <input type="text" class="form-control" id="signAddress2" name="signAddress2" placeholder="상세주소" value="${addr2 }">
							</div>
							<button type="submit" class="btn btn-primary mt-3" id="btnEdit">수정</button>
						</form>
					</div>
											
											
											
											
											

										</div>

									</div>

								</div>

							</div>

						</div>

						<div class="w-100 line d-block d-md-none"></div>

						<div class="col-md-3 clearfix">

							<div class="list-group">
								<a href="#" class="list-group-item list-group-item-action clearfix">탈퇴하기 <i class="icon-laptop2 float-right"></i></a>
							</div>

							<div class="fancy-title topmargin title-border">
								<h4>Social Profiles</h4>
							</div>

							<a href="#" class="social-icon si-facebook si-small si-rounded si-light" title="Facebook">
								<i class="icon-facebook"></i>
								<i class="icon-facebook"></i>
							</a>

							<a href="#" class="social-icon si-gplus si-small si-rounded si-light" title="Google+">
								<i class="icon-gplus"></i>
								<i class="icon-gplus"></i>
							</a>

							<a href="#" class="social-icon si-dribbble si-small si-rounded si-light" title="Dribbble">
								<i class="icon-dribbble"></i>
								<i class="icon-dribbble"></i>
							</a>

							<a href="#" class="social-icon si-flickr si-small si-rounded si-light" title="Flickr">
								<i class="icon-flickr"></i>
								<i class="icon-flickr"></i>
							</a>

							<a href="#" class="social-icon si-linkedin si-small si-rounded si-light" title="LinkedIn">
								<i class="icon-linkedin"></i>
								<i class="icon-linkedin"></i>
							</a>

							<a href="#" class="social-icon si-twitter si-small si-rounded si-light" title="Twitter">
								<i class="icon-twitter"></i>
								<i class="icon-twitter"></i>
							</a>

						</div>

					</div>

				</div>

			</div>