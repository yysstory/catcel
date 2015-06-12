<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					매출 통계 <small>오늘의 매출을 확인하세요.</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>


			<section class="content">
				<!-- 페이지 내용 작성-->


				<div class="row">
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-aqua">
							<div class="inner">
								<h3 id="dayMoneyTotal">
									0 <sub style="font-size: 20px">원</sub>
								</h3>
								<p>오늘의 매출액</p>
							</div>
							<div class="icon">
								<div id="dayNumber">0</div>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>

					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-green">
							<div class="inner">
								<h3 id="weekMoneyTotal">
									0 <sub style="font-size: 20px">원</sub>
								</h3>
								<p>이번주 매출액</p>
							</div>
							<div class="icon">
								<div id="weekNumber">0</div>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-yellow">
							<div class="inner">
								<h3 id="monthMoneyTotal">
									0 <sub style="font-size: 20px">원</sub>
								</h3>
								<p>이번달 매출액</p>
							</div>
							<div class="icon">
								<div id="monthNumber">0</div>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>
					<div class="col-lg-3 col-xs-6">
						<!-- small box -->
						<div class="small-box bg-red">
							<div class="inner">
								<h3 id="yearMoneyTotal">
									0 <sub style="font-size: 20px">원</sub>
								</h3>
								<p>올해 매출액</p>
							</div>
							<div class="icon">
								<div id="yearNumber">0</div>
							</div>
							<a href="#" class="small-box-footer"> More info <i
								class="fa fa-arrow-circle-right"></i>
							</a>
						</div>
					</div>

				</div>

				<div class="row">
					<div class="col-lg-6 col-md-12 col-xs-12">
						<!-- LINE CHART -->
						<div class="box box-info">
							<div class="box-header with-border">
								<h3 class="box-title">일간 동향</h3>
								<div class="box-tools pull-right">
									<button class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<div class="box-body">
								<div class="chart">
									<canvas id="dayChart" height="250"></canvas>
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
								<h3 class="box-title">주간 동향</h3>
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
								<h3 class="box-title">월간 동향</h3>
								<div class="box-tools pull-right">
									<button class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<div class="box-body">
								<div class="chart">
									<canvas id="monthChart" height="250"></canvas>
								</div>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
					<div class="col-lg-6 col-xs-12">
						<!-- LINE CHART -->
						<div class="box box-info">
							<div class="box-header with-border">
								<h3 class="box-title">연간 동향</h3>
								<div class="box-tools pull-right">
									<button class="btn btn-box-tool" data-widget="collapse">
										<i class="fa fa-minus"></i>
									</button>
								</div>
							</div>
							<div class="box-body">
								<div class="chart">
									<canvas id="yearChart" height="250"></canvas>
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
	$(function() {
	    $.ajax({
		type : 'post',
		url : '/webproject/sellStat.json',
		data : {},
		dataType : 'json',
		success : function(data) {
		    console.log(data);
		    $("#dayMoneyTotal").html(data.dayMoneyTotal);
		    $("#weekMoneyTotal").html();
		    $("#monthMoneyTotal").html();
		    $("#yearMoneyTotal").html();

		    $("#dayNumber").html();
		    $("#weekNumber").html();
		    $("#monthNumber").html();
		    $("#yearNumber").html();

		  /*   new Chart($("#dayChart").get(0).getContext("2d")).Line(chartDataMaker(), {});
		    new Chart($("#weekChart").get(0).getContext("2d")).Line(chartDataMaker(), {});
		    new Chart($("#monthChart").get(0).getContext("2d")).Line(chartDataMaker(), {});
		    new Chart($("#yearChart").get(0).getContext("2d")).Line(chartDataMaker(), {}); */
		}
	    });
	})

	/* function chartDataMaker(label, data) {
	    return {
		 labels : [ "January", "February", "March", "April", "May", "June", "July" ],
		labels : label,
		datasets : [ {
		    label : "My First dataset",
		    fillColor : "rgba(220,220,220,0.2)",
		    strokeColor : "rgba(220,220,220,1)",
		    pointColor : "rgba(220,220,220,1)",
		    pointStrokeColor : "#fff",
		    pointHighlightFill : "#fff",
		    pointHighlightStroke : "rgba(220,220,220,1)",
		   data : [ 65, 59, 80, 81, 56, 55, 40 ] 
		    data : data
		} ]
	    }
	}; */
    </script>

	<!--/여기까지 -->
</body>
</html>
