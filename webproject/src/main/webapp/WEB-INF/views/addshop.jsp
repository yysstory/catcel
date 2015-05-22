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

#btn-group{
	padding-top: 35px;
	padding-left: 15px;
	
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

				<form action="" method="post" id="submit-form">
					<div class="col-lg-12">
						<div class="form-group col-lg-2">
							<label for="MALL_NAME">쇼핑몰 이름</label> <input id="MALL_NAME"
								class="form-control" name="mallName" />
						</div>


						<div class="form-group col-lg-2" id="">
							<label for="MALL_COMMITSSION_CAL">수수료</label> <input
								id="MALL_COMMITSSION_CAL" class="form-control" name="mallCommitssionCal" />
						</div>



						<div class="form-group col-lg-2" id="">
							<label for="DATA_START_CAL">데이터 시작 행</label> <input
								id="DATA_START_CAL" class="form-control" name="dataStartCal"/>
						</div>
					</div>



					<!-- 페이지 내용 작성-->
					<div class="col-lg-12">
						<div id="select-set" class="col-lg-12">
							<!-- 셀렉트 상자 들어가는 공간 -->
						</div>
					</div>

					<div class="col-lg-12">
						<div id="btn-group">
							<button type="button" id="submit-btn" class="btn btn-primary">저장</button>
							<button type="reset" class="btn btn-warning">취소</button>
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
			"name" : "orcuNameCal",
			"html" : "구매자명"
		}, {
			"name" : "orcuIdCal",
			"html" : "구매자ID"
		}, {
			"name" : "orcuPhoneNumberCal",
			"html" : "구매자 연락처"
		}, {
			"name" : "orderNumberCal",
			"html" : "쇼핑몰 주문번호"
		}, {
			"name" : "orderCodeCal",
			"html" : "쇼핑몰 주문코드"
		}, {
			"name" : "paymentDateCal",
			"html" : "결제일"
		}, {
			"name" : "paymentMethodCal",
			"html" : "결제수단"
		}, {
			"name" : "deliveryMethodCal",
			"html" : "배송수단"
		}, {
			"name" : "shoppingChargeCal",
			"html" : "배송비"
		}, {
			"name" : "deliveryMessageCal",
			"html" : "배송메세지"
		}, {
			"name" : "buyDateCal",
			"html" : "구매일"
		}, {
			"name" : "shippingDateCal",
			"html" : "발송일"
		}, {
			"name" : "productNumberCal",
			"html" : "상품넘버"
		}, {
			"name" : "productNameCal",
			"html" : "상품명"
		}, {
			"name" : "productOptionCal",
			"html" : "옵션"
		}, {
			"name" : "productAddCal",
			"html" : "추가구성"
		}, {
			"name" : "productPriceCal",
			"html" : "가격"
		}, {
			"name" : "productQtyCal",
			"html" : "수량"
		}, {
			"name" : "recuNameCal",
			"html" : "수취인명"
		}, {
			"name" : "recuPhoneNumberCal",
			"html" : "수취인핸드폰"
		}, {
			"name" : "recuHomeNumberCal",
			"html" : "수취인집전화"
		}, {
			"name" : "recuZipCodeCal",
			"html" : "우편번호"
		}, {
			"name" : "recuAddressCal",
			"html" : "주소"
		} ];

		$(function() {
			addSelectDiv(nameList);
			addOption(calList);

			$(".form-control").on("change", function() {
				showHideOption();
			})
			
			$("#submit-btn").on("click",function(){
				
				$("select").each(function() {
					$(this).children("option").each(function() {
						$(this).removeAttr("disabled");	
					});
				});
				
				$("#submit-form").submit();
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
																.html(""))));

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