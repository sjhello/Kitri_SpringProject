<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- include libraries(jQuery, bootstrap) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

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
	                <h4 style=" color: red; ">식단 등록</h4>
	            </div>
	            <form class="form-horizontal">
	            <input type="hidden" name="className" value="fc-bg-default">
	            <div class="widget-body">
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">제목</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">등록날짜</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">아이콘</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">내용</label>
                        <div class="col-lg-9">
                           	<div id="summernote" style="height:300px"><p>Hello Summernote</p></div>
							<script>
							    $(document).ready(function() {
							        $('#summernote').summernote({
						        	    lang : 'ko-KR'
							        });
							    });
							</script>
                        </div>
                    </div>
                    <a href="bookMember.do"><button type="button" class="btn btn-success btn-square mr-1 mb-2">작성</button></a>
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

