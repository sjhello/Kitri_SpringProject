<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<script>
	$(document).ready(function() {
		$('#adWrite11Button').click(function() {
			$title = $('#title');
			$content = $('#content1');
			
			var title = $title.val();
			var content = $content.val();
			
			if (title == "") {
				alert("제목을 입력해주세요");
				return;
			} 
			
			if (content == "") {
				alert("내용을 입력해주세요");
				return;
			}
			$('#adWrite11From').submit();
		});
	});
</script>

<div class="container-fluid">
<!-- Begin Page Header-->
	<div class="row">
	    <div class="page-header">
		     <div class="d-flex align-items-center">
		         <h2 class="page-header-title">1:1문의</h2>
		     </div>
	    </div>
	</div>
	<!-- End Page Header -->
	<div class="row flex-row">
	    <div class="col-12">
	        <!-- Form -->
	        <div class="widget has-shadow">
	            <div class="widget-header bordered no-actions d-flex align-items-center">
	                <h4>작성자</h4>
	            </div>
	            <div class="widget-body">
	                <form class="form-horizontal">
	                    <div class="form-group row d-flex align-items-center mb-5">
	                        <label class="col-lg-3 form-control-label">제목</label>
	                        <div class="col-lg-9">
	                          	${list.title }
	                        </div>
	                    </div>
	                    <div class="form-group row d-flex align-items-center mb-5">
	                        <label class="col-lg-3 form-control-label">아이디</label>
	                        <div class="col-lg-9">
								${list.id }
	                        </div>
	                    </div>
	                    <div class="form-group row d-flex align-items-center mb-5">
	                        <label class="col-lg-3 form-control-label">내용</label>
	                        <div class="col-lg-9">
								${list.content }
	                        </div>
	                    </div>
	            	</form>
	            </div>
	        </div>
	        <!-- End Form -->
	    </div>
	</div>
	<!-- End Row -->
	
	<!-- End Page Header -->
	<div class="row flex-row">
	    <div class="col-12">
	        <!-- Form -->
	        <div class="widget has-shadow">
	            <div class="widget-header bordered no-actions d-flex align-items-center">
	                <h4>관리자</h4>
	            </div>
	            <div class="widget-body">
	                <form id="adWrite11From" action="adQa-Write11.do" class="form-horizontal" method="post">
	                	<input type="hidden" name="code" value="${list.code }">
	                	<input type="hidden" name="originNo" value="${list.code }">
	                    <div class="form-group row d-flex align-items-center mb-5 has-info">
	                        <label class="col-lg-3 form-control-label">제목</label>
	                        <div class="col-lg-9">
	                            <input type="text" class="form-control" id="title" name="title" maxlength="100">
	                        </div>
	                    </div>
	                    <div class="form-group row d-flex align-items-center mb-5 has-info">
	                        <label class="col-lg-3 form-control-label">아이디</label>
	                        <div class="col-lg-9">
								admin
	                        </div>
	                    </div>
	                    <div class="form-group row d-flex align-items-center mb-5 has-info">
	                        <label class="col-lg-3 form-control-label">내용</label>
	                        <div class="col-lg-9">
	                            <textarea class="form-control" id="content" name="content" style=" height: 186px; " maxlength="4000"></textarea>
	                        </div>
	                    </div>
	                    <a id="adWrite11Button" href="#"><button type="button" class="btn btn-success btn-square mr-1 mb-2">작성</button></a>
	                    <a href="adqa11.do"><button type="button" class="btn btn-secondary btn-square mr-1 mb-2">취소</button></a>
	            	</form>
	            </div>
	        </div>
	        <!-- End Form -->
	    </div>
	</div>
	<!-- End Row -->
</div>