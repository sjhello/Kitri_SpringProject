<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
    
<script src="assets/js/components/datepicker/datepicker.js"></script>
<script src="assets/vendors/js/datepicker/moment.min.js"></script>
<script src="assets/vendors/js/datepicker/daterangepicker.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		var sendFile = function (file, el) {
			var form_data = new FormData();
			form_data.append('file', file);
			$.ajax({
				data: form_data,
				type: "POST",
				url: 'imageUpload.do',
				processData: false,
				contentType: false,
				enctype: 'multipart/form-data',
				success: function(url) {
					$(el).summernote('editor.insertImage', url);
					el.append('<li><img src="'+url+'" width="100%" height="auto"/></li>');
        		},
        		error : function() {
					alert("에러발생");
				}
			});
		}
		
	  	$('#summernote').summernote({
      	    lang : 'ko-KR',
      	 	height: 300,
      	 	callbacks: {
				onImageUpload: function(files, welEditabl) {
					for (var i = files.length - 1; i >= 0; i--) {
					  sendFile(files[i], this);
					}
				}
           }
        });
		
		$('#write').click(function() {
			var numChar = $('#summernote').summernote('code').length;
	    	var maxNum = 4000;
	    	var charRemain = maxNum - numChar;
	    	
	    	if (charRemain < 0) {
	    		alert("4000자 이하로 입력해주세요.");
	    		location.reload();
	    		return;
			} 
	    	
			$('#adWrite').attr('action','${pageContext.request.contextPath}/adExerciseInsert');
			var strBr = $('#summernote').summernote('code');
			var str = strBr.replace(/\n/gi, "\\n" );
			$('textarea[name="contents"]').val(str);
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
	            <input type="hidden" name="type" value="${param.type }">
	            <div class="widget-body">
	            	<div class="form-group row d-flex align-items-center mb-5 has-info">
			            <label class="col-lg-3 form-control-label">등록할 날짜</label>
			            <div class="col-lg-9">
		                    <div class="form-group">
		                        <div class="input-group">
		                            <input type="text" class="form-control" id="date" placeholder="Select value" name="w_date">
		                        </div>
		                    </div>
		                </div>
	                </div>
	            	<div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">저체중 / 정상체중 / 과F체중 </label>
                        <div class="col-lg-9 select mb-3">
						    <select name="w_level" class="custom-select form-control">
						        <option value=1>저체중</option>
						        <option value=2>정상체중</option>
						        <option value=3>과체중</option>
						    </select>
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
                        	<textarea name = "contents" style="display: none;"></textarea>
                           	<div id="summernote" style="height:300px"></div>
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

