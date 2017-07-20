<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 引入form标签库 -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>添加模板</title>

<link rel="stylesheet" href="assets/css/amazeui.css" />
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/core.css" />
<link rel="stylesheet" href="assets/css/menu.css" />
<link rel="stylesheet" href="assets/css/index.css" />
<link rel="stylesheet" href="assets/css/admin.css" />
<link rel="stylesheet" href="assets/css/page/typography.css" />
<link rel="stylesheet" href="assets/css/page/form.css" />

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
						<div class="am-u-sm-12">
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
								<div class="am-form-group">
								      <label>已有属性:</label>
								      <ul class="am-list am-list-static am-list-border">
									  	<c:forEach items="${templates}" var="item">
									  		<li>
										  		<a href="admin/categorySecond/removeTemplate.do?id=${item.id }&csid=${item.categorySecond.csid}" class="am-badge am-badge-danger">删除</a>
										    	<a class="am-badge am-badge-success">编辑</a> 
										    	${item.tname }--------${item.tvalue }
									    </li>
									  	</c:forEach>
									  </ul>
								</div>
								<form action="admin/categorySecond/addTemplate.do" class="am-form" method="post" name="categorySecond"  data-am-validator>
								  <fieldset>
								    <legend>添加附加属性:</legend>
									<div id="template" class="am-form-group">
								      <label></label>
								      <button id="add_btn" type="button" class="am-btn am-btn-secondary">添加</button>
								    </div>
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
		<script type="text/javascript" src="assets/js/blockUI.js" ></script>
		<script type="text/javascript">
			$(function(){
				var i = 0;
				$("#add_btn").on("click",function(){
					
					var html = "<input name='templates["+i+"].tname' type='text' id='doc-vld-name-2' minlength='2' placeholder='输入属性名（至少 2 个字符）' required/>";
					var html2 = "<input name='templates["+i+"].tvalue' type='text' id='doc-vld-name-2' minlength='2' placeholder='输入属性值（至少 2 个字符）' required/>";
					var html3 = "<input name='templates["+i+"].categorySecond.csid' value='${csid}' type='hidden' id='doc-vld-name-2'/>";
					$("#template").append(html+html2+html3);
					i++;
				});
			});
		</script>
	</body>
	
</html>
