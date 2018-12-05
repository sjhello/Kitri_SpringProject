<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- Footer
		============================================= -->
<script>
	$(document).ready(function() {
		$('#signUp1').click(function() {
			location.href = "signUp.do";
		});
		
		$('#btnLogin').click(function(){
			$('#f').attr('action', '${pageContext.request.contextPath}/memberLogin');
			$('#f').submit();
		});
		
	});
</script>
<footer id="footer" class="dark">

	<div class="container">

		<!-- Footer Widgets
		============================================= -->
		<div class="footer-widgets-wrap clearfix">

			<div class="col_two_third">

				<div class="col_one">

					<div class="widget clearfix">

						<img src="images/footer-widget-logo.png" alt="" class="footer-logo">

						<p>We believe in <strong>Simple</strong>, <strong>Creative</strong> &amp; <strong>Flexible</strong> Design Standards.</p>

						<div style="background: url('images/world-map.png') no-repeat center center; background-size: 100%;">
							<address>
								<strong>Headquarters:</strong><br>
								795 Folsom Ave, Suite 600<br>
								San Francisco, CA 94107<br>
							</address>
							<abbr title="Phone Number"><strong>Phone:</strong></abbr> (91) 8547 632521<br>
							<abbr title="Fax"><strong>Fax:</strong></abbr> (91) 11 4752 1433<br>
							<abbr title="Email Address"><strong>Email:</strong></abbr> info@canvas.com
						</div>

					</div>

				</div>

			</div>

			<div class="col_one_third col_last">

				<div class="widget clearfix" style="margin-bottom: -20px;">

					<div class="row">

						<div class="col-lg-6 bottommargin-sm">
							<div class="counter counter-small"><span data-from="0" data-to="15065421" data-refresh-interval="80" data-speed="3000" data-comma="true"></span></div>
							<h5 class="nobottommargin">가입된 총인원</h5>
						</div>

						<div class="col-lg-6 bottommargin-sm">
							<div class="counter counter-small"><span data-from="0" data-to="5" data-refresh-interval="4" data-speed="2000" data-comma="true"></span></div>
							<h5 class="nobottommargin">관리 전문가</h5>
						</div>

					</div>

				</div>

				<div class="widget clearfix" style="margin-bottom: -20px;">

					<div class="row">

						<div class="col-lg-6 clearfix bottommargin-sm">
							<a href="#" class="social-icon si-dark si-colored si-facebook nobottommargin" style="margin-right: 10px;">
								<i class="icon-facebook"></i>
								<i class="icon-facebook"></i>
							</a>
							<a href="#"><small style="display: block; margin-top: 3px;"><strong>Like us</strong><br>on Facebook</small></a>
						</div>
						<div class="col-lg-6 clearfix">
							<a href="#" class="social-icon si-dark si-colored si-rss nobottommargin" style="margin-right: 10px;">
								<i class="icon-rss"></i>
								<i class="icon-rss"></i>
							</a>
							<a href="#"><small style="display: block; margin-top: 3px;"><strong>Subscribe</strong><br>to RSS Feeds</small></a>
						</div>

					</div>

				</div>

			</div>

		</div><!-- .footer-widgets-wrap end -->

	</div>

	<!-- Copyrights
	============================================= -->
	<div id="copyrights">

		<div class="container clearfix">

			<div class="col_half">
				Copyrights &copy; 2014 All Rights Reserved by Canvas Inc.<br>
				<div class="copyright-links"><a href="#">Terms of Use</a> / <a href="#">Privacy Policy</a></div>
			</div>

			<div class="col_half col_last tright">
				<div class="fright clearfix">
					<a href="#" class="social-icon si-small si-borderless si-facebook">
						<i class="icon-facebook"></i>
						<i class="icon-facebook"></i>
					</a>

					<a href="#" class="social-icon si-small si-borderless si-twitter">
						<i class="icon-twitter"></i>
						<i class="icon-twitter"></i>
					</a>

					<a href="#" class="social-icon si-small si-borderless si-gplus">
						<i class="icon-gplus"></i>
						<i class="icon-gplus"></i>
					</a>

					<a href="#" class="social-icon si-small si-borderless si-pinterest">
						<i class="icon-pinterest"></i>
						<i class="icon-pinterest"></i>
					</a>

					<a href="#" class="social-icon si-small si-borderless si-vimeo">
						<i class="icon-vimeo"></i>
						<i class="icon-vimeo"></i>
					</a>

					<a href="#" class="social-icon si-small si-borderless si-github">
						<i class="icon-github"></i>
						<i class="icon-github"></i>
					</a>

					<a href="#" class="social-icon si-small si-borderless si-yahoo">
						<i class="icon-yahoo"></i>
						<i class="icon-yahoo"></i>
					</a>

					<a href="#" class="social-icon si-small si-borderless si-linkedin">
						<i class="icon-linkedin"></i>
						<i class="icon-linkedin"></i>
					</a>
				</div>

				<div class="clear"></div>

				<i class="icon-envelope2"></i> info@canvas.com <span class="middot">&middot;</span> <i class="icon-headphones"></i> +91-11-6541-6369 <span class="middot">&middot;</span> <i class="icon-skype2"></i> CanvasOnSkype
			</div>

		</div>

	</div><!-- #copyrights end -->
	
</footer><!-- #footer end -->

<div class="modal" id="myModal">
   <div class="modal-dialog">
     <div class="modal-content" style=" top: 241px; ">
     
       <!-- Modal Header -->
       <div class="modal-header">
         <h4 class="modal-title">건강 관리를 시작하세요!</h4>
         <button type="button" class="close" data-dismiss="modal">&times;</button>
       </div>
       
       <!-- Modal body -->
       <div class="modal-body">
         	<div>
				<h4 class="uppercase ls1"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">로그인</font></font></h4>
				<form class="clearfix" style="max-width: 300px;" method="post" id="f">
					<div class="col_full">
						<label for="" class="capitalize t600"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">아이디</font></font></label>
						<input type="text" name="id" id="id" class="sm-form-control" autocomplete=off>
					</div>
					<div class="col_full">
						<label for="" class="capitalize t600"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">비밀번호</font></font></label>
						<input type="password" id="pwd"" name="pwd" class="sm-form-control" autocomplete=off>
					</div>
					<div class="col_full nobottommargin">
						<button id="btnLogin" type="submit" class="button button-rounded button-small button-dark nomargin" value="submit"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">로그인</font></font></button>
						<button id="signUp1" type="button" class="button button-rounded button-small button-dark nomargin" value="submit"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">신청하러가기</font></font></button>
					</div>
				</form>
			</div>
       </div>
       
       <!-- Modal footer -->
       <div class="modal-footer">
         <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
       </div>
       
     </div>
   </div>
 </div>

 <!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- External JavaScripts
	============================================= -->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="js/functions.js"></script>