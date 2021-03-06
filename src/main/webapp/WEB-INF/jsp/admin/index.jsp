<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>后台管理</title>
    
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="assets/css/amazeui.css" />
	<link rel="stylesheet" href="assets/css/core.css" />
	<link rel="stylesheet" href="assets/css/menu.css" />
	<link rel="stylesheet" href="assets/css/admin.css" />
	<link rel="stylesheet" href="assets/css/page/typography.css" />
	<link rel="stylesheet" href="assets/css/page/form.css" />
	<link rel="stylesheet" href="assets/css/component.css" />

  </head>
  
  <body>
		<!-- Begin page -->
		<jsp:include page="header.jsp"/>
		<!-- end page -->
		
		
		<div class="admin">
			<!--<div class="am-g">-->
		<!-- ========== Left Sidebar Start ========== -->
		<!--<div class="left side-menu am-hide-sm-only am-u-md-1 am-padding-0">
			<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 548px;">
				<div class="sidebar-inner slimscrollleft" style="overflow: hidden; width: auto; height: 548px;">-->
                  <!-- sidebar start -->
				  <jsp:include page="leftMenu.jsp"/>
				  <!-- sidebar end -->
    
				<!--</div>
			</div>
		</div>-->
		<!-- ========== Left Sidebar end ========== -->
		
		
		
	<!--	<div class="am-g">-->
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="am-g">
					<!-- Row start -->
						<div class="am-u-md-3">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">总收入</h4>
								<div class="widget-chart-1 am-cf">
                                    <div id="widget-chart-box-1" style="height: 110px;width: 110px;float: left;">
                                    </div>

                                    <div class="widget-detail-1" style="float: right;">
                                        <h2 class="p-t-10 m-b-0"> 256 </h2>
                                        <p class="text-muted">今日收入</p>
                                    </div>
                                </div>
							</div>
						</div>
						<!-- col end -->
						<!-- col end -->
						<div class="am-u-md-3">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">总收入</h4>
								<div class="widget-chart-1 am-cf">
                                    <div id="widget-chart-box-2" style="height: 110px;width: 110px;float: left;">
                                    </div>

                                    <div class="widget-detail-1" style="float: right;">
                                        <h2 class="p-t-10 m-b-0"> 256 </h2>
                                        <p class="text-muted">今日收入</p>
                                    </div>
                                </div>
							</div>
						</div>
						<!-- col end -->
						<div class="am-u-md-3">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">销售分析</h4>
								<div class="widget-box-2">
                                    <div class="widget-detail-2">
                                        <span class="badge  pull-left m-t-20  am-round progress-bar-pink" style="color: #fff;">32% <i class="zmdi zmdi-trending-up"></i> </span>
                                        <h2 class="m-b-0"> 8451 </h2>
                                        <p class="text-muted m-b-25">Revenue today</p>
                                    </div>
                                    <div class="am-progress am-progress-xs am-margin-bottom-0" style="background: rgba(255, 138, 204, 0.2);">
									    <div class="am-progress-bar progress-bar-pink" style="width: 80%"></div>
									</div>
                                </div>
							</div>
						</div>
					<!-- Row end -->
				</div>
				
				<div class="am-g">
					<!-- Row start -->
					<div class="am-u-md-4">
						<div class="card-box">
							<h4 class="header-title m-t-0">环形图</h4>
							<div id="index-pie-1" style="height: 345px;height: 300px;"></div>
						</div>
					</div>
					
					<div class="am-u-md-4">
						<div class="card-box">
							<h4 class="header-title m-t-0">环形图</h4>
							<div id="index-bar-1" style="height: 345px;height: 300px;"></div>
						</div>
					</div>
					
					<div class="am-u-md-4">
						<div class="card-box">
							<h4 class="header-title m-t-0">环形图</h4>
							<div id="index-line-1" style="height: 345px;height: 300px;"></div>
						</div>
					</div>
					<!-- Row end -->
				</div>
				
				<div class="am-g">
					<!-- Row start -->
						<div class="am-u-md-3">
							<div class="card-box widget-user">
                                <div>
                                    <img src="assets/img/avatar-3.jpg" class="img-responsive img-circle" alt="user">
                                    <div class="wid-u-info">
                                        <h4 class="m-t-0 m-b-5 font-600">Chadengle</h4>
                                        <p class="text-muted m-b-5 font-13">coderthemes@gmail.com</p>
                                        <small class="text-warning"><b>管理员</b></small>
                                    </div>
                                </div>
                            </div>
						</div>
						<!-- col end -->
						<div class="am-u-md-3">
							<div class="card-box widget-user">
                                <div>
                                    <img src="admin/assets/img/avatar-2.jpg" class="img-responsive img-circle" alt="user">
                                    <div class="wid-u-info">
                                        <h4 class="m-t-0 m-b-5 font-600">Chadengle</h4>
                                        <p class="text-muted m-b-5 font-13">coderthemes@gmail.com</p>
                                        <small class="text-custom"><b>网络组主管</b></small>
                                    </div>
                                </div>
                            </div>
						</div>
						<!-- col end -->
						<div class="am-u-md-3">
							<div class="card-box widget-user">
                                <div>
                                    <img src="admin/assets/img/avatar-4.jpg" class="img-responsive img-circle" alt="user">
                                    <div class="wid-u-info">
                                        <h4 class="m-t-0 m-b-5 font-600">Chadengle</h4>
                                        <p class="text-muted m-b-5 font-13">coderthemes@gmail.com</p>
                                        <small class="text-success"><b>设计师</b></small>
                                    </div>
                                </div>
                            </div>
						</div>
						<!-- col end -->
						<div class="am-u-md-3">
							<div class="card-box widget-user">
                                <div>
                                    <img src="admin/assets/img/avatar-10.jpg" class="img-responsive img-circle" alt="user">
                                    <div class="wid-u-info">
                                        <h4 class="m-t-0 m-b-5 font-600">Chadengle</h4>
                                        <p class="text-muted m-b-5 font-13">coderthemes@gmail.com</p>
                                        <small class="text-info"><b>开发者</b></small>
                                    </div>
                                </div>
                            </div>
						</div>
						<!-- col end -->
					<!-- Row end -->
					</div>
					
					
					<!-- Row start -->
					<div class="am-g">
						<!-- col start -->
						<div class="am-u-md-4">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">收件箱</h4>
								<div class="inbox-widget nicescroll" style="height: 315px; overflow: hidden; outline: none;" tabindex="5000">
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="admin/assets/img/avatar-1.jpg" class="img-circle" alt=""></div>
                                            <p class="inbox-item-author">Chadengle</p>
                                            <p class="inbox-item-text">Hey! there I'm available...</p>
                                            <p class="inbox-item-date">13:40 PM</p>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="admin/assets/img/avatar-2.jpg" class="img-circle" alt=""></div>
                                            <p class="inbox-item-author">Shahedk</p>
                                            <p class="inbox-item-text">Hey! there I'm available...</p>
                                            <p class="inbox-item-date">10:15 AM</p>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="admin/assets/img/avatar-10.jpg" class="img-circle" alt=""></div>
                                            <p class="inbox-item-author">Tomaslau</p>
                                            <p class="inbox-item-text">I've finished it! See you so...</p>
                                            <p class="inbox-item-date">13:34 PM</p>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="admin/assets/img/avatar-4.jpg" class="img-circle" alt=""></div>
                                            <p class="inbox-item-author">Stillnotdavid</p>
                                            <p class="inbox-item-text">This theme is awesome!</p>
                                            <p class="inbox-item-date">13:17 PM</p>
                                        </div>
                                    </a>
                                    <a href="#">
                                        <div class="inbox-item">
                                            <div class="inbox-item-img"><img src="admin/assets/img/avatar-5.jpg" class="img-circle" alt=""></div>
                                            <p class="inbox-item-author">Kurafire</p>
                                            <p class="inbox-item-text">Nice to meet you</p>
                                            <p class="inbox-item-date">12:20 PM</p>
                                        </div>
                                    </a>   
                                </div>
							</div>
						</div>
						<!-- col end -->
						
						<!-- col start -->
						<div class="am-u-md-8">
							<div class="card-box">
								<h4 class="header-title m-t-0 m-b-30">最新项目</h4>
								<div class="am-scrollable-horizontal am-text-ms" style="font-family: '微软雅黑';">
                                        <table class="am-table   am-text-nowrap">
                                            <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>项目名称</th>
                                                <th>开始时间</th>
                                                <th>结束时间</th>
                                                <th>状态</th>
                                                <th>责任人</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Adminto Admin v1</td>
                                                    <td>01/01/2016</td>
                                                    <td>26/04/2016</td>
                                                    <td><span class="label label-danger">已发布</span></td>
                                                    <td>Coderthemes</td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>Adminto Frontend v1</td>
                                                    <td>01/01/2016</td>
                                                    <td>26/04/2016</td>
                                                    <td><span class="label label-success">已发布</span></td>
                                                    <td>Adminto admin</td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>Adminto Admin v1.1</td>
                                                    <td>01/05/2016</td>
                                                    <td>10/05/2016</td>
                                                    <td><span class="label label-pink">未开展</span></td>
                                                    <td>Coderthemes</td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>Adminto Frontend v1.1</td>
                                                    <td>01/01/2016</td>
                                                    <td>31/05/2016</td>
                                                    <td><span class="label label-purple">进行中</span>
                                                    </td>
                                                    <td>Adminto admin</td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>Adminto Admin v1.3</td>
                                                    <td>01/01/2016</td>
                                                    <td>31/05/2016</td>
                                                    <td><span class="label label-warning">即将开始</span></td>
                                                    <td>Coderthemes</td>
                                                </tr>

                                                <tr>
                                                    <td>6</td>
                                                    <td>Adminto Admin v1.3</td>
                                                    <td>01/01/2016</td>
                                                    <td>31/05/2016</td>
                                                    <td><span class="label label-primary">即将开始</span></td>
                                                    <td>Adminto admin</td>
                                                </tr>

                                                <tr>
                                                    <td>7</td>
                                                    <td>Adminto Admin v1.3</td>
                                                    <td>01/01/2016</td>
                                                    <td>31/05/2016</td>
                                                    <td><span class="label label-primary">即将开始</span></td>
                                                    <td>Adminto admin</td>
                                                </tr>

                                            </tbody>
                                        </table>
                                    </div>
							</div>
						</div>
						<!-- col end -->
					</div>
					<!-- Row end -->模板收集自 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> -  More Templates  <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
					
				
			
				
			</div>
		</div>
		<!-- end right Content here -->
		<!--</div>-->
		</div>
		</div>
		
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		<script type="text/javascript" src="assets/js/jquery-2.1.0.js" ></script>
		<script type="text/javascript" src="assets/js/amazeui.min.js"></script>
		<script type="text/javascript" src="assets/js/blockUI.js" ></script>
		<script type="text/javascript" src="assets/js/charts/echarts.min.js" ></script>
		<script type="text/javascript" src="assets/js/charts/indexChart.js" ></script>

	</body>
	
</html>
