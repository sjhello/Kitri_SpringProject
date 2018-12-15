<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="text/javascript">
var id;
var situp, pushup, pullup, squat, burpee;
	$(document).ready(function(){
		$('#insert-btn').click(function(){
			/* id=$('#id').val();
			situp=$('#situp').val();
			pushup=$('#pushup').val();
			pullup=$('#pullup').val();
			squat=$('#squat').val();
			burpee=$('#burpee').val(); */
			$('#fitForm').attr('action', '${pageContext.request.contextPath}/adFitTestInsert.do');
			$('#fitForm').submit();
		});
	});
</script>
<div class="container-fluid">
	<div class="row flex-row">
	    <div class="col-12">
	        <!-- Form -->
	        <div class="widget has-shadow">
	            <div class="widget-header bordered no-actions d-flex align-items-center">
	                <h4 style=" color: red; ">체력측정</h4>
	            </div>
	            <form class="form-horizontal" id="fitForm" method="post">
	            <div class="widget-body">
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">아이디</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" id="id">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">싯업</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" id="situp">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">푸쉬업</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" id="pushup">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">풀업</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" id="pullup">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">스쿼트</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" id="squat">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">버피</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" id="burpee">
                        </div>
                    </div>
                   	<button type="submit" class="btn btn-success btn-square mr-1 mb-2" id="insert-btn">작성</button>
                    <a href="bookMember.do"><button type="button" class="btn btn-secondary btn-square mr-1 mb-2">취소</button></a>
	            </div>
            	</form>
	            </div>
	        </div>
	        <!-- End Form -->
	    </div>
	</div>
	<!-- End Row -->
</div>

