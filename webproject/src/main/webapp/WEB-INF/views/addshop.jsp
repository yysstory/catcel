<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="inc/commoncss.jsp"></jsp:include>
<!--개별 css 추가  -->
<style type="text/css">
.select-cell {
	width: 150px;
	float: left;
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
					쇼핑몰 추가 <small>운영중인 몰 정보를 입력하세요</small>
				</h1>
			</section>

			<section class="content">
				<!-- 페이지 내용 작성-->
				<div id="select-set">


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

	
 		var calList = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","AA","AB","AC","AD","AE","AF"];

		var nameList = [ {
			"name" : "orcu-name-cal",
			"html" : "구매자명"
		},{
			"name" : "orcu-id-cal",
			"html" : "구매자 ID"
		},{
			"name" : "orcu-phonenumber-cal",
			"html" : "구매자 연락처"
		},{
			"name" : "order-number-cal",
			"html" : "쇼핑몰 주문번호"
		},{
			"name" : "order-number",
			"html" : "쇼핑몰 주문번호2"
		}];

		
		$(function() {
			addSelectDiv(nameList);
			addOption(calList);
			
			$(".form-control").on("change",function() {
				showHideOption();
			})
		})

		

		function showHideOption() {
			var tempArray = new Array();
			$("select option:selected").each(function() {
				tempArray.push($(this).val());
			});

			console.log(tempArray);

			$("select").each(function() {
				$(this).children("option").each(function() {
					var imsiVal = $(this);
					imsiVal.show();
					$.each(tempArray, function(index, value) {
						if (imsiVal.val() === value) {
							imsiVal.hide();
						}
					});
				});
			});

		}

		function addSelectDiv(arr) {
			for (var i = 0; i < arr.length; i++) {
				$("<div>").appendTo("#select-set").addClass("select-cell").append($("<div>")
						.html(arr[i].html)).append($("<div>").append($("<select>").addClass("form-control").attr("name",arr[i].name).append($("<option>").html("선택"))));
				
	
			}
		}
		
		function addOption(arr){
			for (var i = 0; i < arr.length; i++) {
				$("<option>").appendTo(".form-control").html(arr[i]).val(arr[i]);
			}
			
		}
		
	</script>


<!-- 	<div id="select-set">

					<div class="select-cell">
						<div>결제일</div>
						<div>
							<select class="form-control" name="A">
								<option value="">선택</option>
							</select>
						</div>
					</div> -->

	<!--/여기까지 -->
</body>
</html>