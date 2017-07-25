<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>一级分类管理</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="assets/css/amazeui.css" />
	<link rel="stylesheet" href="assets/css/core.css" />
	<link rel="stylesheet" href="assets/css/menu.css" />
	<link rel="stylesheet" href="assets/css/index.css" />
	<link rel="stylesheet" href="assets/css/admin.css" />
	<link rel="stylesheet" href="assets/css/page/typography.css" />
	<link rel="stylesheet" href="assets/css/page/form.css" />
	<link rel="stylesheet" href="assets/css/component.css" />
	<script type="text/javascript" src="assets/js/jquery-2.1.0.js"></script>
<script type="text/javascript">
	//删除一级分类的模态窗口
	$(function() {
		$("#doc-modal-list").find(".btn-del")
		.on("click",function() {
			 $("#my-confirm").modal({
					relatedTarget : this,
					onConfirm : function(options) {
						var $link = $(this.relatedTarget);
						var sid = $link.data("sid");
						var page = "${pageBean.page}";
						location.href ="http://localhost:8888/ssh/admin/seckill/remove.do?sid="+sid;
						},
						// closeOnConfirm: false,
						onCancel : function() {
						}
			});
		});
	});
	//查询时下拉列表的js代码
	$(function() {
	    $('#doc-dropdown-js').dropdown({justify: '#doc-dropdown-justify-js'});
	    var $dropdown = $('#doc-dropdown-js'),
        data = $dropdown.data('amui.dropdown');
    	$('#doc-dropdown-toggle').bind('input propertychange',function(e) {
    		var val = $('#doc-dropdown-toggle').val();
    		if((/[\u4e00-\u9fa5]+/).test(val)){
    			$.ajax({
    			  	url:"admin/category/search.do?str="+val,
    				type:"post",
    				dataType:"json",
    				success:function(data){
    					$(".am-dropdown-content").html("");
    					for(var i = 0;i<data.length;i++){
    						$(".am-dropdown-content").append("<li><a href='admin/category/list.do?name="+data[i].cName+"'>"+data[i].cName+"</a></li>");
    					}
    					$dropdown.dropdown('open');
    		     	 	return false;
    				}
    			});
    		}
    		
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
									<a href="admin/seckill/addPage.do" class="am-btn am-btn-default">
										<span class="am-icon-plus"></span> 新增
									</a>
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
							<div id="doc-dropdown-js" class="am-input-group am-input-group-sm">
								    <input type="text" class="am-form-field" id="doc-dropdown-toggle">
								    <ul class="am-dropdown-content">
  									</ul>
								  <span
									class="am-input-group-btn">
									<button id="search_button" class="am-btn am-btn-default" type="button">搜索</button>
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
											<th class="table-title">开始时间</th>
											<th class="table-title">结束时间</th>
											<th class="table-title">价格</th>
											<th class="table-title">总数</th>
											<th class="table-title">剩余</th>
											<th class="table-title">商品id</th>
											<th class="table-set">操作</th>
										</tr>
									</thead>
									<tbody id="doc-modal-list">
										<c:forEach items="${list }" var="item">
											<tr>
												<td><input type="checkbox" />
												</td>
												<td>${item.sid }</td>
												<td>${item.starttime }</td>
												<td>${item.endtime }</td>
												<td>${item.price }</td>
												<td>${item.totalcount }</td>
												<td>${item.remcount }</td>
												<td>${item.goods.gname }</td>
												<td>
													<div class="am-btn-toolbar">
														<div class="am-btn-group am-btn-group-xs">
															<a class="am-btn am-btn-primary" href="admin/seckill/editPage.do?sid=${item.sid }" ><span class="am-icon-pencil-square-o"></span> 编辑</a>
															<button type="button" class="am-btn am-btn-default am-btn-xs am-text-danger am-hide-sm-only btn-del"
																 data-sid="${item.sid }">
																<span class="am-icon-trash-o"></span> 删除
															</button>
														</div>
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
												</td>
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
		data-am-offcanvas="{target: '#admin-offcanvas'}">
		<!--<i class="fa fa-bars" aria-hidden="true"></i>-->
	</a>
	<input type="hidden" value="${requestScope.page.totalPage }" id="totalPage"/>
	<script type="text/javascript" src="assets/js/amazeui.min.js"></script>
	<script type="text/javascript" src="assets/js/blockUI.js"></script>
	<script type="text/javascript">
		/**
		*跳转到首页
		*/
		function toStart(){
			window.location.href="http://localhost:8888/ssh/admin/seckill/listAll.do?currentPage=1";
		}
			
		/**
		*跳转到尾页
		*/
		function toEnd(){
			var totalPage = $('#totalPage').val();
			window.location.href="http://localhost:8888/ssh/admin/seckill/listAll.do?currentPage="+totalPage;
		}
		
		$(function(){
			$('.page_s').on('click',function(){
				var count = $(this).attr('lang');
				if (count <= parseInt($('#totalPage').val()) && count >= 1){
				window.location.href="http://localhost:8888/ssh/admin/seckill/listAll.do?currentPage="+count;
			}
			});
		});
		
		
	</script>
</body>

</html>
