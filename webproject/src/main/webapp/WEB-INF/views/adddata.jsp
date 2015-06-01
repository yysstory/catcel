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
	min-height: 300px;
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
								<table class="table table-hover" id="dataTable">
									<tbody>
										<tr>
											<th id="A" data-override="${mallMap.a}">${mallMap.A}</th>
											<th id="B" data-override="${mallMap.b}">${mallMap.B}</th>
											<th id="C" data-override="${mallMap.c}">${mallMap.C}</th>
											<th id="D" data-override="${mallMap.d}">${mallMap.D}</th>
											<th id="E" data-override="${mallMap.e}">${mallMap.E}</th>
											<th id="F" data-override="${mallMap.f}">${mallMap.F}</th>
											<th id="G" data-override="${mallMap.g}">${mallMap.G}</th>
											<th id="H" data-override="${mallMap.h}">${mallMap.H}</th>
											<th id="I" data-override="${mallMap.i}">${mallMap.I}</th>
											<th id="J" data-override="${mallMap.j}">${mallMap.J}</th>
											<th id="K" data-override="${mallMap.k}">${mallMap.K}</th>
											<th id="L" data-override="${mallMap.l}">${mallMap.L}</th>
											<th id="M" data-override="${mallMap.m}">${mallMap.M}</th>
											<th id="N" data-override="${mallMap.n}">${mallMap.N}</th>
											<th id="O" data-override="${mallMap.o}">${mallMap.O}</th>
											<th id="P" data-override="${mallMap.p}">${mallMap.P}</th>
											<th id="Q" data-override="${mallMap.q}">${mallMap.Q}</th>
											<th id="R" data-override="${mallMap.r}">${mallMap.R}</th>
											<th id="S" data-override="${mallMap.s}">${mallMap.S}</th>
											<th id="T" data-override="${mallMap.t}">${mallMap.T}</th>
											<th id="U" data-override="${mallMap.u}">${mallMap.U}</th>
											<th id="V" data-override="${mallMap.v}">${mallMap.V}</th>
											<th id="W" data-override="${mallMap.w}">${mallMap.W}</th>
											<th id="X" data-override="${mallMap.x}">${mallMap.X}</th>
											<th id="Y" data-override="${mallMap.y}">${mallMap.Y}</th>
											<th id="Z" data-override="${mallMap.z}">${mallMap.Z}</th>
											<th id="AA" data-override="${mallMap.aa}">${mallMap.AA}</th>
											<th id="AB" data-override="${mallMap.ab}">${mallMap.AB}</th>
											<th id="AC" data-override="${mallMap.ac}">${mallMap.AC}</th>
											<th id="AD" data-override="${mallMap.ad}">${mallMap.AD}</th>
											<th id="AE" data-override="${mallMap.ae}">${mallMap.AE}</th>
											<th id="AF" data-override="${mallMap.af}">${mallMap.AF}</th>
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
	<script src="plugins/tabletojson/jquery.tabletojson.js"></script>
	<!-- 추가적인 자바스크립트 플러그인 추가 및 자바스크립트 코드 작성 -->

	<script type="text/javascript">
		$('#submit-btn').on('click', function() {
			var tableJson = $('#dataTable').tableToJSON();
		
			
		/* 	   $.ajax({
			        type : 'post',
			        url : '/webproject/adddata.json',
			        data : {'name':'용식'},
			        dataType : 'json',
			        success : function(data) {
			          console.log(data.success);
			           console.log(data.age);
			           $("h1").html(data.age);
			        }
			        
			      }); */
			
			
			$.ajax({
				type : 'post',
				url : '/webproject/adddata.json',
				data : JSON.stringify(tableJson),
				dataType : 'json',
				contentType: "application/json; charset=utf-8",
				success : function(data) {
					console.log(data);
				}
			});

		});

		var columnList = [ "A", "B", "C", "D", "E", "F", "G", "H", "I", "J",
				"K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V",
				"W", "X", "Y", "Z", "AA", "AB", "AC", "AD", "AE", "AF" ];

		//aa33 , a33 이런식으로 들어오는 정보를 처리 
		function sheetInfoF(sheetInfo) {
			var lastRow;
			var typeSheetInfo1 = parseInt(sheetInfo.substring(1));
			var typeSheetInfo2 = parseInt(sheetInfo.substring(2));

			if (!isNaN(typeSheetInfo1)) {
				lastRow = typeSheetInfo1;
			} else if (!isNaN(typeSheetInfo2)) {
				lastRow = typeSheetInfo2;
			} else {
				alret("알수없는 오류입니다. 관리자에게 문의하세요.");
			}
			return lastRow;

		}

		function addTd(startNumber, sheetInfo, worksheet) {
			for (var i = startNumber; i < sheetInfoF(sheetInfo) + 1; i++) {
				var tableTr = $("<tr>").appendTo("#dataTable").addClass(
						"dataTr");
				for (column in columnList) {
					try {
						$("<td>").html(worksheet[columnList[column] + i].w)
								.appendTo(tableTr);
					} catch (e) {
						$("<td>").html("").appendTo(tableTr);
					}
				}
			}
		}

		var xlf = document.getElementById('xlf');

		if (xlf.addEventListener) {
			xlf.addEventListener('change', handleFile, false);
		}

		var workbook;

		function handleFile(e) {
			$(".dataTr").remove();
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
					console.time("소요시간");
					var sheetInfo = worksheet["!ref"].split(":")[1];
					addTd(2, sheetInfo, worksheet);
					console.timeEnd("소요시간");

				};
				reader.readAsBinaryString(f);
			}

		}
	</script>






	<!--/여기까지 -->
</body>
</html>