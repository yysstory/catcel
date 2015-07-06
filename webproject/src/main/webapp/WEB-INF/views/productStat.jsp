<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="inc/commoncss.jsp"></jsp:include>
<!--개별 css 추가  -->

<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">


<!-- /여기까지 -->
</head>

<body class="skin-blue fixed">
	<div class="wrapper">
		<jsp:include page="inc/header.jsp"></jsp:include>
		<jsp:include page="inc/aside.jsp"></jsp:include>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- 페이지 제목 (큰글씨) -->
			<section class="content-header">
				<h1>
					상품 통계 <small>Optional description</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>


			<section class="content">
				<!-- 페이지 내용 작성-->

			
				<div class="row">
					<div class="col-lg-6 col-md-12 col-xs-12">
						<!-- LINE CHART -->
						<div class="box box-info">
							<div class="box-header with-border">
								<h3 class="box-title">상품 분석 TOP 10</h3>
								<div class="box-tools pull-right">
									<button class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<div class="box-body">
								

								<div class="chart">
									<canvas id="weekChart" height="250"></canvas>
								</div>


							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
					
					
					
					<div class="col-lg-6 col-md-12 col-xs-12">
						<!-- LINE CHART -->
						<div class="box box-info">
							<div class="box-header with-border">
								<h3 class="box-title">옵션 분석 TOP 10</h3>
								<div class="box-tools pull-right">
									<button class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<div class="box-body">
								<div class="chart">
									<canvas id="weekChart" height="250"></canvas>
								</div>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
			

				</div>

				<!--/여기까지 -->
			</section>
		</div>
		<!-- /.content-wrapper -->
		<jsp:include page="inc/footer.jsp"></jsp:include>
	</div>
	<jsp:include page="inc/commonjs.jsp"></jsp:include>
	<!-- 추가적인 자바스크립트 플러그인 추가 및 자바스크립트 코드 작성 -->
	<script type="text/javascript" src="plugins/chartjs/Chart.js"></script>

	<script type="text/javascript">
	

/* 	$.ajax({
	    type : 'post',
	    url : '/webproject/sellStat.json',
	    data : {},
	    dataType : 'json',
	    success : function(data) {
		console.log(data);
	    }
	}); */
    </script>

	<!--/여기까지 -->
</body>
</html>