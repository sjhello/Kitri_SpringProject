<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
	$(document).ready(function() {
		$('#qaWrite').click(function() {
			$('#qaForm').submit();
		});
	});
	
</script>
<div class="container-fluid">
<!-- Begin Page Header-->
	<div class="row">
	    <div class="page-header">
		     <div class="d-flex align-items-center">
		         <h2 class="page-header-title">Q&A 등록</h2>
		     </div>
	    </div>
	</div>
	<!-- End Page Header -->
	<div class="row flex-row">
	    <div class="col-12">
	        <!-- Form -->
	        <div class="widget has-shadow">
	            <div class="widget-header bordered no-actions d-flex align-items-center">
	                <h4>관리자</h4>
	            </div>
	            <div class="widget-body">
	                <form class="form-horizontal" id="qaForm" action="adQaWrite.do" method="post">
	                    <div class="form-group row d-flex align-items-center mb-5 has-info">
	                        <label class="col-lg-3 form-control-label">제목</label>
	                        <div class="col-lg-9">
	                            <input type="text" name="title" class="form-control" maxlength="100">
	                        </div>
	                    </div>
	                    <div class="form-group row d-flex align-items-center mb-5 has-info">
	                        <label class="col-lg-3 form-control-label">내용</label>
	                        <div class="col-lg-9">
	                            <textarea class="form-control" name="content" style=" height: 186px; " maxlength="4000"></textarea>
	                        </div>
	                    </div>
	                    <button id="qaWrite" type="button" class="btn btn-success btn-square mr-1 mb-2">작성</button>
	                    <a href="admin.do"><button type="button" class="btn btn-secondary btn-square mr-1 mb-2">취소</button></a>
	            	</form>
	            </div>
	        </div>
	        <!-- End Form -->
	    </div>
	</div>
	<!-- End Row -->
</div>