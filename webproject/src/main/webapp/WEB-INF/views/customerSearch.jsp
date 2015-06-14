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
							        <button id="searchColumn" type="button" class="btn btn-warning btn-sm dropdown-toggle" data-toggle="dropdown" aria-expanded="false">구매자ID <span class="caret"></span></button>
								        <ul class="dropdown-menu" role="menu">
								          <li value="ORCU_ID"><a href="#">구매자ID</a></li>
								          <li value="ORCU_NAME"><a href="#">구매자이름</a></li>
								          <li value="RECU_NAME"><a href="#">수령인이름</a></li>
								          <li value="RECU_NAME"><a href="#">주문번호</a></li>
								        </ul>
							      </div><!-- /btn-group -->
                    <!-- <div class="input-group-btn">
                      <select class="btn btn-sm btn-default">
                        <option value="">구매자ID</option>
                        <option value="orcuName" selected>구매자이름</option>
                        <option value="">수령인이름</option>
                        <option value="">주문번호</option>
                      </select>
                    </div> -->
                      <input id="columnInput" name="columnInput" type="text" class="form-control input-sm pull-right" placeholder="Search">
                      <div class="input-group-btn">
                        <button id="searchBtn" type="button" class="btn btn-sm btn-info"><i class="fa fa-search"></i></button>
                      </div>
                    </div>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table id="searchTable" class="table table-hover">
                    <tbody><tr>
                      <th>주문번호</th>
                      <th>결제일</th>
                      <th>구매자ID</th>
                      <th>구매자</th>
                      <th>수령인</th>
                      <th>상품명</th>
                    </tr>
                  </tbody></table>
                </div><!-- /.box-body -->
              </div><!-- /.box -->
            </div>
          </div>
        
        <!-- Modal HTML -->
    <div id="customerModal" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Confirmation</h4>
                </div>
                <div class="modal-body">
                    <p>Do you want to save changes you made to document before closing?</p>
                    <p class="text-warning"><small>If you don't save, your changes will be lost.</small></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
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
		
	var sellectColumnValue;
	$(".dropdown-menu li").click(function(){
		var sellectColumn = $(this).text();
		var sellectValue = $(this).attr('value');
		$("#searchColumn").html(sellectColumn).attr('value', sellectValue);
		
		console.log(sellectColumn);
		
		/* sellectColumnValue = $(this).attr("value");
		console.log(sellectColumnValue); */
	});
	
	$

	$("#searchBtn").on('click',function(){
		  $(".appendTr").remove();
		  $.ajax({
		        type : 'post',
		        url : 'customerSearch.json',
		        data : {'searchColumn':$("#searchColumn").attr('value'),
		        	      'columnInput':$("#columnInput").val()},
		        dataType : 'json',
		        success : function(data) {
		        	for(var orderRaw in data.customerSearch){
		        		$('#searchTable').append($("<tr>").addClass("appendTr")
		        				.append($("<td>").html(data.customerSearch[orderRaw].orderNumber))
		        				.append($("<td>").html(data.customerSearch[orderRaw].paymentDate))
		        				.append($("<td>").html(data.customerSearch[orderRaw].orcuId))
		        				.append($("<td>").html(data.customerSearch[orderRaw].orcuName))
		        				.append($("<td>").html(data.customerSearch[orderRaw].recuName))
		        				.append($("<td>").html(data.customerSearch[orderRaw].productName)))
		        		console.log(data.customerSearch[orderRaw].orcuName);
		        		
		        	}
		        }
		      });
	});
	
	/* $(function(){
		$("#searchTable tr").on('click', function(){
			$('div.modal').modal({
				remote : 'modalLayer.htm'
			});
		})
	}) */
	$(function(){
    $("#searchTable").on('click', function(){
      $("#customerModal").modal('show');
    })
  })
	
	
	
	
	</script>

	<!--/여기까지 -->
</body>
</html>