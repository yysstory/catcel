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
					고객 찾기 <small>Optional description</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>

			<section class="content">
				<!-- 페이지 내용 작성-->
        <div class="row">
            <div class="col-xs-12 col-lg-12">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">검색결과</h3>
                  
                  <div class="box-tools">
                    
                    <div class="input-group" style="width: 250px;">
                    <div class="input-group-btn">
							        <button type="button" class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">구매자ID <span class="caret"></span></button>
							        <ul class="dropdown-menu" role="menu">
							          <li><a href="#">구매자ID</a></li>
							          <li><a href="#">구매자이름</a></li>
							          <li><a href="#">수령인이름</a></li>
							          <li><a href="#">주문번호</a></li>
							        </ul>
							      </div><!-- /btn-group -->
                    <div class="input-group-btn">
                      <select class="btn btn-sm btn-default">
                        <option value="">구매자ID</option>
                        <option value="orcuName" selected>구매자이름</option>
                        <option value="">수령인이름</option>
                        <option value="">주문번호</option>
                      </select>
                    </div>
                      <input id="orcu_name" name="orcu_name" type="text" class="form-control input-sm pull-right" placeholder="Search">
                      <div class="input-group-btn">
                        <button id="searchBtn" type="button" class="btn btn-sm btn-info"><i class="fa fa-search"></i></button>
                      </div>
                    </div>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table id="searchTable" class="table table-hover">
                    <tbody><tr>
                      <th>ID</th>
                      <th>구매자</th>
                      <th>Date</th>
                      <th>Status</th>
                      <th>Reason</th>
                    </tr>
                  </tbody></table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
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
	<script type="text/javascript">
		
	
	$("#searchBtn").on('click',function(){
		  $(".appendTr").remove();
		  $.ajax({
		        type : 'post',
		        url : 'customerSearch2.json',
		        data : {'orcu_name':$("#orcu_name").val()},
		        dataType : 'json',
		        success : function(data) {
		        	for(var orderRaw in data.customerSearch2){
		        		$('#searchTable').append($("<tr>").addClass("appendTr").append($("<td>")).append($("<td>").html(data.customerSearch2[orderRaw].orcuName)))
		        		console.log(data.customerSearch2[orderRaw].orcuName);
		        		
		        	}
		        }
		      });
	});
	
	
	
	
	</script>

	<!--/여기까지 -->
</body>
</html>