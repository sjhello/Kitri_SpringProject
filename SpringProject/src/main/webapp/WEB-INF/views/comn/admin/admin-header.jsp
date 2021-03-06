<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="header">
    <nav class="navbar fixed-top">         
        <!-- Begin Search Box-->
        <div class="search-box">
            <button class="dismiss"><i class="ion-close-round"></i></button>
            <form id="searchForm" action="#" role="search">
                <input type="search" placeholder="Search something ..." class="form-control">
            </form>
        </div>
        <!-- End Search Box-->
        <!-- Begin Topbar -->
        <div class="navbar-holder d-flex align-items-center align-middle justify-content-between">
            <!-- Begin Logo -->
            <div class="navbar-header">
                <a href="main.do" class="navbar-brand">
                    <div class="brand-image brand-big">
                        <img src="assets/img/logo-big.png" alt="logo" class="logo-big">
                    </div>
                    <div class="brand-image brand-small">
                        <img src="assets/img/logo.png" alt="logo" class="logo-small">
                    </div>
                </a>
                <!-- Toggle Button -->
                <a id="toggle-btn" href="#" class="menu-btn active">
                    <span></span>
                    <span></span>
                    <span></span>
                </a>
                <!-- End Toggle -->
            </div>
            <!-- End Logo -->
            <!-- Begin Navbar Menu -->
            <ul class="nav-menu list-unstyled d-flex flex-md-row align-items-md-center pull-right">
                <!-- Search -->
                <li class="nav-item d-flex align-items-center"><a id="search" href="#"><i class="la la-search"></i></a></li>
                <!-- End Search -->
                <!-- Begin Notifications -->
                <li class="nav-item dropdown"><a id="notifications" rel="nofollow" data-target="#" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link"><i class="la la-bell animated infinite swing"></i><span class="badge-pulse"></span></a>
                    <ul aria-labelledby="notifications" class="dropdown-menu notification">
                        <li>
                            <div class="notifications-header">
                                <div class="title">예약자 대기 목록 (3)</div>
                                <div class="notifications-overlay"></div>
                                <img src="assets/img/notifications/01.jpg" alt="..." class="img-fluid">
                            </div>
                        </li>
                        <li>
                            <a href="#">
                                <div class="message-icon">
                                    <i class="la la-user"></i>
                                </div>
                                <div class="message-body">
                                    <div class="message-body-heading">
                                    	경규일
                                    </div>
                                    <span class="date">1 hours ago</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="message-icon">
                                    <i class="la la-user"></i>
                                </div>
                                <div class="message-body">
                                    <div class="message-body-heading">
										김상진
                                    </div>
                                    <span class="date">1 hours ago</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="message-icon">
                                    <i class="la la-user"></i>
                                </div>
                                <div class="message-body">
                                    <div class="message-body-heading">
                                    	박창순
                                    </div>
                                    <span class="date">4 hours ago</span>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a rel="nofollow" href="#" class="dropdown-item all-notifications text-center">View All Notifications</a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- End Navbar Menu -->
        </div>
        <!-- End Topbar -->
    </nav>
</header>