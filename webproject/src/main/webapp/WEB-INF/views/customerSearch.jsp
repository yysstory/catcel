<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
  	<jsp:include page="inc/commoncss.jsp"></jsp:include>
    <!--개별 css 추가  -->
    
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    
    
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
                            주문 통계
            <small>Optional description</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
            <li class="active">Here</li>
          </ol>
        </section>

       
        <section class="content">
 		<!-- 페이지 내용 작성-->
            
            <div class="btn-group">
              <button type="button" class="btn btn-info">주문건수</button>
              <button type="button" class="btn btn-info">평균</button>
            </div>
            
            <div class="row">
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-aqua">
                <div class="inner">
                  <h3>${todayOrder}</h3>
                  <p>오늘의 주문건수</p>
                </div>
                <div class="icon">
                  <i class="fa fa-shopping-cart"></i>
                </div>
                <a href="#" class="small-box-footer">
                  More info <i class="fa fa-arrow-circle-right"></i>
                </a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-green">
                <div class="inner">
                  <h3>${weekOrder}<sup style="font-size: 20px">%</sup></h3>
                  <p>이번주 주문건수</p>
                </div>
                <div class="icon">
                  <i class="ion ion-stats-bars"></i>
                </div>
                <a href="#" class="small-box-footer">
                  More info <i class="fa fa-arrow-circle-right"></i>
                </a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-yellow">
                <div class="inner">
                  <h3>${monthOrder}</h3>
                  <p>이번달 주문건수</p>
                </div>
                <div class="icon">
                  <i class="ion ion-person-add"></i>
                </div>
                <a href="#" class="small-box-footer">
                  More info <i class="fa fa-arrow-circle-right"></i>
                </a>
              </div>
            </div><!-- ./col -->
            <div class="col-lg-3 col-xs-6">
              <!-- small box -->
              <div class="small-box bg-red">
                <div class="inner">
                  <h3>${yearOrder}</h3>
                  <p>올해 주문건수</p>
                </div>
                <div class="icon">
                  <i class="ion ion-pie-graph"></i>
                </div>
                <a href="#" class="small-box-footer">
                  More info <i class="fa fa-arrow-circle-right"></i>
                </a>
              </div>
            </div><!-- ./col -->
          </div>
            
          
            
            <div>
            <h3>인기상품 BEST5</h3>
            
               <c:forEach var="bp" items="${orderBestList}">
               <p> ${bp.rnum} : ${bp.productName} </p>
               </c:forEach>
            
            </div>
            
            
            
            <div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">주문량 추이</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
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
                </div><!-- /.box-body -->
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
      </div><!-- /.content-wrapper -->
	  <jsp:include page="inc/footer.jsp"></jsp:include>        
    </div>
      <jsp:include page="inc/commonjs.jsp"></jsp:include>
     <!-- 추가적인 자바스크립트 플러그인 추가 및 자바스크립트 코드 작성 -->
      <script src="//cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
      <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
      <script type="text/javascript">
      new Morris.Line({
    	  // ID of the element in which to draw the chart.
    	  element: 'myfirstchart',
    	  // Chart data records -- each entry in this array corresponds to a point on
    	  // the chart.
    	  data: [
    	    { year: '2008', value1: 20, value2: 40 },
    	    { year: '2009', value1: 10, value2: 10 },
    	    { year: '2010', value1: 5, value2: 15 },
    	    { year: '2011', value1: 5 },
    	    { year: '2012', value1: 20 }
    	  ],
    	  // The name of the data record attribute that contains x-values.
    	  xkey: 'year',
    	  // A list of names of data record attributes that contain y-values.
    	  ykeys: ['value1', 'value2'],
    	  // Labels for the ykeys -- will be displayed when you hover over the
    	  // chart.
    	  labels: ['Value1', 'Value2'],
        lineColors: ['green', 'red'],
        pointFillColors: ['green', 'red']
    	});
      </script>
     
     <!--/여기까지 -->
  </body>
</html>