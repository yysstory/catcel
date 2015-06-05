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
				<form action="customerSearch.htm" method="post" id="submit-form">
					<div class="input-group col-lg-2">
						<input name="orcu_name" type="text" class="form-control"
							placeholder="Search.."> <span class="input-group-btn">
							<button class="btn btn-info btn-flat" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
				</form>

				<div class="box box-default color-palette-box">
					<div class="box-header with-border">
						<h3 class="box-title">
							<i class="fa fa-tag"></i>검색결과
						</h3>
					</div>
					<div class="box-body">

				<%-- 		<c:if test="${객체 ne null}">
							<c:forEach var="cs" items="${customerSearch}">
								<p>${cs.customerName} dd</p>
							</c:forEach>
						</c:if> --%>
					</div>
					<!-- /.box-body -->
				</div>
				
				<div class="input-group col-lg-2">
            <input name="orcu_name" type="text" class="form-control"
              placeholder="Search.."> <span class="input-group-btn">
              <button class="btn btn-info btn-flat" type="button">
                <i class="fa fa-search"></i>
              </button>
            </span>
          </div>
        <div class="row">
            <div class="col-xs-6 col-lg-6">
              <div class="box">
                <div class="box-header">
                  <h3 class="box-title">검색결과</h3>
                  <div class="box-tools">
                    <div class="input-group" style="width: 150px;">
                      <input type="text" name="table_search" class="form-control input-sm pull-right" placeholder="Search">
                      <div class="input-group-btn">
                        <button class="btn btn-sm btn-default"><i class="fa fa-search"></i></button>
                      </div>
                    </div>
                  </div>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table class="table table-hover">
                    <tbody><tr>
                      <th>ID</th>
                      <th>User</th>
                      <th>Date</th>
                      <th>Status</th>
                      <th>Reason</th>
                    </tr>
                    <tr>
                      <td>183</td>
                      <td>John Doe</td>
                      <td>11-7-2014</td>
                      <td><span class="label label-success">Approved</span></td>
                      <td>Bacon ipsum dolor sit amet salami venison chicken flank fatback doner.</td>
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
		
	
	$.ajax({
        type : 'post',
        url : '/customerSearch2.json',
        data : {'name':$("#").attr()},
        dataType : 'json',
        success : function(data) {
          console.log(data.success);
           console.log(data.age);
           $("h1").html(data.age);
        }
      });
	
	
	
	
	</script>

	<!--/여기까지 -->
</body>
</html>