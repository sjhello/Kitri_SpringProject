<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container-fluid">
	<div class="row flex-row">
	    <div class="col-12">
	        <!-- Form -->
	        <div class="widget has-shadow">
	            <div class="widget-header bordered no-actions d-flex align-items-center">
	                <h4 style=" color: red; ">관리자</h4>
	            </div>
	            <form class="form-horizontal">
	            <div class="widget-body">
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">아이디</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">비밀번호</label>
                        <div class="col-lg-9">
                            <input type="password" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">이름</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">전화번호</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">주소</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">이메일</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">성별</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">연령대</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
	            </div>
	            <div class="widget-header bordered no-actions d-flex align-items-center">
	                <h4 style=" color: red; ">인바디</h4>
	            </div>
	            <div class="widget-body">
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">몸무게</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">키</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">근육량</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">체지방</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">BMI</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
	            </div>
	            <div class="widget-header bordered no-actions d-flex align-items-center">
	                <h4 style=" color: red; ">체력측정</h4>
	            </div>
	            <div class="widget-body">
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">SitUp</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">PushUp</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">PullUp</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">Squat</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group row d-flex align-items-center mb-5 has-info">
                        <label class="col-lg-3 form-control-label">Burpee</label>
                        <div class="col-lg-9">
                            <input type="text" class="form-control">
                        </div>
                    </div>
                    <a href="bookMember.do"><button type="button" class="btn btn-success btn-square mr-1 mb-2">작성</button></a>
                    <a href="bookMember.do"><button type="button" class="btn btn-secondary btn-square mr-1 mb-2">취소</button></a>
	            </div>
	            </form>
	        </div>
	        <!-- End Form -->
	    </div>
	</div>
	<!-- End Row -->
</div>

