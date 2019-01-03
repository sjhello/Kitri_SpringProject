<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="assets/js/components/datepicker/datepicker.js"></script>
<script src="assets/vendors/js/datepicker/moment.min.js"></script>
<script src="assets/vendors/js/datepicker/daterangepicker.js"></script>

<!-- include summernote css/js -->
<link href="css/summernote.css" rel="stylesheet">
<script src="js/summernote.js"></script>

<!-- include summernote-ko-KR -->
<script src="lang/summernote-ko-KR.js"></script>
<script>
    $(document).ready(function() {
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
    	
    	//summernote 사용
		$('#summernote1').summernote({
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
        
        $('#dietButton').click(function() {
        	var numChar;
        	var maxNum;
        	var charRemain;
        	var check=0;
        	
        	var optionSelected = $('#select').find("option:selected");
            var valueSelected  = optionSelected.val();
            
    	    	
   			var strBr = $('#summernote1').summernote('code');
   			var str = strBr.replace("\n", "\\n" );
   			$('textarea[name="f"]').val(str);
            
            $('#dietWriteForm').submit();
        });
        
    });
</script>

<div class="container-fluid">
	<div class="row flex-row">
	    <div class="col-12">
	        <!-- Form -->
	        <div class="widget has-shadow">
	            <div class="widget-header bordered no-actions d-flex align-items-center">
	                <h4 style=" color: red; ">식단 등록</h4>
	            </div>
	            <form id="dietWriteForm" class="form-horizontal" action="adDietWrite.do" method="post">
	            <input type="hidden" name="type" value="${param.type }">
	            <div class="widget-body">
	            	<div class="form-group row d-flex align-items-center mb-5 has-info">
			            <label class="col-lg-3 form-control-label">등록할 날짜</label>
			            <div class="col-lg-9">
		                    <div class="form-group">
		                        <div class="input-group">
		                            <input type="text" class="form-control" id="date" placeholder="Select value" name="f_date">
		                        </div>
		                    </div>
		                </div>
	                </div>
	            	<div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">저체중 / 정상체중 / 과체중 </label>
                        <div class="col-lg-9 select mb-3">
						    <select name="f_level" class="custom-select form-control">
						        <option value="저체중">저체중</option>
						        <option value="정상체중">정상체중</option>
						        <option value="과체중">과체중</option>
						    </select>
						</div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">아침 / 점심 / 저녁 </label>
                        <div class="col-lg-9 select mb-3">
						    <select name="mealtime" class="custom-select form-control">
						        <option value="아침">아침</option>
						        <option value="점심">점심</option>
						        <option value="저녁">저녁</option>
						    </select>
						</div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info" id="divContent1">
                        <label class="col-lg-3 form-control-label">선택1</label>
                        <textarea id="f" name="f" style="display: none;"></textarea>
                        <div class="col-lg-9">
                           	<div id="summernote1" style="height:300px"><p>Hello Summernote</p></div>
                        </div>
                    </div>
                    <button type="button" class="btn btn-success btn-square mr-1 mb-2" id="dietButton">작성</button>
                    <a href="diet.do"><button type="button" class="btn btn-secondary btn-square mr-1 mb-2">취소</button></a>
	            </div>
            	</form>
	            </div>
	        </div>
	        <!-- End Form -->
	    </div>
	</div>
	<!-- End Row -->
</div>

