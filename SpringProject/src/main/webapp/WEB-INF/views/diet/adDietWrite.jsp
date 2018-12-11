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
    	
    	//summernote 사용
        $('#summernote1').summernote({
       	    lang : 'ko-KR',
       	 	height: 300 
        });
        $('#summernote2').summernote({
       	    lang : 'ko-KR',
       	 	height: 300 
        });
        $('#summernote3').summernote({
       	    lang : 'ko-KR',
       	 	height: 300 
        });
        $('#summernote4').summernote({
       	    lang : 'ko-KR',
       	 	height: 300 
        });
        $('#summernote5').summernote({
       	    lang : 'ko-KR',
       	 	height: 300 
        });
        $('#summernote6').summernote({
        	lang : 'ko-KR',
        	height: 300 
        });
        
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
    	    		return;
    			} 
    	    	
    			var strBr = $('#summernote'+(i+1)).summernote('code');
    			var str = strBr.replace("\n", "\\n" );
    			$('textarea[name="f' + (i+1) + '"]').val(str);
            }
            
            if (check == 1) {
            	return;
            }
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
                        <textarea id="f1" name="f1" style="display: none;"></textarea>
                        <div class="col-lg-9">
                           	<div id="summernote1" style="height:300px"><p>Hello Summernote</p></div>
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info" id="divContent2" style="display:none!important">
                        <label class="col-lg-3 form-control-label">선택2</label>
                        <textarea id="f2" name="f2" style="display: none;"></textarea>
                        <div class="col-lg-9">
                           	<div id="summernote2" style="height:300px"><p>Hello Summernote</p></div>
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info" id="divContent3" style="display:none!important">
                        <label class="col-lg-3 form-control-label">선택3</label>
                        <textarea id="f3" name="f3" style="display: none;"></textarea>
                        <div class="col-lg-9">
                           	<div id="summernote3" style="height:300px"><p>Hello Summernote</p></div>
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info" id="divContent4" style="display:none!important">
                        <label class="col-lg-3 form-control-label">선택4</label>
                        <textarea id="f4" name="F4" style="display: none;"></textarea>
                        <div class="col-lg-9">
                           	<div id="summernote4" style="height:300px"><p>Hello Summernote</p></div>
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info" id="divContent5" style="display:none!important">
                        <label class="col-lg-3 form-control-label">선택5</label>
                        <textarea id="f5" name="f5" style="display: none;"></textarea>
                        <div class="col-lg-9">
                           	<div id="summernote5" style="height:300px"><p>Hello Summernote</p></div>
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info" id="divContent6" style="display:none!important">
                        <label class="col-lg-3 form-control-label">선택6</label>
                        <textarea id="f6" name="f6" style="display: none;"></textarea>
                        <div class="col-lg-9">
                           	<div id="summernote6" style="height:300px"><p>Hello Summernote</p></div>
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

