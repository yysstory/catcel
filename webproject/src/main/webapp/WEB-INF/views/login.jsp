<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<jsp:include page="inc/commoncss.jsp"></jsp:include>
<!--개별 css 추가  -->

<!-- /여기까지 -->
</head>

<body class="skin-blue fixed">
	<div class="wrapper">
		<section class="content">
			<!-- 페이지 내용 작성-->


			<div class="login-box">
				<div class="login-logo">
					<a href="#"><b>Cat</b>Cel</a>
				</div>
				<!-- /.login-logo -->
				<div class="login-box-body">
					<p class="login-box-msg">로그인 후 시작하세요.</p>

					<form action="loginProcess.htm" method="post">
						<div class="form-group has-feedback">
							<input type="email" class="form-control" placeholder="Email"
								name="email"> <span
								class="glyphicon glyphicon-envelope form-control-feedback"></span>
						</div>
						<div class="form-group has-feedback">
							<input type="password" class="form-control"
								placeholder="Password" name="password"> <input
								type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" /> <span
								class="glyphicon glyphicon-lock form-control-feedback"></span>
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
										</div> Remember Me
									</label>
								</div>
							</div>
							<!-- /.col -->

							<c:if test="${param.error != null }">
								<div>로그인 실패</div>
							</c:if>

							<div class="col-xs-4">
								<button type="submit" class="btn btn-primary btn-block btn-flat">로그인</button>
							</div>
							<!-- /.col -->
						</div>
					</form>

					<a href="#">비밀번호 찾기</a><br> <a href="join.htm"
						class="text-center">아직 회원이 아니신가요?</a>

				</div>
				<!-- /.login-box-body -->
			</div>
			<!-- /.login-box -->

			<!--/여기까지 -->
		</section>
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