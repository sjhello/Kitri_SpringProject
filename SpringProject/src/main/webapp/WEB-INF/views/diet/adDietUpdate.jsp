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
        $('#summernote2').summernote({
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
        $('#summernote3').summernote({
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
        $('#summernote4').summernote({
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
        $('#summernote5').summernote({
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
        $('#summernote6').summernote({
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
    	
    	var selected1 = ${count};
    	var selected2 = 5 - selected1;
    	$("#select option:eq("+selected2+")").prop("selected", true);
    	for (var a=1; a<7; a++) {
    		$('#divContent'+a).attr('style','display:none!important');
    	}
    	var optionSelected = $(this).find("option:selected");
        var valueSelected  = optionSelected.val();
        var select3 = selected2+1;
        
        for (var a=0; a<select3; a++) {
    		$('#divContent'+(a+1)).attr('style','display:flex!important');
    	}
        
        $("#f_level").val("${list.f_level}").prop("selected", true);
        $("#mealtime").val("${list.mealtime}").prop("selected", true);
        
        //개수만큼 전송
        $('#select').change(function() {
        	for (var a=1; a<7; a++) {
        		$('#divContent'+a).attr('style','display:none!important');
        	}
        	var optionSelected = $(this).find("option:selected");
            var valueSelected  = optionSelected.val();
            
            
            for (var a=0; a<valueSelected; a++) {
        		$('#divContent'+(a+1)).attr('style','display:flex!important');
        	}
            
        });
        
        $('#dietButton').click(function() {
        	var numChar;
        	var maxNum;
        	var charRemain;
        	var check=0;
        	
        	var optionSelected = $('#select').find("option:selected");
            var valueSelected  = optionSelected.val();
            
            for (var i = 0; i < valueSelected; i++) {
            	numChar = $('#summernote'+(i+1)).summernote('code').length;
    	    	maxNum = 4000;
    	    	charRemain = maxNum - numChar;
    	    	
    	    	if (charRemain < 0) {
    	    		alert((i+1)+"번째 게시물을 4000자 이하로 입력해주세요.");
    	    		check=1;
    	    		alert("아");
    	    		return;
    			} 
    	    	
    			var strBr = $('#summernote'+(i+1)).summernote('code');
    			var str = strBr.replace("\n", "\\n" );
    			$('textarea[name="f' + (i+1) + '"]').val(str);
            }
            
            if (check == 1) {
            	return;
            }
            $('#dietUpdateForm').submit();
        });
        
    });
</script>

<div class="container-fluid">
	<div class="row flex-row">
	    <div class="col-12">
	        <!-- Form -->
	        <div class="widget has-shadow">
	            <div class="widget-header bordered no-actions d-flex align-items-center">
	                <h4 style=" color: red; ">식단 수정폼</h4>
	            </div>
	            <form id="dietUpdateForm" class="form-horizontal" action="adDietUpdate.do" method="post">
	            <input type="hidden" name="num" value="${list.num }">
	            <div class="widget-body">
	            	<div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">저체중 / 정상체중 / 과체중 </label>
                        <div class="col-lg-9 select mb-3">
						    <select id="f_level" name="f_level" class="custom-select form-control">
						        <option value="저체중">저체중</option>
						        <option value="정상체중">정상체중</option>
						        <option value="과체중">과체중</option>
						    </select>
						</div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">아침 / 점심 / 저녁 </label>
                        <div class="col-lg-9 select mb-3">
						    <select id="mealtime" name="mealtime" class="custom-select form-control">
						        <option value="아침">아침</option>
						        <option value="점심">점심</option>
						        <option value="저녁">저녁</option>
						    </select>
						</div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">작성할 게시물의 개수</label>
                        <div class="col-lg-9 select mb-3">
						    <select id="select" class="custom-select form-control">
						        <option value=1 selected="selected">1개</option>
						        <option value=2>2개</option>
						        <option value=3>3개</option>
						        <option value=4>4개</option>
						        <option value=5>5개</option>
						        <option value=6>6개</option>
						    </select>
						</div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info" id="divContent1">
                        <label class="col-lg-3 form-control-label">선택1</label>
                        <textarea id="f" name="f" style="display: none;"></textarea>
                        <div class="col-lg-9">
                           	<div id="summernote1" style="height:300px">${list.f }</div>
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info" id="divContent2" style="display:none!important">
                        <label class="col-lg-3 form-control-label">선택2</label>
                        <textarea id="f2" name="f2" style="display: none;"></textarea>
                        <div class="col-lg-9">
                           	<div id="summernote2" style="height:300px">${list.f2 }</div>
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info" id="divContent3" style="display:none!important">
                        <label class="col-lg-3 form-control-label">선택3</label>
                        <textarea id="f3" name="f3" style="display: none;"></textarea>
                        <div class="col-lg-9">
                           	<div id="summernote3" style="height:300px">${list.f3 }</div>
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info" id="divContent4" style="display:none!important">
                        <label class="col-lg-3 form-control-label">선택4</label>
                        <textarea id="f4" name="F4" style="display: none;"></textarea>
                        <div class="col-lg-9">
                           	<div id="summernote4" style="height:300px">${list.f4 }</div>
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info" id="divContent5" style="display:none!important">
                        <label class="col-lg-3 form-control-label">선택5</label>
                        <textarea id="f5" name="f5" style="display: none;"></textarea>
                        <div class="col-lg-9">
                           	<div id="summernote5" style="height:300px">${list.f5 }</div>
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info" id="divContent6" style="display:none!important">
                        <label class="col-lg-3 form-control-label">선택6</label>
                        <textarea id="f6" name="f6" style="display: none;"></textarea>
                        <div class="col-lg-9">
                           	<div id="summernote6" style="height:300px">${list.f6 }</div>
                        </div>
                    </div>
                    <button type="button" class="btn btn-success btn-square mr-1 mb-2" id="dietButton">수정</button>
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

