<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!-- 引入form标签库 -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>编辑商品信息</title>

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
<link rel="stylesheet" href="assets/css/amazeui.chosen.css"/>
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
								<form action="admin/goods/edit.do" class="am-form"
									method="post" enctype="multipart/form-data"
									name="goods">
									<fieldset>
										<legend>添加商品</legend>
										<input name="gid" type="hidden"
											value="${goods.gid }" />
										<div class="am-form-group">
											<label for="doc-vld-name-2">商品名称：</label>
											<input name="gname" type="text" id="doc-vld-name-2"
												minlength="2" placeholder="输入商品名（至少 2个字符）"
												value="${goods.gname }" />
										</div>
										<div class="am-form-group">
											<label for="doc-select-3">所属一级分类:</label>
											<select id="doc-select-3" name="category.cid" class="chosen-select">
												<c:forEach items="${list}" var="item">
													<c:choose>
														<c:when test="${item.cid == goods.category.cid }">
															<option value="${item.cid }" selected="selected">${item.cName }</option>
														</c:when>
														<c:otherwise>
															<option value="${item.cid }">${item.cName }</option>
														</c:otherwise>
													</c:choose>
												</c:forEach>
											</select>
										</div>
										<div class="am-form-group">
											<label for="doc-select-2">所属二级分类:</label>
											<select id="doc-select-2" name="categorySecond.csid" class="chosen-select">
											</select>
										</div>
										<div class="am-form-group">
											<label for="doc-vld-marketPrice-2">商品价格：</label>
											<input name="gprice" type="text"
												id="doc-vld-marketPrice-2" minlength="1"
												placeholder="输入价格（至少 1 个字符）"
												value="${goods.gprice }" />
										</div>
										<div class="am-form-group">
											<label for="doc-vld-count">商品库存：</label>
											<input name="gcount" type="text"
												id="doc-vld-count" minlength="1"
												placeholder="输入数量（至少 1 个字符）" value="${goods.gcount }" required/>
										</div>
										<div class="am-form-group">
											<label for="doc-vld-ta-2">商品描述：</label>
											<textarea name="gdesc" id="doc-vld-ta-2" rows="5"
												minlength="10" maxlength="500">${goods.gdesc}</textarea>
										</div>
										<%-- <div class="am-form-group">
											<label for="doc-vld-ta-2">商品图片：</label>
											<form:input path="image" type="hidden"
												value="${productInfo.image }" />
											<input type="file" name="upload" />
										</div> --%>
										<input name="gaddtime" type="hidden" value="${goods.gaddtime }"/>
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
		data-am-offcanvas="{target: '#admin-offcanvas'}"> <!--<i class="fa fa-bars" aria-hidden="true"></i>-->
	</a>

	<script type="text/javascript" src="assets/js/jquery-2.1.0.js"></script>
	<script type="text/javascript" src="assets/js/amazeui.min.js"></script>
	<script type="text/javascript" src="assets/js/blockUI.js"></script>
	<script type="text/javascript" src="assets/js/amazeui.chosen.min.js"></script>
	<script type="text/javascript">
		 function findCategoryByID(cid){
			$.ajax({
				url:"admin/goods/findCategorySec.do?cid="+cid,
				type:"post",
				dataType:"json",
				contentType:"application/json",               
					data:name, 
				success:function(data){
					$("#doc-select-2").html("");
					for(var i = 0;i<data.categorySecondList.length;i++){
						var html = "<option value='"+data.categorySecondList[i].csid+"'>"+data.categorySecondList[i].csName+"</option>"
						$("#doc-select-2").append(html);
						$("#doc-select-2").trigger('chosen:updated');
					}
				},
				error:function(){
					
				}
			});
		}
		
		$(function(){
			
			$('.chosen-select').chosen();//初始化amazeui的chosen插件
			
			//初始化一级分类下拉菜单
			/* var html = "<option value='"+"${goods.category.cid}"+"'>"+"${goods.category.cName}"+"</option>"
			$("#doc-select-3").append(html);
			$("#doc-select-3").trigger('chosen:updated'); */
			
			
			$("#doc-select-3").find("option[value='${goods.gid}']").attr("selected",true);
			
			findCategoryByID($("#doc-select-3").val()); 
			
			$("#doc-select-3").on("change",function(){
				var cid = $("#doc-select-3").val();
				findCategoryByID(cid);
			});
		}); 
	</script>
</body>

</html>
