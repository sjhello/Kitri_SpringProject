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
</script>
<!-- include libraries(jQuery, bootstrap) -->

<!-- include summernote css/js -->
<link href="css/summernote.css" rel="stylesheet">
<script src="js/summernote.js"></script>

<!-- include summernote-ko-KR -->
<script src="lang/summernote-ko-KR.js"></script>

<!-- Begin Widget Header -->
<div class="widget-header bordered d-flex align-items-center">
	<h2>운동법 관리</h2>
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
						<td><span class="text-primary" >${listroop.title }</span></td>
						<td><span class="text-primary" >${listroop.w_date }</span></td>
						<td class="td-actions">
							<a href="adExerciseUpdate.do?num=${listroop.num }"><i class="la la-edit edit"></i></a>
							<a href="adExerciseDelete.do?num=${listroop.num }"><i class="la la-close delete"></i></a>
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
			<a href="adExerciseWrite.do"><button type="button" class="btn btn-success btn-square mr-1 mb-2">작성하기</button></a>
		</span>
	</div>
	<div class="p-2">
		<nav aria-label="...">
			<ul class="pagination justify-content-end">
				<li class="page-item disabled"><span class="page-link"><i
						class="ion-chevron-left"></i></span></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item active"><span class="page-link">2<span
						class="sr-only">(current)</span></span></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#"><i
						class="ion-chevron-right"></i></a></li>
			</ul>
		</nav>
	</div>
</div>
<!-- End Widget Footer -->
</div>
<!-- End Row -->
</div>

