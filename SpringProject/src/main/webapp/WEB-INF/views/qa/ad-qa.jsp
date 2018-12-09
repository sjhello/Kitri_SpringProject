<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<div class="container-fluid">
<!-- Begin Page Header-->
<div class="row">
    <div class="page-header">
     <div class="d-flex align-items-center">
         <h2 class="page-header-title">Q&A</h2>
     </div>
    </div>
</div>

<div class="row flex-row">
    <div class="col-xl-12">
        <!-- Begin Widget 07 -->
        <div class="widget widget-07 has-shadow">
            <!-- Begin Widget Header -->
            <div class="widget-header bordered d-flex align-items-center">
                <h2>Q&A 리스트</h2>
            </div>
            <!-- End Widget Header -->
            <!-- Begin Widget Body -->
            <div class="widget-body">
                <div class="table-responsive table-scroll padding-right-10" style="max-height:520px;">
                    <table class="table table-hover mb-0">
                        <thead>
                            <tr>
                                <th>번호</th>
                                <th>제목</th>
                                <th>날짜</th>
                                <th>삭제</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody id="qaBody">
                        	<c:forEach var="qaList" items="${qaList }">
                            <tr>
                                <td><span class="text-primary">${qaList.q_num }</span></td>
                                <td>${qaList.title }</td>
                                <td>${qaList.reg_date }</td>
                                <td class="td-actions">
                                    <a href="qaDelete.do?q_num=${qaList.q_num }"><i class="la la-close delete"></i></a>
                                </td>
                                <td>
                                	<a href="qaUpdateForm.do?q_num=${qaList.q_num }"><button type="button" class="btn btn-danger ripple mr-1 mb-2">수정</button></a>
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
                    	<a href="adQaWriteForm.do"><button type="button" class="btn btn-success btn-square mr-1 mb-2">작성</button></a>
                    </span>
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
