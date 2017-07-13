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

<title>添加商品</title>

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
					<div class="am-u-sm-12 am-u-sm-centered">
						<div class="card-box">
							<ul class="am-nav am-fr">
								<li class="am-dropdown" data-am-dropdown><a
									class="am-dropdown-toggle" data-am-dropdown-toggle
									href="javascript:;"> <span class="am-icon-caret-down"></span>
								</a>
									<ul class="am-dropdown-content">
										<li>1231234</li>
										<li>1231234</li>
										<li>1231234</li>
										<li>1231234</li>
									</ul></li>
							</ul>
							<div class="am-u-sm-8 am-u-sm-centered">
								<form action="adminProduct/add" class="am-form" id="doc-vld-msg" data-am-validator
									method="post" enctype="multipart/form-data" name="product">
									<fieldset>
										<legend>添加商品</legend>
										<div class="am-form-group">
											<label for="doc-vld-name-2">商品名称：</label>
											<input name="pName" type="text" id="doc-vld-name-2"
												minlength="2" placeholder="输入商品名（至少2 个字符）" required/>
										</div>
										<div class="am-form-group">
											<label for="doc-select-3">所属一级分类:</label>
											<select id="doc-select-3" name="categorySecond.csid">
												<c:forEach items="${list}" var="item">
													<option value="${item.csid }">${item.csName }</option>
												</c:forEach>
											</select>
										</div>
										<div class="am-form-group">
											<label for="doc-select-2">所属二级分类:</label>
											<select id="doc-select-2" name="categorySecond.csid">
												<c:forEach items="${list}" var="item">
													<option value="${item.csid }">${item.csName }</option>
												</c:forEach>
											</select>
										</div>
										<div class="am-form-group">
											<label for="doc-vld-marketPrice-2">商品价格：</label>
											<input name="marketPrice" type="text"
												id="doc-vld-marketPrice-2" minlength="1"
												placeholder="输入价格（至少 1 个字符）" required/>
										</div>
										<div class="am-form-group">
											<label for="doc-vld-ta-2">商品描述：</label>
											<textarea name="pdesc" id="doc-vld-ta-2" rows="5"
												minlength="10" maxlength="500" required></textarea>
										</div>
										<div class="am-form-group">
											<label for="doc-vld-ta-2">商品图片：</label>
											<input type="file" name="upload" />
										</div>
										<button class="am-btn am-btn-secondary" type="submit">提交</button>
									</fieldset>
								</form>
							</div>

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
	<a href="admin-offcanvas"
		class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu"
		data-am-offcanvas="{target: '#admin-offcanvas'}">
		<!--<i class="fa fa-bars" aria-hidden="true"></i>-->
	</a>

	<script type="text/javascript" src="assets/js/jquery-2.1.0.js"></script>
	<script type="text/javascript" src="assets/js/amazeui.min.js"></script>
	<script type="text/javascript" src="assets/js/blockUI.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#doc-vld-auther-2").change(function(){
				var name = $("#doc-vld-auther-2").val();
				$("#doc-vld-autherDesc-2").removeAttr("readonly");
				$("#doc-vld-autherDesc-2").html("");
				$.ajax({
						url:"auther/findAuther",
						type:"post",
						dataType:"json",
						contentType:"application/json",               
           				data:name, 
						success:function(data){
							if(data.aname != null){
								$("#doc-vld-autherDesc-2").attr("readonly","readonly");
								$("#doc-vld-autherDesc-2").html(data.adesc);
							}
						},
						error:function(){
							
						}
					});
			});
		});
	</script>
</body>

</html>
