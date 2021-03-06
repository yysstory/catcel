<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<aside class="main-sidebar">

	<!-- sidebar: style can be found in sidebar.less -->
	<section class="sidebar">

		<!-- Sidebar user panel (optional) -->
		<div class="user-panel">
			<div class="pull-left image">
				<img src="dist/img/user2-160x160.jpg" class="img-circle"
					alt="User Image" />
			</div>
			<div class="pull-left info">
				<p>${userName}님안녕하세요</p>
				<!-- Status -->
				<a href="#"><i class="fa fa-circle text-success"></i> Online</a>
			</div>
		</div>

		<!-- search form (Optional) -->
		<form action="#" method="get" class="sidebar-form">
			<div class="input-group">
				<input type="text" name="q" class="form-control"
					placeholder="Search..." /> <span class="input-group-btn">
					<button type='submit' name='search' id='search-btn'
						class="btn btn-flat">
						<i class="fa fa-search"></i>
					</button>
				</span>
			</div>
		</form>
		<!-- /.search form -->




		<!-- Sidebar Menu -->
		<ul class="sidebar-menu">

			<li class="header">쇼핑몰</li>
			<li><a href="#"><i class='fa fa-link'></i> <span>Today</span></a></li>
			<!-- Optionally, you can add icons to the links -->
			<li class="treeview active"><a href="#"><i
					class='fa fa-link'></i> <span>주문등록</span> <i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu">
					<li class="active"><a href="addshop.htm">쇼핑몰추가+</a></li>
					
					<c:forEach var="mallName" items="${mallNameList}">
						<li><a href="adddata.htm?mall=${mallName}">${mallName}</a>
						<div data-removeMallName="${mallName}"  style="cursor:pointer; float: right; z-index: 10; top:-22px; left:-15px; color:#8aa4af;" id="shopRemove" class="glyphicon glyphicon-remove shop-remove-div"></div></li>
					</c:forEach>
				
				
				</ul></li>

			<li class="treeview active">
				<a href="#">
					<i	class="fa fa-laptop"></i>
					<span>통계</span>
					<i	class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu menu-open" style="display: block;">
						<li>
							<a href="orderStat.htm">
								<i class="fa fa-circle-o"></i>주문통계</a>
						</li>
						<li>
							<a href="sellStat.htm">
								<i class="fa fa-circle-o"></i>매출통계</a>
						</li>
						<li>
							<a href="productStat.htm">
								<i class="fa fa-circle-o"></i>상품분석</a>
						</li>
						<li>
							<a href="customerStat.htm">
								<i class="fa fa-circle-o"></i>고객분석</a>
						</li>
						<li>
							<a href="totalStat.htm">
								<i class="fa fa-circle-o"></i>종합분석</a>
						</li>
					</ul>
			</li>


			<li><a href="timeLine.htm"><i class='fa fa-link'></i> <span>정보공유</span></a></li>




			<li class="treeview active"><a href="#"><i
					class="fa fa-laptop"></i> <span>고객관리</span><i
					class="fa fa-angle-left pull-right"></i></a>
				<ul class="treeview-menu menu-open" style="display: block;">
					<li class=""><a href="customerSearch.htm"><i
							class="fa fa-circle-o"></i>고객검색</a></li>
				</ul></li>
			<li><a href="#"><i class='fa fa-link'></i> <span></span></a></li>
			<li><a href="#"><i class='fa fa-link'></i> <span>Another
						Link</span></a></li>

		</ul>
		<!-- /.sidebar-menu -->
	</section>
	<!-- /.sidebar -->
</aside>
