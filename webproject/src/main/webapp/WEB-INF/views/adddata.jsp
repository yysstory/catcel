<%@page import="java.util.HashMap"%>
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
		<jsp:include page="inc/header.jsp"></jsp:include>
		<jsp:include page="inc/aside.jsp"></jsp:include>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- 페이지 제목 (큰글씨) -->
			<section class="content-header">
				<h1>
					스토어팜 <small>고객 데이터 등록</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>


			<section class="content">
				<!-- 페이지 내용 작성-->


				<div class="row">
					<div class="col-xs-12">
						<div class="box">
							<div class="box-header">
								<h3 class="box-title">테이블이름과 내용이 맞는지 확인하세요.</h3>
								<div class="box-tools">
									<div class="input-group">
										<input type="text" name="table_search"
											class="form-control input-sm pull-right"
											style="width: 150px;" placeholder="Search">
										<div class="input-group-btn">
											<button class="btn btn-sm btn-default">
												<i class="fa fa-search"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body table-responsive no-padding">
								<table class="table table-hover">
									<tbody>
										<tr>


											<th id="A"></th>
											<th id="B"></th>
											<th id="C"></th>
											<th id="D"></th>
											<th id="E"></th>
											<th id="F"></th>
											<th id="G"></th>
											<th id="H"></th>
											<th id="I">ID</th>
											<th id="J">ID</th>
											<th id="K">ID</th>
											<th id="L">ID</th>
											<th id="M">ID</th>
											<th id="N">ID</th>
											<th id="O">ID</th>
											<th id="P">ID</th>
											<th id="Q">ID</th>
											<th id="R">ID</th>
											<th id="S">ID</th>
											<th id="T">ID</th>
											<th id="U">ID</th>
											<th id="V">ID</th>
											<th id="W">ID</th>
											<th id="X">ID</th>
											<th id="Y">ID</th>
											<th id="Z">ID</th>
											<th id="AA">ID</th>
											<th id="AB">ID</th>
											<th id="AC">ID</th>
											<th id="AD">ID</th>
											<th id="AE">ID</th>
											<th id="AF">ID</th>



										</tr>
										<tr>
											<td>1</td>
											<td>2</td>
											<td>3</td>
											<td>4</td>
											<td>5</td>
											<td>1</td>
											<td>2</td>
											<td>3</td>
											<td>4</td>
											<td>5</td>
											<td>1</td>
											<td>2</td>
											<td>3</td>
											<td>4</td>
											<td>5</td>
											<td>1</td>
											<td>5</td>
										</tr>
									</tbody>
								</table>
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



	<!--/여기까지 -->
</body>
</html>