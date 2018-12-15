<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<script src="assets/js/components/datepicker/datepicker.js"></script>
<script src="assets/vendors/js/datepicker/moment.min.js"></script>
<script src="assets/vendors/js/datepicker/daterangepicker.js"></script>

<script type="text/javascript">
	$(document).ready(function() {
		$('#del').click(function() {
			$('#adDel').attr('action','${pageContext.request.contextPath}/adExerciseDel');
			$('textarea[name="contents"]').val($('#summernote').summernote('code'));
			$('#adDel').submit();
		});
	});
	
	function list(page){
        location.href="adDietSelectList.do?curPage="+page+"&date=${date}";
    }
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
			<!-- Begin Widget Header -->
			<div class="widget-header bordered d-flex align-items-center">
				<h2>식단 관리</h2>
			</div>
			<!-- End Widget Header -->
			<!-- Begin Widget Body -->
			<div class="widget-body">
				<div class="table-responsive table-scroll padding-right-10"
					style="max-height: 520px;">
					<table class="table table-hover mb-0">
						<thead>
							<tr>
								<th>Level</th>
								<th>제목</th>
								<th>날짜</th>
								<th>수정 /삭제</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var = "listroop" items = "${list }">
								<tr>
									<td><span class="text-primary" >${listroop.f_level }</span></td>
									<td><span class="text-primary" >${listroop.mealtime }</span></td>
									<td><span class="text-primary" >${listroop.f_date }</span></td>
									<td class="td-actions">
										<a href="adDieUpdateForm.do?num=${listroop.num }"><i class="la la-edit edit"></i></a>
										<a href="adDietDel.do?num=${listroop.num }"><i class="la la-close delete"></i></a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
			<!-- End Widget Body -->
			<!-- Begin Widget Footer -->
			<div class="widget-footer d-flex align-items-center">
				<div class="mr-auto p-2">
					<span class="display-items">
						<a href="adDietWriteForm.do"><button type="button" class="btn btn-success btn-square mr-1 mb-2">작성하기</button></a>
					</span>
				</div>
				<div class="p-2">
					<nav aria-label="...">
						<ul class="pagination justify-content-end">
							<c:if test="${paging.curBlock > 1 }">
								<li class="page-item"><a class="page-link" href="javascript:list('1')"><i class="ion-chevron-left"></i><i class="ion-chevron-left"></i></a></li>
							</c:if>
						
							<c:if test="${paging.curBlock > 1 }">
								<li class="page-item"><a class="page-link" href="javascript:list('${paging.prevPage }')"><i class="ion-chevron-left"></i></a></li>
							</c:if>
							<c:forEach var="num" begin="${paging.blockBegin }" end="${paging.blockEnd }">
								<c:choose>
									<c:when test="${num == paging.curPage }">
										<li class="page-item active"><span class="page-link">${num }<span class="sr-only">(current)</span></span></li>
									</c:when>
									<c:otherwise>
										<li class="page-item"><a class="page-link" href="javascript:list('${num }')">${num }</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							
							<c:if test="${paging.curBlock <= paging.totBlock }">
								<li class="page-item"><a class="page-link" href="javascript:list('${paging.nextPage }')"><i class="ion-chevron-right"></i></a></li>
							</c:if>
							
							<c:if test="${paging.curBlock <= paging.totBlock }">
								<li class="page-item"><a class="page-link" href="javascript:list('${paging.totPage }')"><i class="ion-chevron-right"></i><i class="ion-chevron-right"></i></a></li>
							</c:if>
							
						</ul>
					</nav>
				</div>
			</div>
			<!-- End Widget Footer -->
			</div>
			<!-- End Row -->
		</div>
	</div>
			
