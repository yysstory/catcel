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
	padding-top: 20px;
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

				<form action="" method="post">
					<div class="col-lg-12">
						<div class="form-group col-lg-2" id="mall_name_div">
							<label for="mall_name">쇼핑몰 이름</label> <input id="mall_name"
								class="form-control" />
						</div>
					</div>
					<!-- 페이지 내용 작성-->
					<div class="col-lg-12">
						<div id="select-set" class="col-lg-12">
							<!-- 셀렉트 상자 들어가는 공간 -->
						</div>
					</div>

				</form>

				<!--/여기까지 -->
			</section>

		</div>
		<!-- /.content-wrapper -->
		<jsp:include page="inc/footer.jsp"></jsp:include>
	</div>
	<jsp:include page="inc/commonjs.jsp"></jsp:include>
	<!-- 추가적인 자바스크립트 플러그인 추가 및 자바스크립트 코드 작성 -->

	<script type="text/javascript">
		var calList = [ "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K",
				"L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W",
				"X", "Y", "Z", "AA", "AB", "AC", "AD", "AE", "AF" ];

		var nameList = [ {
			"name" : "ORCU_NAME_CAL",
			"html" : "구매자명"
		}, {
			"name" : "ORCU_ID_CAL",
			"html" : "구매자ID"
		}, {
			"name" : "ORCU_PHONENUMBER_CAL",
			"html" : "구매자 연락처"
		}, {
			"name" : "ORDER_NUMBER_CAL",
			"html" : "쇼핑몰 주문번호"
		}, {
			"name" : "ORDER_CODE_CAL",
			"html" : "쇼핑몰 주문코드"
		}, {
			"name" : "PAYMENT_DATE_CAL",
			"html" : "결제일"
		}, {
			"name" : "PAYMENT_METHOD_CAL",
			"html" : "결제수단"
		}, {
			"name" : "DELIVERY_METHOD_CAL",
			"html" : "배송수단"
		}, {
			"name" : "SHOPPING_CHARGE_CAL",
			"html" : "배송비"
		}, {
			"name" : "DELIVERY_MESSAGE_CAL",
			"html" : "배송메세지"
		}, {
			"name" : "BUY_DATE_CAL",
			"html" : "구매일"
		}, {
			"name" : "SHIPPING_DATE_CAL",
			"html" : "발송일"
		}, {
			"name" : "PRODUCT_NUMBER_CAL",
			"html" : "상품넘버"
		}, {
			"name" : "PRODUCT_NAME_CAL",
			"html" : "상품명"
		}, {
			"name" : "PRODUCT_OPTION_CAL",
			"html" : "옵션"
		}, {
			"name" : "PRODUCT_ADD_CAL",
			"html" : "추가구성"
		}, {
			"name" : "PRODUCT_PRICE_CAL",
			"html" : "가격"
		}, {
			"name" : "PRODUCT_QTY_CAL",
			"html" : "수량"
		}, {
			"name" : "RECU_NAME_CAL",
			"html" : "수취인명"
		}, {
			"name" : "RECU_PHONENUMBER_CAL",
			"html" : "수취인핸드폰"
		}, {
			"name" : "RECU_HOMENUMBER_CAL",
			"html" : "수취인집전화"
		}, {
			"name" : "RECU_ZIPCODE_CAL",
			"html" : "우편번호"
		}, {
			"name" : "RECU_ADDRESS_CAL",
			"html" : "주소"
		} ];

		$(function() {
			addSelectDiv(nameList);
			addOption(calList);

			$(".form-control").on("change", function() {
				showHideOption();
			})
		})

		function showHideOption() {
			var tempArray = new Array();
			$("select option:selected").each(function() {
				tempArray.push($(this).val());
			});

			/* console.log(tempArray); */

			$("select").each(function() {
				$(this).children("option").each(function() {
					var imsiVal = $(this);
					imsiVal.removeAttr("disabled");
					$.each(tempArray, function(index, value) {
						if (imsiVal.val() === value) {
							/* imsiVal.hide(); */
							imsiVal.attr("disabled", "disabled")
						}
					});
				});
			});

		}

		function addSelectDiv(arr) {
			for (var i = 0; i < arr.length; i++) {
				$("<div>").appendTo("#select-set").addClass("select-cell")
						.append($("<div>").html(arr[i].html)).append(
								$("<div>").append(
										$("<select>").addClass("form-control")
												.attr("name", arr[i].name)
												.append(
														$("<option>")
																.html("선택"))));

			}
		}

		function addOption(arr) {
			for (var i = 0; i < arr.length; i++) {
				$("<option>").appendTo(".form-control").html(arr[i])
						.val(arr[i]);
			}

		}
	</script>


</body>
</html>