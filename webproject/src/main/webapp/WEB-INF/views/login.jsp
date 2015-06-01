<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
  <head>
  	<jsp:include page="inc/commoncss.jsp"></jsp:include>
    <!--개별 css 추가  -->
    
    
    
    <!-- /여기까지 -->
  </head>

  <body class="skin-blue fixed">
    <div class="wrapper">
	  <%-- <jsp:include page="inc/header.jsp"></jsp:include>
	  <jsp:include page="inc/aside.jsp"></jsp:include>




      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- 페이지 제목 (큰글씨) -->
        <section class="content-header">
          <h1>
            Page Header
            <small>Optional description</small>
          </h1>
          <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Level</a></li>
            <li class="active">Here</li>
          </ol>
        </section> --%>

       
        <section class="content">
 		<!-- 페이지 내용 작성-->
            
            
            
            
            
            
            <body class="login-page">
    <div class="login-box">
      <div class="login-logo">
        <a href="#"><b>Cat</b>Cel</a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
        <p class="login-box-msg">로그인 후 시작하세요.</p>
        
        <c:url value="/j_spring_security_check" var="loginURL"/>
        <form action="${loginURL }" method="post">
          <div class="form-group has-feedback">
            <input type="email" name="j_username" class="form-control" placeholder="Email">
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <input type="password" name="j_password" class="form-control" placeholder="Password">
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-8">    
              <div class="checkbox icheck">
                <label>
                  <div class="icheckbox_square-blue" aria-checked="false" aria-disabled="false" style="position: relative;"><input type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; border: 0px; opacity: 0; background: rgb(255, 255, 255);"></ins></div> Remember Me
                </label>
              </div>                        
            </div><!-- /.col -->
            
            <c:if test = "${param.error != null }">
            <div>
                              로그인 실패
            </div>
            </c:if>
            
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat">로그인</button>
            </div><!-- /.col -->
          </div>
        </form>

        <a href="#">비밀번호 찾기</a><br>
        <a href="join.htm" class="text-center">아직 회원이 아니신가요?</a>

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

    <!-- jQuery 2.1.4 -->
    <script src="../../plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="../../bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- iCheck -->
    <script src="../../plugins/iCheck/icheck.min.js" type="text/javascript"></script>
    <script>
      $(function () {
        $('input').iCheck({
          checkboxClass: 'icheckbox_square-blue',
          radioClass: 'iradio_square-blue',
          increaseArea: '20%' // optional
        });
      });
    </script>
  
</body>
            
            
            
            
            
                
        <!--/여기까지 -->
       </section>
      </div><!-- /.content-wrapper -->
	  <jsp:include page="inc/footer.jsp"></jsp:include>        
    </div>
      <jsp:include page="inc/commonjs.jsp"></jsp:include>
     <!-- 추가적인 자바스크립트 플러그인 추가 및 자바스크립트 코드 작성 -->
     
     
     
     <!--/여기까지 -->
  </body>
</html>