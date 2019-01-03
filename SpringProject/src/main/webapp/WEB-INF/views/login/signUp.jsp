<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript">
	$(document).ready(function(){
		
		$('#searchValue').change(function(){
			var searchValue = $('#searchValue').val();
			var param = "searchValue="+searchValue;
			$.ajax({
				type:"GET",
				url:"${pageContext.request.contextPath}/postSearchAjax",
				data:param,
				success:function(data){
					var arr = eval('('+data+')');
					var str = "";
					str = "<table border=1>";
					
					var zipNo;
					var lnmAdres;
					var rnAdres;
					
					if (arr[0].zipNo != "") {
						str += "<tr>";
						str += "<th>우편번호</th>";
						str += "<th>도로명주소</th>";
						str += "<th>지번주소</th>";
						str += "</tr>";
						for(i=0; i<arr.length; i++){
							zipNo = arr[i].zipNo;
							lnmAdres = arr[i].lnmAdres;
							rnAdres = arr[i].rnAdres;
							
							str += "<tr>";
							str += "<td>"+zipNo+"</td>";
							str += "<td><a href='javascript:;' onclick=\"address("+zipNo+",'"+lnmAdres+"')\">"+lnmAdres+"</a></td>";
							str += "<td><a href='javascript:;' onclick=\"address("+zipNo+",'"+rnAdres+"')\">"+rnAdres+"</a></td>";
							str += "</tr>"
						}
						str += "</table>";
						$('#result').html(str);
					} else {
						$('#result').html("");
					}
				}
			});
		});
	});
</script>
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
		
		/* 우편번호 검색 */
		
		
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
									<input type="text" class="form-control" id="postnum" name="postnum" placeholder="우편번호" style="width:30%;float:left" readonly>
		                            <a href="#myModal1" data-lightbox="inline" class="button button-large button-rounded" style=" margin: 0px; height: 38px; margin-left: 6px; line-height: 40px; ">우편번호찾기</a>
                            	</div>
                            	
                            	
                            	
                            	<!-- Modal -->
								<div class="modal1 mfp-hide" id="myModal1">
									<div class="block divcenter" style="background-color: #FFF; max-width: 500px;">
										<div class="center" style="padding: 50px;">
											주소 입력 : <input type="text" id="searchValue"><br>
											<div id="result">
											</div>
										</div>
										<div class="section center nomargin" style="padding: 30px;">
											<a href="#" class="button" onClick="$.magnificPopup.close();return false;">Close this Modal</a>
										</div>
									</div>
								</div>
	                            <input type="text" class="form-control" id="signAddress1" name="signAddress1" placeholder="도로명주소" readonly>
	                            <input type="text" class="form-control" id="signAddress2" name="signAddress2" placeholder="상세주소">
							</div>
							<button type="submit" class="btn btn-primary mt-3" id="btnAdd">신청</button>
							<button type="submit" class="btn btn-primary mt-3">취소</button>
						</form>
					</div>
				</div>
			</div>
		</section><!-- #content end -->



<script>
	function address(no, data){
		$('#postnum').val(no);
		$('#signAddress1').val(data);
		$.magnificPopup.close();
		return false;
	};

	function postCode(){
		var win = null;
		win = window.open("${pageContext.request.contextPath}/postSearch", "win", "width=500, height=500, top=200, left=200");			
	};
</script>





