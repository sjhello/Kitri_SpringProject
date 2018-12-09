<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

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
                    <div class="form-group row d-flex align-items-center mb-5">
                        <label class="col-lg-3 form-control-label">제목</label>
                        <div class="col-lg-9">
                          	${qa11.title }
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5">
                        <label class="col-lg-3 form-control-label">아이디</label>
                        <div class="col-lg-9">
							${qa11.id }
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5">
                        <label class="col-lg-3 form-control-label">내용</label>
                        <div class="col-lg-9">
							${qa11.content }
                        </div>
                    </div>
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
	                <form class="form-horizontal">
	                    <div class="form-group row d-flex align-items-center mb-5 has-info">
	                        <label class="col-lg-3 form-control-label">제목</label>
	                        <div class="col-lg-9">
	                            ${adQa11.title }
	                        </div>
	                    </div>
	                    <div class="form-group row d-flex align-items-center mb-5 has-info">
	                        <label class="col-lg-3 form-control-label">아이디</label>
	                        <div class="col-lg-9">
								${adQa11.id }
	                        </div>
	                    </div>
	                    <div class="form-group row d-flex align-items-center mb-5 has-info">
	                        <label class="col-lg-3 form-control-label">내용</label>
	                        <div class="col-lg-9">
								${adQa11.content }
	                        </div>
	                    </div>
	                    <a href="adQa-Update11Form.do?originNo=${adQa11.originNo }"><button type="button" class="btn btn-success btn-square mr-1 mb-2">수정</button></a>
	                     <a href="adDelete11.do?qCode=${adQa11.code }&uCode=${qa11.code}"><button type="button" class="btn btn-secondary btn-square mr-1 mb-2">삭제</button></a>
	            	</form>
	            </div>
	        </div>
	        <!-- End Form -->
	    </div>
	</div>
	<!-- End Row -->
</div>