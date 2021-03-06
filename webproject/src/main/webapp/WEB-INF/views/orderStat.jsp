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
							<span class="info-box-icon bg-aqua" id="dayNumber">23</span>
							<div class="info-box-content">
								<span class="info-box-text">오늘의 주문량</span> <span
									class="info-box-number"  id="dayCntTotal">0</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="info-box">
							<span class="info-box-icon bg-green" id="weekNumber">3</span>
							<div class="info-box-content">
								<span class="info-box-text">이번주 주문량</span> <span
									class="info-box-number" id="weekCntTotal">0</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="info-box">
							<span class="info-box-icon bg-yellow" id="monthNumber">12</span>
							<div class="info-box-content">
								<span class="info-box-text">이번달 주문량</span> <span
									class="info-box-number" id="monthCntTotal">0</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="info-box">
							<span class="info-box-icon bg-red" id="yearNumber">2015</span>
							<div class="info-box-content">
								<span class="info-box-text">올해 주문량</span> <span
									class="info-box-number" id="yearCntTotal">0</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
				</div>

				<div class="row">
					<div class="col-lg-6 col-md-12 col-xs-12">
						<!-- LINE CHART -->
						<div class="box box-info">
							<div class="box-header with-border">
								<h3 class="box-title">일간 주문 동향</h3>
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
								<h3 class="box-title">주간 주문 동향</h3>
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
								<h3 class="box-title">월간 주문 동향</h3>
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
								<h3 class="box-title">연간 주문 동향</h3>
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
				    $("#dayCntTotal").html(data.getDayData.orderCnt );
				    $("#weekCntTotal").html(data.getWeekData.orderCnt );
				    $("#monthCntTotal").html(data.getMonthData.orderCnt );
				    $("#yearCntTotal").html(data.getYearData.orderCnt );
		
				    var d = new Date();
				    $("#dayNumber").html(d.getDate() + "<sub style='font-size: 20px'>일</sub>");
				    $("#weekNumber").html(weekAndDay() + "<sub style='font-size: 20px'>주</sub>");
				    $("#monthNumber").html((d.getMonth() + 1) + "<sub style='font-size: 20px'>월</sub>");
				    $("#yearNumber").html(d.getFullYear() + "<sub style='font-size: 20px'>년</sub>");
				    
				      new Chart($("#dayChart").get(0).getContext("2d")).Line(chartDataMaker(hours,arrayDataMaker(hours.length,data.dayMoneyGraphData,0)), {});
				      new Chart($("#weekChart").get(0).getContext("2d")).Line(chartDataMaker(days,arrayDataMaker(days.length,data.weekMoneyGraphData,1)), {});
				      new Chart($("#monthChart").get(0).getContext("2d")).Line(chartDataMaker(dates,arrayDataMaker(dates.length,data.monthMoneyGraphData,1)), {});
				      new Chart($("#yearChart").get(0).getContext("2d")).Line(chartDataMaker(months,arrayDataMaker(months.length,data.yearMoneyGraphData,1)), {}); 
				}
    });
})

function weekAndDay() {
    var date = new Date, prefixes = [ '1', '2', '3', '4', '5' ];
    return prefixes[0 | date.getDate() / 7];
}

var hours = ['0시','1시','2시','3시','4시','5시','6시','7시','8시','9시','10시','11시','12시','13시','14시','15시','16시','17시','18시','19시','20시','21시','22시','23시']
var days = ['일','월','화','수','목','금','토'];
var dates = ['1일','2일','3일','4일','5일','6일','7일','8일','9일','10일','11일','12일','13일','14일','15일','16일','17일','18일','19일','20일','21일','22일','23일','24일','25일','26일','27일','28일','29일','30일','31일'];
var months = ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'];

function chartDataMaker(label, data) {
    return {
	labels : label,
	datasets : [ {
	    label : "My First dataset",
	    fillColor : "rgba(220,220,220,0.2)",
	    strokeColor : "rgba(220,220,220,1)",
	    pointColor : "rgba(220,220,220,1)",
	    pointStrokeColor : "#fff",
	    pointHighlightFill : "#fff",
	    pointHighlightStroke : "rgba(220,220,220,1)",
	    data : data
	} ]
    }
};

function arrayDataMaker(arrayLength,graphData,startNumber){
	 var graphArray = new Array();
	   for(var i=0+startNumber; i<arrayLength+startNumber ;i++){
		 var imsiSu=0;
		 if(i<10){
			    i='0'+i;
			}
			   for(var j=0 ; j<graphData.length; j++ ){
						 if(graphData[j].standardTime==i){
						     imsiSu=graphData[j].orderCnt;
						     break;
						 }
			   }
	   graphArray.push(imsiSu);
		} 
	return graphArray;
}		 
	
	
    </script>

	<!--/여기까지 -->
</body>
</html>