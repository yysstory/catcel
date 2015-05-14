<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="inc/commoncss.jsp"></jsp:include>
<!--개별 css 추가  -->
<style type="text/css">
.select-cell {
	width: 120px;
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

					<div class="select-cell">
						<div>결제일</div>
						<div>
							<select class="form-control" name="A">
								<option value="">선택</option>
							</select>
						</div>
					</div>
					<div class="select-cell">
						<div>결제일</div>
						<div>
							<select class="form-control" name="B">
								<option value="">선택</option>
							</select>
						</div>
					</div>
					<div class="select-cell">
						<div>결제일</div>
						<div>
							<select class="form-control">
								<option value="">선택</option>

							</select>
						</div>
					</div>
					<div class="select-cell">
						<div>결제일</div>
						<div>
							<select class="form-control">
								<option value="">선택</option>

							</select>
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
		var arrList = [ "A", "B", "C", "D", "E", "F", "G", "H", "I" ];

		var calList = [ {
			"value" : "orcu-name-cal",
			"html" : "구매자명"
		},{
			"value" : "orcu-id-cal",
			"html" : "구매자 ID"
		},{
			"value" : "orcu-phonenumber-cal",
			"html" : "구매자 연락처"
		},{
			"value" : "order-number-cal",
			"html" : "쇼핑몰 주문번호"
		}];

		$(function() {
			addList(calList);
		})

		$(".form-control").change(function() {
			showHideOption();
		})

		function showHideOption() {
			var tempArray = new Array();
			$("select option:selected").each(function() {
				tempArray.push($(this).html());
			});

			console.log(tempArray);

			$("select").each(function() {
				$(this).children("option").each(function() {
					var imsiVal = $(this);
					imsiVal.show();
					$.each(tempArray, function(index, value) {
						if (imsiVal.val() == value) {
							imsiVal.hide();
						}
					});
				});
			});

		}

		function addList(arr) {
			for (var i = 0; i < arr.length; i++) {
				$("<option>").appendTo(".form-control").html(arr[i].html)
						.val(arr[i].value);
			}
		}
	</script>


	<!--/여기까지 -->
</body>
</html>