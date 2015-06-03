<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="inc/commoncss.jsp"></jsp:include>
<!--개별 css 추가  -->



<!-- /여기까지 -->
</head>

<body class="skin-blue fixed">
	<div class="wrapper">
		<body class="register-page">
			<div class="register-box">
				<div class="register-logo">
					<a href="#"><b>Cat</b>Cel</a>
				</div>

				<div class="register-box-body">
					<p class="login-box-msg">사업자 회원 가입</p>
					<form action="join.htm" method="post">
						<div class="form-group has-feedback">
							<input type="text" class="form-control" placeholder="Full name"
								name="userName"> <span
								class="glyphicon glyphicon-user form-control-feedback"></span>
						</div>
						<div class="form-group has-feedback">
							<input type="email" class="form-control" placeholder="Email"
								name="userEmail"> <span
								class="glyphicon glyphicon-envelope form-control-feedback"></span>
						</div>
						<div class="form-group has-feedback">
							<input type="password" class="form-control"
								placeholder="Password"> <span
								class="glyphicon glyphicon-lock form-control-feedback"></span>
						</div>
						<div class="form-group has-feedback">
							<input type="password" class="form-control"
								placeholder="Retype password" name="userPassword"> <input
								type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <span
								class="glyphicon glyphicon-log-in form-control-feedback"></span>
						</div>

						<div class="row">
							<div class="col-xs-8">
								<div class="checkbox icheck">
									<label>
										<div class="icheckbox_square-blue" aria-checked="false"
											aria-disabled="false" style="position: relative;">
											<input type="checkbox"
												style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);">
											<ins class="iCheck-helper"
												style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins>
										</div>
										<a href="#">회원약관</a>에 동의합니다.
									</label>
								</div>
							</div>
							<!-- /.col -->
							<div class="col-xs-4">
								<button type="submit" class="btn btn-primary btn-block btn-flat">가입</button>
							</div>
							<!-- /.col -->
						</div>
					</form>
					<a href="login.htm" class="text-center">이미 회원입니다.</a>
				</div>
				<!-- /.form-box -->
			</div>
			<!-- /.register-box -->

		</body>


		<!--/여기까지 -->
	</div>
	<!-- /.content-wrapper -->
	<jsp:include page="inc/footer.jsp"></jsp:include>
	</div>
	<jsp:include page="inc/commonjs.jsp"></jsp:include>
	<!-- 추가적인 자바스크립트 플러그인 추가 및 자바스크립트 코드 작성 -->
	<script src="plugins/iCheck/icheck.min.js" type="text/javascript"></script>
	<script>
		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' // optional
			});
		});
	</script>


	<!--/여기까지 -->
</body>
</html>