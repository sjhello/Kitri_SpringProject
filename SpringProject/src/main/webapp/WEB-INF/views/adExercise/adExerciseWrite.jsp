<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="assets/js/components/datepicker/datepicker.js"></script>
<script src="assets/vendors/js/datepicker/moment.min.js"></script>
<script src="assets/vendors/js/datepicker/daterangepicker.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$('#write').click(function() {
			var numChar = $('#summernote').summernote('code').length;
	    	var maxNum = 4000;
	    	var charRemain = maxNum - numChar;
	    	if(charRemain < 0){
	    		alert("4000자 이하로 입력해주세요.");
	    		location.reload();
	    		return;
			} 
			$('#adWrite').attr('action','${pageContext.request.contextPath}/adExerciseInsert');
			$('textarea[name="contents"]').val($('#summernote').summernote('code'));
			$('#adWrite').submit();
		});
	});
</script>

<!-- include summernote css/js -->
<link href="css/summernote.css" rel="stylesheet">
<script src="js/summernote.js"></script>

<!-- include summernote-ko-KR -->
<script src="lang/summernote-ko-KR.js"></script>

<div class="container-fluid">
	<div class="row flex-row">
	    <div class="col-12">
	        <!-- Form -->
	        <div class="widget has-shadow">
	            <div class="widget-header bordered no-actions d-flex align-items-center">
	                <h4 style=" color: red; ">운동법 등록</h4>
	            </div>
	            <form class="form-horizontal" id="adWrite" method = "post">
	            <input type="hidden" name="className" value="fc-bg-default">
	            <div class="widget-body">
	            	<div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">저체중 / 정상체중 / 과체중 선택</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" name = "f_level" maxlength="20">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">제목</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" name = "title" maxlength="100">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label" name = "contents">내용</label>
                        <div class="col-lg-9">
                        	<textarea type="text" name = "contents" style="display: none;"></textarea>
                           	<div id="summernote" style="height:300px">
                           	</div>
							<script>
							    $(document).ready(function() {
							        $('#summernote').summernote({
						        	    lang : 'ko-KR'
							        });
							    });
							</script>
                        </div>
                    </div>
                    <button type="button" class="btn btn-success btn-square mr-1 mb-2" id = "write" >작성</button>
                    <a href="adExerciseDetail.do"><button type="button" class="btn btn-secondary btn-square mr-1 mb-2">취소</button></a>
	            </div>
            	</form>
	            </div>
	        </div>
	        <!-- End Form -->
	    </div>
	</div>
	<!-- End Row -->
</div>

