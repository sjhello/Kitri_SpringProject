<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="assets/js/components/datepicker/datepicker.js"></script>
<script src="assets/vendors/js/datepicker/moment.min.js"></script>
<script src="assets/vendors/js/datepicker/daterangepicker.js"></script>

<script>
	$(document).ready(function() {
		$("#selectButton").click(function() {
			
			$("#selectForm").submit();
		});
	});
</script>

<div class="container-fluid">
	<div class="row flex-row">
	    <div class="col-12">
	        <!-- Form -->
	        <div class="widget has-shadow">
	            <div class="widget-header bordered no-actions d-flex align-items-center">
	                <h4 style=" color: red; ">날짜조회</h4>
	            </div>
	            <form id="selectForm" class="form-horizontal" action="adExerciseDetail.do">
	            <div class="widget-body">
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">검색하고 싶은 날짜를 입력하세요.</label>
                        <div class="col-lg-9">
	                        <div class="form-group">
	                            <div class="input-group">
	                                <span class="input-group-addon">
	                                    <i class="la la-calendar"></i>
	                                </span>
	                                <input type="text" class="form-control" id="date" name="date" placeholder="Select value">
	                            </div>
	                        </div>
	                    </div>
                    </div>
                    
                   <button id="selectButton" type="button" class="btn btn-success btn-square mr-1 mb-2">검색</button>
                    <a href="adExercise.do"><button type="button" class="btn btn-secondary btn-square mr-1 mb-2">취소</button></a>
	            </div>
            	</form>
	       	</div>
	        <!-- End Form -->
	    </div>
	</div>
	<!-- End Row -->
</div>

