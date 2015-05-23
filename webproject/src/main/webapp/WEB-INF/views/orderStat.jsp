<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
  	<jsp:include page="inc/commoncss.jsp"></jsp:include>
    <!--개별 css 추가  -->
    
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">
    <script src="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.min.js"></script>
    
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
            Page Header
            <small>Optional description</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
            <li class="active">Here</li>
          </ol>
        </section>

       
        <section class="content">
 		<!-- 페이지 내용 작성-->
            
            
            <div class="box box-info">
                <div class="box-header with-border">
                  <h3 class="box-title">Line Chart</h3>
                  <div class="box-tools pull-right">
                    <button class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                    <button class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
                  </div>
                </div>
                <div class="box-body">
                  <div class="chart">
                    <canvas id="lineChart" height="255" width="756" style="width: 756px; height: 255px;"></canvas>
                  </div>
                </div><!-- /.box-body -->
              </div>
            
            
            
            
            
            
                
        <!--/여기까지 -->
       </section>
      </div><!-- /.content-wrapper -->
	  <jsp:include page="inc/footer.jsp"></jsp:include>        
    </div>
      <jsp:include page="inc/commonjs.jsp"></jsp:include>
     <!-- 추가적인 자바스크립트 플러그인 추가 및 자바스크립트 코드 작성 -->
     
     
     
     <!--/여기까지 -->
  </body>
</html>