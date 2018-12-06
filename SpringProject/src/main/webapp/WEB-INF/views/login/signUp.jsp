<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="//code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnAdd').click(function(){
			var id = $('#id').val();
			var pwd = $('#pwd').val();
			var pwdCheck = $('#pwdCheck').val();
			var name = $('#name').val();
			var tel = $('#tel').val();
			var email = $('#email').val();
			var postnum = $('#postnum').val();
			if(id=='' || id==null || pwd=='' || pwd==null || pwdCheck=='' || pwdCheck==null
					|| name=='' || name==null || tel=='' || tel==null  
					|| email=='' || email==null || postnum=='' || postnum==null){
				alert('항목을 입력해주세요');
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
			
			if(id==''||id==null){
				$('#idCheckNull').css('display','');
			} else {
				$('#idCheckNull').css('display','none');
			}
			
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/memberIdCheck",
				data:param,
				success:function(data){
					var obj = eval('('+data+')');
					if(obj.flag){	// 사용 가능한 아이디
						$('#idCheckSuccess').css('display','');
						$('#idCheckFail').css('display','none');
						if(id==''||id==null){
							$('#idCheckSuccess').css('display','none');
							$('#idCheckFail').css('display','none');
						}
					} else {	// 중복된 아이디
						$('#idCheckFail').css('display','');
						$('#idCheckSuccess').css('display','none');
						if(id=='' || id==null){
							$('#idCheckSuccess').css('display','none');
							$('#idCheckFail').css('display','none');
						}
					}					
				}
			});
			
		});
		
		/* email 중복체크*/
		$('#email').change(function(){
			var email = $('#email').val();
			var param = "email="+email;
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/memberEmailCheck",
				data:param,
				success:function(data){
					var obj = eval('('+data+')');
					if(obj.flag){	// 사용 가능한 이메일
						$('#emailCheckSuccess').css('display','');
						$('#emailCheckFail').css('display','none');
					} else {	// 중복된 이메일
						$('#emailCheckFail').css('display','');
						$('#emailCheckSuccess').css('display','none');
					}
				}
			});
		});
		
		/* validation Check */
		
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
								<div class="style-msg alertmsg" style="display:none;" id="idCheckNull">
									<div class="sb-msg"><i class="icon-warning-sign"></i><strong>경고!</strong> 아이디를 입력해주세요</div> 
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
									<input type="text" class="form-control" id="postnum" name="postnum" placeholder="우편번호" style="width:30%;float:left">
		                            <input type="button" style="width:110px;" class="btn btn-primary mt-3" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
                            	</div>
		                            <input type="text" class="form-control" id="signAddress1" name="signAddress1" placeholder="도로명주소">
		                            <input type="text" class="form-control" id="signAddress2" name="signAddress2" placeholder="상세주소">
							</div>
							<button type="submit" class="btn btn-primary mt-3" id="btnAdd">신청</button>
							<button type="submit" class="btn btn-primary mt-3">취소</button>
						</form>
					</div>
				</div>
			</div>
		</section><!-- #content end -->

<!-- 도로명 API -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수
                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }
                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postnum').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('signAddress1').value = fullAddr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('signAddress2').focus();
            }
        }).open();
    }
</script>