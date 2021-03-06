<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="container-fluid">
<!-- Begin Page Header-->
<div class="row">
    <div class="page-header">
     <div class="d-flex align-items-center">
         <h2 class="page-header-title">체력검정</h2>
     </div>
    </div>
</div>
<div class="row flex-row">
    <div class="col-xl-12">
        <!-- Begin Widget 07 -->
        <div class="widget widget-07 has-shadow">
            <!-- Begin Widget Header -->
            <div class="widget-header bordered d-flex align-items-center">
                <h2>유저 목록</h2>
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
                            	<th>번호</th>
                                <th>아이디</th>
                                <th>날짜</th>
                                <th>싯업</th>
                                <th>푸쉬업</th>
                                <th>풀업</th>
                                <th>스쿼트</th>
                                <th>버피</th>
                                <th>수정 / 삭제</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><span class="text-primary">054-01-FR</span></td>
                                <td>Lori Baker</td>
                                <td>10/21/2017</td>
                                <td>10/21/2017</td>
                                <td>10/21/2017</td>
                                <td>10/21/2017</td>
                                <td>10/21/2017</td>
                                <td class="td-actions">
                                    <a href="adFixTestUpdate.do"><i class="la la-edit edit"></i></a>
                                    <a href="#"><i class="la la-close delete"></i></a>
                                </td>
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- End Widget Body -->
            <!-- Begin Widget Footer -->
            <div class="widget-footer d-flex align-items-center">
                <div class="mr-auto p-2">
                    <br>
            		<a href="adFitTestInsert.do"><button type="button" class="btn btn-primary btn-square mr-1 mb-2">추가</button></a>
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
