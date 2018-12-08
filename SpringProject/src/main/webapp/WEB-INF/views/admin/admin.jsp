<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<div class="container-fluid">
	<!-- Begin Page Header-->
	<div class="row">
	    <div class="page-header">
	     <div class="d-flex align-items-center">
	         <h2 class="page-header-title">Dashboard</h2>
	     </div>
	    </div>
	</div>
	
	<div class="row flex-row">
	    <div class="col-xl-12 col-md-6">
	        <!-- Begin Widget 09 -->
	        <div class="widget widget-09 has-shadow">
	            <!-- Begin Widget Header -->
	            <div class="widget-header d-flex align-items-center">
	            </div>
	            <!-- End Widget Header -->
	            <!-- Begin Widget Body -->
	            <div class="widget-body">
	                <div class="row">
	                    <div class="col-xl-10 col-12 no-padding">
	                        <div>
	                            <canvas id="orders"></canvas>
	                        </div>
	                    </div>
	                    <div class="col-xl-2 col-12 d-flex flex-column my-auto no-padding text-center">
	                        <div class="some-stats mt-5">
	                            <div class="title">총 수익</div>
	                            <div class="number text-blue">4800만원</div>
	                        </div>
	                        <div class="some-stats mt-3">
	                            <div class="title">총 가입자</div>
	                            <div class="number text-blue">100명</div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        <!-- End Widget 09 -->
	    </div>
	</div>
</div>
<script src="assets/js/dashboard/db-default2.js"></script>