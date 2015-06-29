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
					Page Header <small>Optional description</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
					<li class="active">Here</li>
				</ol>
			</section>


			<section class="content">



				<div class="box">
					<div class="box-body pad">
						<textarea class="textarea" placeholder="오늘은 어떠셨나요?"
							style="width: 100%; height: 100px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
						<a id="textareaBtn" class="btn btn-default" type="submit">글쓰기</a>
					</div>
				</div>




				<ul class="timeline">
					<li></li>
	<!-- 			
					타임라인 라벨
					<li data-boardNo="2" data-email="yysstory@gmail.com" class="time-label"><span class="bg-blue"> 회사명 </span></li>
					<li>
						timeline icon <i class="fa fa-envelope bg-blue"></i>
						<div class="timeline-item">
							<span class="time"><i class="fa fa-clock-o"></i>2015/06/17 12:05</span>

							<h3 class="timeline-header">
								<a href="#">회사명</a>
							</h3>

							<div class="timeline-body">내용</div>

							<div class="timeline-footer">
								<a class="btn btn-warning  btn-xs">수정</a> <a
									class="btn btn-danger btn-xs">삭제</a>
							</div>
						</div>
					</li>




					<li data-boardNo="2"><i class="fa fa-user bg-aqua"></i>
						<div class="timeline-item">
							<span class="time"><i class="fa fa-clock-o"></i>2015/06/17
								12:06</span>

							<h3 class="timeline-header">
								<a href="#">회사명</a>
							</h3>

							<div class="timeline-body">내용</div>

							<div class="timeline-footer">
								<a class="btn btn-warning  btn-xs">수정</a> <a
									class="btn btn-danger btn-xs">삭제</a>
							</div>
						</div>
					</li>




					<li data-boardNo="7"><i class="fa fa-user bg-aqua"></i>
						<div class="timeline-item">
							<div class="input-group">
								<div class="input-group-btn replyContent">
									<button class="btn btn-default ">
										<i class="fa fa-plus"></i>
									</button>
								</div>
								<input class="form-control" placeholder="댓글을 입력하세요...">
							</div>
						</div></li> -->
					
					<script id="entry-template" type="text/x-handlebars-template">
				


					<li data-boardNo="{{boardNo}}" data-email="{{user.userEmail}}" class="time-label">
							<span class="bg-blue"> {{user.userName}} </span>
					</li>
					
					<li>
						<!-- timeline icon --> 
						<i class="fa fa-envelope bg-blue"></i>
						<div class="timeline-item">
							<span class="time"><i class="fa fa-clock-o"></i>{{updateDate}}</span>

							<h3 class="timeline-header">
								<a href="#">{{user.userName}}</a>
							</h3>

							<div class="timeline-body">{{content}}</div>

							{{#ifUser user.userEmail}}
							<div class="timeline-footer">
								<a class="btn btn-warning  btn-xs">수정</a> <a
									class="btn btn-danger btn-xs">삭제</a>
							</div>
							{{/ifUser}}
						</div>
					</li>

{{#each replyList}}			
					<li data-replyNo="{{replyNo}}"><i class="fa fa-user bg-aqua"></i>
						<div class="timeline-item">
							<span class="time"><i class="fa fa-clock-o"></i>
							{{updateDate}}
							</span>
							<h3 class="timeline-header">
								<a href="#">{{user.userName}}</a>
							</h3>
							<div class="timeline-body">{{content}}</div>
							{{#ifUser user.userEmail}}
							<div class="timeline-footer">
								<a class="btn btn-warning  btn-xs">수정</a> <a
									class="btn btn-danger btn-xs">삭제</a>
							</div>
							{{/ifUser}}
						</div>
					</li>
{{/each}}		

					<li data-boardNo="{{boardNo}}"><i class="fa fa-user bg-aqua"></i>
						<div class="timeline-item">
							<div class="input-group">
								<div class="input-group-btn replyContent">
									<button class="btn btn-default ">
										<i class="fa fa-plus"></i>
									</button>
								</div>
								<input class="form-control" placeholder="댓글을 입력하세요...">
							</div>
						</div></li>
					</script>
				</ul>

			<button id="addLoadBtn">더 가져오기</button>
				<!--/여기까지 -->
			</section>
		</div>
		<!-- /.content-wrapper -->
		<jsp:include page="inc/footer.jsp"></jsp:include>
	</div>
	<jsp:include page="inc/commonjs.jsp"></jsp:include>
	<!-- <script type="text/javascript" src="plugins/wysihtml5/wysihtml5-0.3.0.js"></script> -->
	<!-- 추가적인 자바스크립트 플러그인 추가 및 자바스크립트 코드 작성 -->

  <script src="plugins/handlebars/handlebars-v3.0.3.js"	type="text/javascript"></script>
	<script type="text/javascript">
	
	$(function(){
	    readTimeLine(5);
	})
	
	$("#addLoadBtn").on("click",function(){
	    var boardNo=$(".timeline li").last().attr("data-boardNo");
	    readTimeLine(boardNo);    
	})
	
	function templateMaker(id,userName,data){
	    var source   = $("#"+id).html();
	    Handlebars.registerHelper('ifUser', function(a, options) {
			  if (a === userName) {
		    return options.fn(this);
			  }
		  	return options.inverse(this);
			});
	    var template = Handlebars.compile(source);
	    return template(data);
	}
	
	function readTimeLine(startPage) {
	    console.time("timeCheck");

    $.ajax({
		type : 'post',
		url : 'timeLine.json',
		data : {
		    'startPage' : startPage
		},
		dataType : 'json',
		success : function(data) {
		 	  console.log(data);
		   
		   	for(board in data.boardList){
 				    var html =	templateMaker("entry-template",data.user,data.boardList[board]);
				    $(".timeline li").last().after(html);
		   	}
		   	console.timeEnd("timeCheck");
		},
		error : function(data) {
		    alert("불러오기가 실패 했습니다. 잠시 후 시도해주세요.");
		}
	    });
    

	}

	$("#textareaBtn").on("click", function() {
	    var content = $("textarea").val();
	    $.ajax({
		type : 'post',
		url : 'timeLineWrite.json',
		data : {
		    'content' : content
		},
		dataType : 'json',
		success : function(data) {
		},
		error : function(data) {
		    alert("글쓰기가 실패했습니다. 잠시 후 시도해주세요.");
		}
	    });
	    /* replace(/<br\s?\/?>/g,"\n")) */
	})
	
	
	$(".replyContent").on("click", function(event) {
	    event.stopPropagation();
	    var content = $(this).next().val();
	    console.log(content);
			    $.ajax({
						type : 'post',
						url : 'replyWrite.json',
						data : {
						    'content' : content,
						    'boardNo': $(this).closest("li").attr("data-boardNo")
						},
						dataType : 'json',
						success : function(data) {
						},
						error : function(data) {
						    alert("글쓰기가 실패했습니다. 잠시 후 시도해주세요.");
						}
			 });
	})
	
    </script>

	<!--/여기까지 -->
</body>
</html>