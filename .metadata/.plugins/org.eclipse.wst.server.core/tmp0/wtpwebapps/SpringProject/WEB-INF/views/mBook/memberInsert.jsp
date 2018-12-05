<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script type="text/javascript">
	$(document).ready(function(){
		/* 관리자 승인 */
		$('#adminConfirm').click(function(){
			$('#f').attr('action', '${pageContext.request.contextPath}/bookMember.do');
			$('#f').submit();
		});
		
		/* 관리자 회원정보 수정 */
		$('#adminMemberEdit').click(function(){
			$('#f').attr('action', '${pageContext.request.contextPath}/adminMemberUpdate');
			$('#f').submit();
		});
	});
	
	$(document).ready(function(){
		var param = "id="+$('#id').val();
		$.ajax({
			type:"POST",
			url:"${pageContext.request.contextPath}/memberReservationCheck",
			data:param,
			success:function(data){
				var obj = eval('('+data+')');
				if(!obj.flag){
					$('#adminConfirm').css('display','none');
				}
			}
		});
	});
</script>
<div class="container-fluid">
	<div class="row flex-row">
	    <div class="col-12">
	        <!-- Form -->
	        <div class="widget has-shadow">
	            <div class="widget-header bordered no-actions d-flex align-items-center">
	                <h4 style=" color: red; ">관리자</h4>
	            </div>
	            <form class="form-horizontal" id="f" method="post">
	            <div class="widget-body">
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">아이디</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" name="id" value="${m.id }" id="id" readonly>
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">비밀번호</label>
                        <div class="col-lg-9">
                            <input type="password" class="form-control" value="${m.pwd }" name="pwd" readonly>
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">이름</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" value="${m.name }" name="name">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">전화번호</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" value="${m.tel }" name="tel">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">주소</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" value="${m.address }" name="address">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">이메일</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" value="${m.email }" name="email">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">성별</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" value="${m.sex }" readonly name="sex">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">연령대</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" value="${m.age }" name="age">
                        </div>
                    </div>
	            </div>	            
	            <button type="button" id="adminConfirm" class="btn btn-success btn-square mr-1 mb-2">승인</button>
	            <button type="button" id="adminMemberEdit" class="btn btn-success btn-square mr-1 mb-2">회원정보 수정</button>
                <a href="bookMember.do"><button type="button" class="btn btn-secondary btn-square mr-1 mb-2">취소</button></a>
	            </form>
	        </div>
	        <!-- End Form -->
	    </div>
	</div>
	<!-- End Row -->
</div>

