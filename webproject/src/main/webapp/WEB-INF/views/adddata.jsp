<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="inc/commoncss.jsp"></jsp:include>
<!--개별 css 추가  -->
<style type="text/css">
table {
	white-space: nowrap;
}

#tableDiv {
	overflow: scroll;
	max-height: 600px;
}
</style>

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
										<input type="file" id="xlf" name="xlfile"><br />

									</div>
								</div>
							</div>
							<!-- /.box-header -->
							<div class="box-body table-responsive no-padding" id="tableDiv">
								<table class="table table-hover">
									<tbody>
										<tr>
											<th id="A">${mallMap.A}</th>
											<th id="B">${mallMap.B}</th>
											<th id="C">${mallMap.C}</th>
											<th id="D">${mallMap.D}</th>
											<th id="E">${mallMap.E}</th>
											<th id="F">${mallMap.F}</th>
											<th id="G">${mallMap.G}</th>
											<th id="H">${mallMap.H}</th>
											<th id="I">${mallMap.I}</th>
											<th id="J">${mallMap.J}</th>
											<th id="K">${mallMap.K}</th>
											<th id="L">${mallMap.L}</th>
											<th id="M">${mallMap.M}</th>
											<th id="N">${mallMap.N}</th>
											<th id="O">${mallMap.O}</th>
											<th id="P">${mallMap.P}</th>
											<th id="Q">${mallMap.Q}</th>
											<th id="R">${mallMap.R}</th>
											<th id="S">${mallMap.S}</th>
											<th id="T">${mallMap.T}</th>
											<th id="U">${mallMap.U}</th>
											<th id="V">${mallMap.V}</th>
											<th id="W">${mallMap.W}</th>
											<th id="X">${mallMap.X}</th>
											<th id="Y">${mallMap.Y}</th>
											<th id="Z">${mallMap.Z}</th>
											<th id="AA">${mallMap.AA}</th>
											<th id="AB">${mallMap.AB}</th>
											<th id="AC">${mallMap.AC}</th>
											<th id="AD">${mallMap.AD}</th>
											<th id="AE">${mallMap.AE}</th>
											<th id="AF">${mallMap.AF}</th>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /.box -->
					</div>
				</div>

				<div class="col-lg-12" id="btn-group">
					<button type="button" id="submit-btn" class="btn btn-primary">저장</button>
					<button type="reset" class="btn btn-warning">취소</button>
				</div>



				<!--/여기까지 -->
			</section>



		</div>


		<!-- /.content-wrapper -->
		<jsp:include page="inc/footer.jsp"></jsp:include>
	</div>
	<jsp:include page="inc/commonjs.jsp"></jsp:include>
	<script src="plugins/xlsx/shim.js"></script>
	<script src="plugins/xlsx/jszip.js"></script>
	<script src="plugins/xlsx/xlsx.js"></script>
	<script src="plugins/xlsx/ods.js"></script>
	<!-- 추가적인 자바스크립트 플러그인 추가 및 자바스크립트 코드 작성 -->

	<script type="text/javascript">
		var xlf = document.getElementById('xlf');
		if (xlf.addEventListener)
			xlf.addEventListener('change', handleFile, false);

		var workbook;
		function handleFile(e) {
			var files = e.target.files;
			var i, f;
			for (i = 0, f = files[i]; i != files.length; ++i) {
				var reader = new FileReader();
				var name = f.name;
				reader.onload = function(e) {
					var data = e.target.result;

					 workbook = XLSX.read(data, {
						type : 'binary'
					});

				
		 			var worksheet = workbook.Sheets[workbook.SheetNames[0]];

		 			console.log(worksheet["A13"]);
		 			console.log(typeof worksheet["A13"].w);
		 			worksheet["A13"].w="oo";
		 			console.log(worksheet["A13"]);
		 			
		 			console.log(worksheet["B13"]);
		 			console.log(worksheet["C13"]);
		 			console.log(typeof worksheet["C13"].w);

		 			
		 			console.log(worksheet["D13"]);
		 			console.log(worksheet["E13"]);
		 			console.log(worksheet["F13"]);
		 			console.log(worksheet["G13"]);
		 			console.log(worksheet["H13"]);
		 			console.log(worksheet["I13"]);
		 			console.log(worksheet["J13"]);
		 			console.log(worksheet["K13"]);
		 			console.log(worksheet["L13"]);
		 			console.log(worksheet["M13"]);
		 			console.log(worksheet["N13"]);
		 			console.log(worksheet["O13"]);
					 
					

					
					
					
					
				};
				reader.readAsBinaryString(f);
			}
		}
	</script>






	<!--/여기까지 -->
</body>
</html>