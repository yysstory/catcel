<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<aside class="main-sidebar">

        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">

          <!-- Sidebar user panel (optional) -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p>윤용식님 안녕하세요</p>
              <!-- Status -->
              <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
            </div>
          </div>

          <!-- search form (Optional) -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->




          <!-- Sidebar Menu -->
          <ul class="sidebar-menu">
          
            <li class="header">쇼핑몰</li>
            <li><a href="#"><i class='fa fa-link'></i> <span>Today</span></a></li>
            <!-- Optionally, you can add icons to the links -->
            <li class="active treeview">
              <a href="#"><i class='fa fa-link'></i> <span>주문등록</span> <i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu">
                <li class="active"><a href="addshop.htm">쇼핑몰추가+</a></li>
                <li><a href="adddata.htm?mall=스토어팜">스토어팜</a></li>
                <li><a href="adddata.htm">인터파크</a></li>
                <li><a href="adddata.htm">11st</a></li>
              </ul>
            </li>
            
            <li class="treeview active">
              <a href="#"><i class="fa fa-laptop"></i>
                <span>통계</span><i class="fa fa-angle-left pull-right"></i></a>
              <ul class="treeview-menu menu-open" style="display: block;">
                <li class=""><a href="orderStat.htm"><i class="fa fa-circle-o"></i> 주문통계</a></li>
                <li><a href="sellStat.htm"><i class="fa fa-circle-o"></i> 매출통계</a></li>
              </ul>
            </li>
            
            <li ><a href="#"><i class='fa fa-link'></i> <span></span></a></li>
            <li><a href="#"><i class='fa fa-link'></i> <span>Another Link</span></a></li>

          </ul><!-- /.sidebar-menu -->
        </section>
        <!-- /.sidebar -->
      </aside>
