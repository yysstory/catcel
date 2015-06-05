<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!-- REQUIRED JS SCRIPTS -->

<!-- jQuery 2.1.3 -->
<script src="plugins/jQuery/jQuery-2.1.3.min.js"></script>
<!-- Bootstrap 3.3.2 JS -->
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<!-- AdminLTE App -->

<script src="plugins/slimScroll/jquery.slimscroll.min.js"
	type="text/javascript"></script>


<script src="dist/js/app.min.js" type="text/javascript"></script>

<script type="text/javascript">
	$(function() {
		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr("content");
		$(document).ajaxSend(function(e, xhr, options) {
			xhr.setRequestHeader(header, token);
		});
	});
	
	$(".shop-remove-div").on('click',function(event){
		event.stopPropagation();
		if(confirm("정말 삭제하시겠습니까??") == true){
			$.ajax({
				type : 'post',
				url : 'removeMall.json',
				data : {'removeMallName' : $(this).attr("data-removeMallName")},
				dataType : 'json',
				success : function(data) {
					alert("삭제했습니다.");
					location.href='addshop.htm';
				},
				error : function(data){
					alert("실패했습니다. 다시 시도해 주세요.");
				}
				});
		}else{
			return;
		}
		
	});
</script>