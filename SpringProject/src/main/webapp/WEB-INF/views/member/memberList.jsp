<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
function list(page){
    location.href="memberList.do?curPage="+page;
}
</script>

<div class="container-fluid">
<!-- Begin Page Header-->
<div class="row">
    <div class="page-header">
     <div class="d-flex align-items-center">
         <h2 class="page-header-title">회원관리</h2>
     </div>
    </div>
</div>
<div class="row flex-row">
    <div class="col-xl-12">
        <!-- Begin Widget 07 -->
        <div class="widget widget-07 has-shadow">
            <!-- Begin Widget Header -->
            <div class="widget-header bordered d-flex align-items-center">
                <h2>회원 목록</h2>
                <div class="row">
					<div class="col-sm-12 col-md-12 left">
						<div id="sorting-table_filter" class="dataTables_filter">
							<label>Search:<input type="search"
								class="form-control form-control-sm" placeholder=""
								aria-controls="sorting-table"></label>
						</div>
					</div>
				</div>
            </div>
            <!-- End Widget Header -->
            <!-- Begin Widget Body -->
            <div class="widget-body">
                <div class="table-responsive table-scroll padding-right-10" style="max-height:520px;">
                    <table class="table table-hover mb-0">
                        <thead>
                            <tr>
                                <th>아이디</th>
                                <th>이름</th>
                                <th>전화번호</th>
                                <th>성별</th>
                                <th>이메일</th>
                                <th>회원관리  / 휴먼</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="m" items="${list }">
                            <tr>
                                <td>${m.id }</td>
                                <td>${m.name }</td>
                                <td>${m.tel }</td>
                                <td>${m.sex }</td>
                                <td>${m.email }</td>
                                <td class="td-actions">
                                    <a href="mInsert.do?id=${m.id }"><i class="la la-edit edit"></i></a>
                                    <a href="adQa-Delete11.do"><i class="la la-close delete"></i></a>
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
                    <span class="display-items">Showing 1-30 / 150 Results</span>
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
        <!-- End Widget 07 -->
    </div>
</div>
</div>
