<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 引入form标签库 -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>编辑秒杀任务</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link rel="stylesheet" href="assets/css/amazeui.css" />
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/core.css" />
<link rel="stylesheet" href="assets/css/menu.css" />
<link rel="stylesheet" href="assets/css/index.css" />
<link rel="stylesheet" href="assets/css/admin.css" />
<link rel="stylesheet" href="assets/css/page/typography.css" />
<link rel="stylesheet" href="assets/css/page/form.css" />
<link rel="stylesheet" href="assets/css/amazeui.datetimepicker-se.min.css" />
</head>

<body>
		<!-- Begin page -->
		<jsp:include page="header.jsp" />
		<!-- end page -->
		
		
		<div class="admin">
			<!--<div class="am-g">-->
		<!-- ========== Left Sidebar Start ========== -->
		<!--<div class="left side-menu am-hide-sm-only am-u-md-1 am-padding-0">
			<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 548px;">
				<div class="sidebar-inner slimscrollleft" style="overflow: hidden; width: auto; height: 548px;">-->
                  <!-- sidebar start -->
                  <jsp:include page="leftMenu.jsp" />
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
						<div class="am-u-sm-10">
							<div class="card-box">
								<ul class="am-nav am-fr">
								  <li class="am-dropdown" data-am-dropdown>
								    <a class="am-dropdown-toggle" data-am-dropdown-toggle href="javascript:;">
								       <span class="am-icon-caret-down"></span>
								    </a>
								    <ul class="am-dropdown-content">
								      <li>1231234</li>
								      <li>1231234</li>
								      <li>1231234</li>
								      <li>1231234</li>
								    </ul>
								  </li>
								</ul>
								
								<form action="admin/seckill/edit.do" class="am-form" method="post" name="secKill" id="doc-vld-msg" data-am-validator >
								  <fieldset>
									<legend>添加秒杀任务</legend>
									 <label for="doc-vld-name-2">开始时间：</label>
								     <div class="am-input-group input-group" id='startTime'>
									  <input name="starttime" value="${secKill.starttime }" class="am-form-field">
									  <!--注意添加  datepickerbutton class-->
									  <span class="am-input-group-label datepickerbutton">
									    <i class="icon-th am-icon-calendar"></i>
									  </span>
									 </div>
									 <label for="doc-vld-name-2">结束时间：</label>
								     <div class="am-input-group input-group" id='endTime'>
									  <input name="endtime" value="${secKill.endtime }" class="am-form-field">
									  <!--注意添加  datepickerbutton class-->
									  <span class="am-input-group-label datepickerbutton">
									    <i class="icon-th am-icon-calendar"></i>
									  </span>
									 </div>
									 <div class="am-form-group">
								      <label for="doc-vld-name-1">活动名称：</label>
								      <input name="name" value="${secKill.name }" type="text" id="doc-vld-name-1" minlength="2" placeholder="输入秒杀活动名称" required/>
								    </div>
									 <div class="am-form-group">
								      <label for="doc-vld-name-2">价格：</label>
								      <input name="price" value="${secKill.price }" type="text" id="doc-vld-name-2" minlength="2" placeholder="输入秒杀价格" required/>
								    </div>
								    <div class="am-form-group">
								      <label for="doc-vld-name-3">总数：</label>
								      <input name="totalcount" value="${secKill.totalcount }" type="text" id="doc-vld-name-3" minlength="2" placeholder="输入秒杀总数" required/>
								    </div>
								    <div id="doc-dropdown-js" class="am-input-group am-input-group-sm">
								   		<label for="doc-dropdown-toggle">参与秒杀的商品：</label>
									    <input type="text" value="${secKill.goods.gname }" readonly="readonly" class="am-form-field" id="doc-dropdown-toggle">
									</div>
									<div class="am-form-group">
								    </div>
								    <input id="secGid" name="goods.gid" value="${secKill.goods.gid }" type="hidden" />
								    <input id="secGid" name="sid" value="${secKill.sid }"type="hidden" />
								    <button class="am-btn am-btn-secondary" type="submit">提交</button>
								  </fieldset>
								</form>
								
								
							</div>
						</div>
					<!-- Row end -->
				</div>
			
			
			
			
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
		<script type="text/javascript" src="assets/js/moment.min.js"></script> 
		<script type="text/javascript" src="assets/js/amazeui.datetimepicker-se.min.js"></script>
		<script type="text/javascript" src="assets/js/blockUI.js" ></script>
		<script type="text/javascript">
		$(function() {
		    $('#startTime').datetimepicker({
		      dayViewHeaderFormat: 'MMM YYYY',
		      locale: 'en'
		    });
		    $('#endTime').datetimepicker({
			      dayViewHeaderFormat: 'MMM YYYY',
			      locale: 'en'
			    });
		  });
		
		
		
		</script>
	</body>
	
</html>
