<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                <h2>예약자 목록</h2>
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
                                <th>등록  / 휴먼</th>
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
                                    <a href="mInsert.do"><i class="la la-edit edit"></i></a>
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
                            <li class="page-item disabled">
                                <span class="page-link"><i class="ion-chevron-left"></i></span>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">1</a></li>
                            <li class="page-item active">
                                <span class="page-link">2<span class="sr-only">(current)</span></span>
                            </li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#"><i class="ion-chevron-right"></i></a>
                            </li>
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
