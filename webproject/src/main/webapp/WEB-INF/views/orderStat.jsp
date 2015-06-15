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
					주문 통계 <small>Optional description</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>


			<section class="content">
				<!-- 페이지 내용 작성-->

				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="info-box">
							<span class="info-box-icon bg-aqua"><i
								class="fa fa-envelope-o"></i></span>
							<div class="info-box-content">
								<span class="info-box-text">Messages</span> <span
									class="info-box-number">1,410</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="info-box">
							<span class="info-box-icon bg-green"><i
								class="fa fa-flag-o"></i></span>
							<div class="info-box-content">
								<span class="info-box-text">Bookmarks</span> <span
									class="info-box-number">410</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="info-box">
							<span class="info-box-icon bg-yellow"><i
								class="fa fa-files-o"></i></span>
							<div class="info-box-content">
								<span class="info-box-text">Uploads</span> <span
									class="info-box-number">13,648</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="info-box">
							<span class="info-box-icon bg-red"><i class="fa fa-star-o"></i></span>
							<div class="info-box-content">
								<span class="info-box-text">Likes</span> <span
									class="info-box-number">93,139</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
				</div>


				<div>
					<h3>인기상품 BEST5</h3>

				</div>



				<div class="box box-info">
					<div class="box-header with-border">
						<h3 class="box-title">주문량 추이</h3>
						<div class="box-tools pull-right">
							<button class="btn btn-box-tool" data-widget="collapse">
								<i class="fa fa-minus"></i>
							</button>
							<button class="btn btn-box-tool" data-widget="remove">
								<i class="fa fa-times"></i>
							</button>
						</div>
					</div>
					<div class="box-body">
						<div class="btn-group">
							<button type="button" class="btn btn-info">일</button>
							<button type="button" class="btn btn-info">월</button>
							<button type="button" class="btn btn-info">년</button>
						</div>
						<div class="chart">
							<!-- <canvas id="lineChart" height="255" width="756" style="width: 756px; height: 255px;"></canvas> -->
							<div id="myfirstchart" style="height: 250px;"></div>
						</div>
					</div>
					<!-- /.box-body -->
				</div>

				<div class="col-md-4">
					<ul class="chart-legend clearfix">
						<li><i class="fa fa-circle-o text-green"></i> Gmarket</li>
						<li><i class="fa fa-circle-o text-red"></i> 11st</li>
						<li><i class="fa fa-circle-o text-yellow"></i> FireFox</li>
						<li><i class="fa fa-circle-o text-aqua"></i> Safari</li>
						<li><i class="fa fa-circle-o text-light-blue"></i> Opera</li>
						<li><i class="fa fa-circle-o text-gray"></i> Navigator</li>
					</ul>
				</div>






				<!--/여기까지 -->
			</section>
		</div>
		<!-- /.content-wrapper -->
		<jsp:include page="inc/footer.jsp"></jsp:include>
	</div>
	<jsp:include page="inc/commonjs.jsp"></jsp:include>
	<!-- 추가적인 자바스크립트 플러그인 추가 및 자바스크립트 코드 작성 -->
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
	<script type="text/javascript">
	
	
	
    </script>

	<!--/여기까지 -->
</body>
</html>