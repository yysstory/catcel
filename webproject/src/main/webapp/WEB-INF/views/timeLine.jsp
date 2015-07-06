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
					
	
					
		<script id="mainContent-template" type="text/x-handlebars-template">
				

					<li data-boardNo="{{boardNo}}" data-parent="{{parent}}" data-email="{{userEmail}}" class="time-label mainContent">
							<span class="bg-blue"> {{userName}} </span>
					</li>
					
					<li data-boardNo="{{boardNo}}" data-parent="{{parent}}" data-email="{{userEmail}}">
						<!-- timeline icon --> 
						<i class="fa fa-envelope bg-blue"></i>
						<div class="timeline-item">
							<span class="time"><i class="fa fa-clock-o"></i>{{updateDate}}</span>

							<h3 class="timeline-header">
								<a href="#">{{userName}}</a>
							</h3>
				
							<div class="timeline-body"><pre>{{content}}</pre></div>
					{{#ifEquals userEmail}}
							<div class="timeline-footer">
								<a style="display: none" class="btn btn-warning  btn-xs confirmBtn">확인</a> 
								<a class="btn btn-warning btn-xs updateBtn">수정</a> <a
									class="btn btn-danger btn-xs deleteBtn">삭제</a>
							</div>
					{{/ifEquals}}
						</div>
					</li>
		
		</script>
							
		<script id="reply-template" type="text/x-handlebars-template">

					<li data-boardNo="{{boardNo}}" data-parent="{{parent}}" data-email="{{userEmail}}" >
						<i class="fa fa-fw fa-chevron-right bg-aqua">	</i>
						<div class="timeline-item">
							<span class="time"><i class="fa fa-clock-o"></i>
							{{updateDate}}
							</span>
							<h3 class="timeline-header">
								<a href="#">{{userName}}</a>
							</h3>
							<div class="timeline-body"><pre>{{content}}</pre></div>
					{{#ifEquals userEmail}}
							<div class="timeline-footer">
								<a style="display: none" class="btn btn-warning  btn-xs confirmBtn">확인</a> 
								<a class="btn btn-warning  btn-xs updateBtn">수정</a> 
								<a class="btn btn-danger btn-xs deleteBtn">삭제</a>
							</div>
					{{/ifEquals}}
						</div>
					</li>

	
			</script>
					
			<script id="input-template" type="text/x-handlebars-template">
					<li data-boardNo="{{boardNo}}" data-parent="{{parent}}" data-email="{{userEmail}}">
					<i class="fa fa-user bg-aqua"></i>
						<div class="timeline-item">
							<div class="input-group">
								<div class="input-group-btn replyContent" >
									<button class="btn btn-default replyBtn">
										<i class="fa fa-plus"></i>
									</button>
								</div>
								<input class="form-control" placeholder="댓글을 입력하세요...">
							</div>
						</div></li>
			</script>

		<script id="textarea-template" type="text/x-handlebars-template">

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
	    readTimeLine(0);
	})
	
	
	$("#addLoadBtn").on("click",function(){
	    var boardNo=$(".timeline li").last().attr("data-boardNo");
	    readTimeLine(boardNo);    
	})
	
	function templateMaker(data,myEmail){
	    Handlebars.registerHelper('ifEquals', function(a,options) {
				  if (a === myEmail) {
				    return options.fn(this);
				  }
				  return options.inverse(this);
			});
	    var mainContentTemplate = Handlebars.compile($("#mainContent-template").html());
	    var replyTemplate = Handlebars.compile($("#reply-template").html());
	    var inputTemplate = Handlebars.compile($("#input-template").html());
	    
	    
	    var returnHtml = "";
	    
	  
	    for(var i=0;i<data.boardList.length;i++){
				var meno = data.boardList[i].parent;
				var boolContnent = data.boardList[i].boardNo===data.boardList[i].parent;
				var	mainContentTemplateHtml = mainContentTemplate(data.boardList[i]);
				var inputTemplateHtml = inputTemplate(data.boardList[i]);
				var replyTemplateHtml = replyTemplate(data.boardList[i]);
				
				if(i!=(data.boardList.length-1)){
					var boolReply = data.boardList[i].parent===data.boardList[i+1].parent;
					if(boolContnent){
					  		  if(boolReply){
											returnHtml = returnHtml + mainContentTemplateHtml;

							    }else{
											returnHtml = returnHtml + mainContentTemplateHtml;
											returnHtml = returnHtml + inputTemplateHtml;
							    }
							    
					}else{
					    if(boolReply){
									returnHtml = returnHtml +replyTemplateHtml;
					    }else{
									returnHtml = returnHtml +replyTemplateHtml;
									returnHtml = returnHtml +inputTemplateHtml;
					    }
					}
				}else{
					  if(boolContnent){
										returnHtml = returnHtml + mainContentTemplateHtml;
										returnHtml = returnHtml +	inputTemplateHtml;
	
						}else{
										returnHtml = returnHtml +	replyTemplateHtml;
										returnHtml = returnHtml +	inputTemplateHtml;
						}
				}
				
	    }
	   	console.timeEnd("timeCheck");
	    return returnHtml;
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
		
			  var html =	templateMaker(data,data.myEmail);
		    $(".timeline").append(html);
		   	
		},
		error : function(data) {
		    alert("불러오기가 실패 했습니다. 잠시 후 시도해주세요.");
		}
	    });
    

	}

	$("#textareaBtn").on("click", function(event) {
	    event.stopPropagation();
	    var content = $("textarea").val();
	    $.ajax({
					type : 'post',
					url : 'timeLineWrite.json',
					data : {
					    'content' : content
					},
					dataType : 'json',
					success : function(data) {
					    location.reload();  
					},
					error : function(data) {
					    alert("글쓰기가 실패했습니다. 잠시 후 시도해주세요.");
					}
	    });
	    /* replace(/<br\s?\/?>/g,"\n")) */
	})
	
	$(document).on("click",".replyContent", function(event) {
		  event.stopPropagation();
		  console.log("진입");
	  	var content = $(this).next("input").val();
	  	var boardNoParent = $(this).closest("li").attr("data-parent");
			
	     $.ajax({
					type : 'post',
					url : 'replyWrite.json',
					data : {
					    'boardNoParent' : boardNoParent,
					    'content' : content
					},
					dataType : 'json',
					success : function(data) {
					    console.log(data);
					    location.reload();  

					},
					error : function(data) {
					    alert("댓글 쓰기가 실패했습니다. 잠시 후 시도해주세요.");
					}
	    }); 
	    /* replace(/<br\s?\/?>/g,"\n")) */
	})
	
	$(document).on("click",".updateBtn", function(event) {
	    event.stopPropagation();
			$(this).hide();
			$(this).prev().show();
			var text = $(this).parent().prev(".timeline-body").children("pre").html();
			$(this).parent().prev(".timeline-body").html("<textarea class='textarea' 	style='width: 100%; height: 100px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;'>"+text+"</textarea>");
	})
	
	$(document).on("click",".confirmBtn", function(event) {
	    event.stopPropagation();
			
			var content = $(this).parent().prev(".timeline-body").children("textarea").html();
			var boardNo = $(this).closest("li").attr("data-parent");
			console.log("content-"+content+" boardNo-"+boardNo);
			
			$.ajax({
				type : 'post',
				url : 'timeLineUpdate.json',
				data : {
				    "content" : content,
				    "boardNo" : boardNo
				},
				dataType : 'json',
				success : function(data) {
				    console.log(data);

				},
				error : function(data) {
				    alert("글 수정이 실패했습니다. 잠시 후 시도해주세요.");
				}
			}); 
			
			
		
	})
	
	/* 		<a id="textareaBtn" class="btn btn-default" type="submit">글쓰기</a>

	<li data-boardNo="{{boardNo}}" data-parent="{{parent}}" data-email="{{userEmail}}" >
	<i class="fa fa-fw fa-chevron-right bg-aqua">	</i>
	<div class="timeline-item">
		<span class="time"><i class="fa fa-clock-o"></i>
		{{updateDate}}
		</span>
		<h3 class="timeline-header">
			<a href="#">{{userName}}</a>
		</h3>
		<div class="timeline-body">{{content}}</div>
{{#ifEquals userEmail}}
		<div class="timeline-footer">
		<a style="display: none" class="btn btn-warning  btn-xs confirmBtn">확인</a> 
			<a class="btn btn-warning  btn-xs updateBtn">수정</a> <a
				class="btn btn-danger btn-xs deleteBtn">삭제</a>
		</div>
{{/ifEquals}}
	</div>
</li>
	     */
 
 
 
 
 
 
 
	

	$(document).on("click",".deleteBtn", function(event) {
	    event.stopPropagation();
			  	var boardNoValue = $(this).closest("li").attr("data-boardNo");
			  	var parentValue = $(this).closest("li").attr("data-parent");
			 
			  $.ajax({
					type : 'post',
					url : 'timeLineDelete.json',
					data : {
					    "boardNoValue" : boardNoValue,
					    "parentValue" : parentValue
					},
					dataType : 'json',
					success : function(data) {
					    console.log(data);
					    location.reload();  
					},
					error : function(data) {
					    alert("글 지우기가 실패했습니다. 잠시 후 시도해주세요.");
					}
				}); 
			  	
	})

    </script>

</body>
</html>