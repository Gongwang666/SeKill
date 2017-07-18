<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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

<title>商品</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="assets/css/amazeui.css" />
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/core.css" />
<link rel="stylesheet" href="assets/css/menu.css" />
<link rel="stylesheet" href="assets/css/index.css" />
<link rel="stylesheet" href="assets/css/admin.css" />
<link rel="stylesheet" href="assets/css/page/typography.css" />
<link rel="stylesheet" href="assets/css/page/form.css" />
<script type="text/javascript" src="assets/js/jquery-2.1.0.js"></script>
<script type="text/javascript">
	//删除商品的模态窗口
	$(function() {
		$("#doc-modal-list").find(".btn-del")
		.on("click",function() {
			 $("#my-confirm").modal({
					relatedTarget : this,
					onConfirm : function(options) {
						var $link = $(this.relatedTarget);
						var gid = $link.data("id");
						location.href ="http://localhost:8888/ssh/admin/goods/remove.do?gid="+gid;
						},
						// closeOnConfirm: false,
						onCancel : function() {
						}
			});
		});
	});
</script>
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
				<div class="card-box">
					<!-- Row start -->
					<div class="am-g">
						<div class="am-u-sm-12 am-u-md-6">
							<div class="am-btn-toolbar">
								<div class="am-btn-group am-btn-group-xs">
									<a href="admin/goods/addPage.do"
										class="am-btn am-btn-default"> <span class="am-icon-plus"></span>
										新增 </a>
									<button type="button" class="am-btn am-btn-default">
										<span class="am-icon-save"></span> 保存
									</button>
									<button type="button" class="am-btn am-btn-default">
										<span class="am-icon-archive"></span> 审核
									</button>
									<button type="button" class="am-btn am-btn-default">
										<span class="am-icon-trash-o"></span> 删除
									</button>
								</div>
							</div>
						</div>

						<div class="am-u-sm-12 am-u-md-3">
							<div class="am-input-group am-input-group-sm">
								<input type="text" class="am-form-field"> <span
									class="am-input-group-btn">
									<button class="am-btn am-btn-default" type="button">搜索</button>
								</span>
							</div>
						</div>
					</div>
					<!-- Row end -->

					<!-- Row start -->
					<div class="am-g">
						<div class="am-u-sm-12">
							<form class="am-form">
								<table
									class="am-table am-table-striped am-table-hover table-main">
									<thead>
										<tr>
											<th class="table-check"><input type="checkbox" />
											</th>
											<th class="table-id">ID</th>
											<th class="table-type">商品图片</th>
											<th class="table-title">商品名称</th>
											<th class="table-type">所属一级分类</th>
											<th class="table-type">所属二级分类</th>
											<th class="table-type">单价</th>
											<th class="table-type">库存</th>
											<th class="table-type">添加时间</th>
											<th class="table-type">修改时间</th>
											<th class="table-set">操作</th>
										</tr>
									</thead>
									<tbody id="doc-modal-list">
										<c:forEach items="${list }" var="item">
											<tr>
												<td><input type="checkbox" />
												</td>
												<td>${item.gid }</td>
												<c:forEach begin="0" end="0" items="${item.goodsImg }" var="img">
													<td><a href="admin/goods/showGoodsImg.do?gid=${item.gid }"><img src="${img.src }"
														style="width: 80px;height:100px;" /></a>
													</td>
												</c:forEach>
												
												<td><a href="#">${item.gname }</a>
												</td>
												<td><a href="#">${item.category.cName }</a></td>
												<td><a href="#">${item.categorySecond.csName }</td>
												<td class="am-hide-sm-only">${item.gprice }</td>
												<td>${item.gcount }</td>
												<td>${item.gaddtime }</td>
												<td>${item.gupdatetime }</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs">
															<a class="am-btn am-btn-primary"
																href="admin/goods/editPage.do?gid=${item.gid }"><span
																class="am-icon-pencil-square-o"></span> 编辑</a>
															<a class="am-btn am-btn-primary"
																href="admin/goods/goodsAttr.do?gid=${item.gid }"><span
																class="am-icon-pencil-square-o"></span> 附加属性</a>  
															<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only btn-del"
																 data-id="${item.gid }">
																<span class="am-icon-trash-o"></span> 删除
															</button>
														</div>
														<div class="am-modal am-modal-confirm" tabindex="-1"
															id="my-confirm">
															<div class="am-modal-dialog">
																<div class="am-modal-hd">Amaze UI</div>
																<div class="am-modal-bd">你，确定要删除这条记录吗？</div>
																<div class="am-modal-footer">
																	<span class="am-modal-btn" data-am-modal-cancel>取消</span>
																	<span class="am-modal-btn" data-am-modal-confirm>确定</span>
																</div>
															</div>
														</div>
													</div></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
								<div class="am-cf">
									共${requestScope.page.totalSize } 条记录 
									<div class="am-fr">
										<ul class="am-pagination ">
											${requestScope.pageString }
										</ul>
									</div>
								<hr />
								</div>
								<hr />
								<p>注：.....</p>
							</form>
						</div>

					</div>
					<!-- Row end -->

				</div>




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
	<input type="hidden" value="${requestScope.page.totalPage }" id="totalPage"/>
	<script type="text/javascript" src="assets/js/amazeui.min.js"></script>
	<script type="text/javascript" src="assets/js/blockUI.js"></script>
	<script type="text/javascript">
		/**
		*跳转到首页
		*/
		function toStart(){
			window.location.href="http://localhost:8888/ssh/admin/goods/listAll.do?currentPage=1";
		}
			
		/**
		*跳转到尾页
		*/
		function toEnd(){
			var totalPage = $('#totalPage').val();
			window.location.href="http://localhost:8888/ssh/admin/goods/listAll.do?currentPage="+totalPage;
		}
		
		$(function(){
			$('.page_s').on('click',function(){
				var count = $(this).attr('lang');
				if (count <= parseInt($('#totalPage').val()) && count >= 1){
				window.location.href="http://localhost:8888/ssh/admin/goods/listAll.do?currentPage="+count;
			}
			});
		});
	</script>
</body>

</html>
