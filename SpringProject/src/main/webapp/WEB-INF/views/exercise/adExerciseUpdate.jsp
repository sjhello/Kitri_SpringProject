<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		
		$('#edit').click(function() {
			var numChar = $('#summernote').summernote('code').length;
	    	var maxNum = 4000;
	    	var charRemain = maxNum - numChar;
	    	if(charRemain < 0){
	    		alert("4000자 이하로 수정해주세요.");
	    		location.reload();
	    		return;
			} 
			$('#adEdit').attr('action','adExerciseEdit');
			var strBr = $('#summernote').summernote('code');
			var str = strBr.replace("\n", "\\n" );
			$('textarea[name="contents"]').val(str);
			$('#adEdit').submit();
		});
	});
</script>
<!-- include libraries(jQuery, bootstrap) -->

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
	                <h4 style=" color: red; ">운동법 수정폼</h4>
	            </div>
	            <form class="form-horizontal" id="adEdit" method = "post">
	            <input type="hidden" name="num" value =${adExercise.num } >
	            <div class="widget-body">
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">제목</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control" name = "title" value="${adExercise.title }" maxlength="100">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">내용</label>
                        <textarea type="text" name = "contents" style="display: none;"></textarea>
                        <div class="col-lg-9">
                           	<div id="summernote" style="height:300px">${adExercise.contents }</div>
                        </div>
                    </div>
                    <button type="button" class="btn btn-success btn-square mr-1 mb-2" id = "edit">수정</button>
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

