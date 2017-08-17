<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
	<base href="<%=basePath%>">
	<title>我的购物车</title>
	<link rel="stylesheet" href="jdms/css/reset.css"/>
	<link rel="stylesheet" href="jdms/css/gwc.css"/>
	<!-- <script src="assets/js/jquery-2.1.0.js"></script> -->
	<script src="https://cdn.bootcss.com/jquery/2.1.0/jquery.min.js"></script>
	<script src="jdms/js/gwc.js"></script>
</head>
<body>
	<!-- 顶部导航栏 -->
	<div id="shortcut-2014">
		<div class="w clearfix">
			<div class="fl">
				<div class="dorpdown" id="ttbar-mycity">
					<div class="dt cw-icon ui-areamini-text-wrap">
						<i class="ci-right"><s>◇</s></i>送至：<span class="ui-areamini-text" data-id="13" title="山东">山东</span>
					</div>
					<div class="dd dorpdown-layer">
						<div class="dd-spacer"></div>
						<div class="ui-areamini-content-wrap" style="left: auto;">
							<ul class="ui-areamini-content">
								<li class="item"><a data-id="1" href="###">北京</a></li>
								<li class="item"><a data-id="2" href="###">上海</a></li>
								<li class="item"><a data-id="3" href="###">天津</a></li>
								<li class="item"><a data-id="4" href="###">重庆</a></li>
								<li class="item"><a data-id="5" href="###">河北</a></li>
								<li class="item"><a data-id="6" href="###">山西</a></li>
								<li class="item"><a data-id="7" href="###">河南</a></li>
								<li class="item"><a data-id="8" href="###">辽宁</a></li>
								<li class="item"><a data-id="9" href="###">吉林</a></li>
								<li class="item"><a data-id="10" href="###">黑龙江</a></li>
								<li class="item"><a data-id="11" href="###">内蒙古</a></li>
								<li class="item"><a data-id="12" href="###">江苏</a></li>
								<li class="item"><a data-id="13" href="###" class="selected">山东</a></li>
								<li class="item"><a data-id="14" href="###">安徽</a></li>
								<li class="item"><a data-id="15" href="###">浙江</a></li>
								<li class="item"><a data-id="16" href="###">福建</a></li>
								<li class="item"><a data-id="17" href="###">湖北</a></li>
								<li class="item"><a data-id="18" href="###">湖南</a></li>
								<li class="item"><a data-id="19" href="###">广东</a></li>
								<li class="item"><a data-id="20" href="###">广西</a></li>
								<li class="item"><a data-id="21" href="###">江西</a></li>
								<li class="item"><a data-id="22" href="###">四川</a></li>
								<li class="item"><a data-id="23" href="###">海南</a></li>
								<li class="item"><a data-id="24" href="###">贵州</a></li>
								<li class="item"><a data-id="25" href="###">云南</a></li>
								<li class="item"><a data-id="26" href="###">西藏</a></li>
								<li class="item"><a data-id="27" href="###">陕西</a></li>
								<li class="item"><a data-id="28" href="###">甘肃</a></li>
								<li class="item"><a data-id="29" href="###">青海</a></li>
								<li class="item"><a data-id="30" href="###">宁夏</a></li>
								<li class="item"><a data-id="31" href="###">新疆</a></li>
								<li class="item"><a data-id="32" href="###">港澳</a></li>
								<li class="item"><a data-id="33" href="###">台湾</a></li>
								<li class="item"><a data-id="34" href="###">钓鱼岛</a></li>
								<li class="item"><a data-id="35" href="###">海外</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<ul class="fr">
				<li class="fore1" id="ttbar-login">
					<c:choose>
					<c:when test="${empty sessionScope.loginUser}">
						<a href="user/toLoginPage.do" >你好，请登录</a>&nbsp;&nbsp;<a href="###" class="link-regist style-red">免费注册</a>
					</c:when>
					<c:otherwise>
						<span>${sessionScope.loginUser.userName}</span>
					</c:otherwise>
				</c:choose>
				</li>
				<li class="spacer"></li>
				<li class="fore2">
					<div class="dt"><a href="###">我的订单</a></div>
				</li>
				<li class="spacer"></li>
				<li class="fore3 dorpdown" id="ttbar-myjd">
					<div class="dt cw-icon">
						<i class="ci-right"><s>◇</s></i>
						<a href="###">我的京东</a>
					</div>
					<div class="dd dorpdown-layer">
						<div class="dd-spacer"></div>
						<div class="myjdlist1">
							<div class="fore1">
								<div class="item">
									<a href="###">待处理订单</a>
								</div>
								<div class="item">
									<a href="###">返修退换货</a>
								</div>
								<div class="item">
									<a href="###">降价商品</a>
								</div>
							</div>
							<div class="fore2">
								<div class="item">
									<a href="###">消息</a>
								</div>
								<div class="item">
									<a href="###">我的回答</a>
								</div>
								<div class="item">
									<a href="###">我的关注</a>
								</div>
							</div>
						</div>
						<div class="myjdlist2">
							<div class="fore1">
								<div class="item">
									<a href="###">我的京豆</a>
								</div>
								<div class="item">
									<a href="###">我的白条</a>
								</div>
							</div>
							<div class="fore2">
								<div class="item">
									<a href="###">我的优惠券</a>
								</div>
								<div class="item">
									<a href="###">我的理财</a>
								</div>
							</div>
						</div>
						<div class="viewlist">
							<div class="smt clearfix">
								<h4>我的足迹</h4>
								<span class="extra"><a href="###">更多 ></a></span>
							</div>
							<div class="smc">
								<div class="item">
									<a href="###" title="大红门 哈尔滨红肠 冷藏熟食 220g/袋*2 北京老字号">
										<img src="images/smc1.jpg" width="50" height="50" alt="大红门 哈尔滨红肠 冷藏熟食 220g/袋*2 北京老字号"/>
									</a>
								</div>
								<div class="item">
									<a href="###" title="众品 台湾风味肉肠 700g/袋 香嫩风味 烧烤食材">
										<img src="images/smc2.jpg" width="50" height="50" alt="众品 台湾风味肉肠 700g/袋 香嫩风味 烧烤食材"/>
									</a>
								</div>
								<div class="item">
									<a href="###" title="大红门 秘制烤肠 240g/袋 原味 北京老字号">
										<img src="images/smc3.jpg" width="50" height="50" alt="大红门 秘制烤肠 240g/袋 原味 北京老字号"/>
									</a>
								</div>
								<div class="item">
									<a href="###" title="得利斯 猪精前排条 500g/袋 欧得莱黑山猪">
										<img src="images/smc4.jpg" width="50" height="50" alt="得利斯 猪精前排条 500g/袋 欧得莱黑山猪"/>
									</a>
								</div>
							</div>
						</div>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore4">
					<div class="dt"><a href="###">京豆会员</a></div>
				</li>
				<li class="spacer"></li>
				<li class="fore5">
					<div class="dt"><a href="###">企业采购</a></div>
				</li>
				<li class="spacer"></li>
				<li class="fore6 dorpdown" id="ttbar-apps">
					<div class="dt cw-icon">
						<i class="ci-left"></i>
						<i class="ci-right"><s>◇</s></i>
						<a href="###">手机京东</a>
					</div>
					<div class="dd dorpdown-layer">
						<div class="dd-spacer"></div>
						<div class="dd-inner" id="ttbar-apps-main">
							<a href="###" class="link link1">手机京东</a>
							<a href="###" class="link link3">京东金融客户端</a>
							<a href="#" class="link link4">新人专享大礼包</a>
							<a href="#" class="link link5">新人专享128元大礼包</a>
							<a href="###" class="applink jdapp-ios">京东客户端ios版</a>
							<a href="###" class="applink jdapp-android">京东客户端android版</a>
							<a href="#" class="applink jdapp-ipad">京东客户端ipad版</a>
							<a href="#" class="applink wyapp-ios">京东金融客户端ios版</a>
							<a href="#" class="applink wyapp-android">京东金融客户端android版</a>
						</div>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore7 dorpdown" id="ttbar-atte">
					<div class="dt cw-icon">
						<i class="ci-right"><s>◇</s></i>关注京东
					</div>
					<div class="dd dorpdown-layer">
						<div class="dd-spacer"></div>
						<div class="dd-inner" id="ttbar-atte-main">
							<img src="images/atte.jpg" alt=""/>
						</div>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore8 dorpdown" id="ttbar-serv">
					<div class="dt cw-icon">
						<i class="ci-right"><s>◇</s></i>客户服务
					</div>
					<div class="dd dorpdown-layer">
						<div class="dd-spacer"></div>
						<div class="item-client">客户</div>
						<div class="item"><a href="#">帮助中心</a></div>
						<div class="item"><a href="#">售后服务</a></div>
						<div class="item"><a href="#">在线客服</a></div>
						<div class="item"><a href="#">意见建议</a></div>
						<div class="item"><a href="#">电话客服</a></div>
						<div class="item"><a href="#">客服邮箱</a></div>
						<div class="item"><a href="#">金融咨询</a></div>
						<div class="item"><a href="#">售全球客服</a></div>
						<div class="item-business">商户</div>
						<div class="item"><a href="#">合作招商</a></div>
						<div class="item"><a href="#">京东商学院</a></div>
						<div class="item"><a href="#">商家后台</a></div>
						<div class="item"><a href="#">京麦工作台</a></div>
						<div class="item"><a href="#">商家帮助</a></div>
						<div class="item"><a href="#">规则平台</a></div>
					</div>
				</li>
				<li class="spacer"></li>
				<li class="fore9 dorpdown" id="ttbar-navs">
					<div class="dt cw-icon">
						<i class="ci-right"><s>◇</s></i>网站导航
					</div>
					<div class="dd dorpdown-layer">
						<div class="dd-spacer"></div>
						<dl class="fore1">
							<dt>特色主题</dt>
							<dd>
								<div class="item"><a href="#">品牌头条</a></div>
								<div class="item"><a href="#">发现好货</a></div>
								<div class="item"><a href="#">京东预售</a></div>
								<div class="item"><a href="#">京东金融</a></div>
								<div class="item"><a href="#">京东试用</a></div>
								<div class="item"><a href="#">优惠券</a></div>
								<div class="item"><a href="#">闪购</a></div>
								<div class="item"><a href="#">京东会员</a></div>
								<div class="item"><a href="#">秒杀</a></div>
								<div class="item"><a href="#">定期送</a></div>
								<div class="item"><a href="#">装机大师</a></div>
								<div class="item"><a href="#">新奇特</a></div>
								<div class="item"><a href="#">企业金融服务</a></div>
								<div class="item"><a href="#">礼品购</a></div>
								<div class="item"><a href="#">智能馆</a></div>
								<div class="item"><a href="#">0元测评</a></div>
								<div class="item"><a href="#">In货推荐</a></div>
								<div class="item"><a href="#">背景老字号</a></div>
								<div class="item"><a href="#">买什么</a></div>
							</dd>
						</dl>
						<dl class="fore2">
							<dt>行业频道</dt>
							<dd>
								<div class="item"><a href="#">服装城</a></div>
								<div class="item"><a href="#">家用电器</a></div>
								<div class="item"><a href="#">电脑办公</a></div>
								<div class="item"><a href="#">手机</a></div>
								<div class="item"><a href="#">美妆馆</a></div>
								<div class="item"><a href="#">食品</a></div>
								<div class="item"><a href="#">智能数码</a></div>
								<div class="item"><a href="#">母婴</a></div>
								<div class="item"><a href="#">家装城</a></div>
								<div class="item"><a href="#">运动户外</a></div>
								<div class="item"><a href="#">整车</a></div>
								<div class="item"><a href="#">图书</a></div>
								<div class="item"><a href="#">农资频道</a></div>
								<div class="item"><a href="#">京东智能</a></div>
								<div class="item"><a href="#">玩3C</a></div>
							</dd>
						</dl>
						<dl class="fore3">
							<dt>生活服务</dt>
							<dd>
								<div class="item"><a href="#">京东众筹</a></div>
								<div class="item"><a href="#">白条</a></div>
								<div class="item"><a href="#">京东金融APP</a></div>
								<div class="item"><a href="#">京东小金库</a></div>
								<div class="item"><a href="#">理财</a></div>
								<div class="item"><a href="#">话费</a></div>
								<div class="item"><a href="#">旅行</a></div>
								<div class="item"><a href="#">彩票</a></div>
								<div class="item"><a href="#">游戏</a></div>
								<div class="item"><a href="#">机票酒店</a></div>
								<div class="item"><a href="#">电影票</a></div>
								<div class="item"><a href="#">水电煤</a></div>
								<div class="item"><a href="#">京东到家</a></div>
								<div class="item"><a href="#">京东微联</a></div>
								<div class="item"><a href="#">京东众测</a></div>
							</dd>
						</dl>
						<dl class="fore4">
							<dt>更多精选</dt>
							<dd>
								<div class="item"><a href="#">京东社区</a></div>
								<div class="item"><a href="#">京东通讯</a></div>
								<div class="item"><a href="#">在线读书</a></div>
								<div class="item"><a href="#">京东E卡</a></div>
								<div class="item"><a href="#">智能社区</a></div>
								<div class="item"><a href="#">游戏社区</a></div>
								<div class="item"><a href="#">京友邦</a></div>
								<div class="item"><a href="#">合作招商</a></div>
								<div class="item"><a href="#">企业采购</a></div>
								<div class="item"><a href="#">服务市场</a></div>
								<div class="item"><a href="#">乡村招募</a></div>
								<div class="item"><a href="#">校园加盟</a></div>
								<div class="item"><a href="#">办公生活馆</a></div>
								<div class="item"><a href="#">知识产权维权</a></div>
								<div class="item"><a href="#">English Site</a></div>
							</dd>
						</dl>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<!-- 头部搜索栏 -->
	<div class="w header clearfix">
		<div id="logo-2014">
			<a href="###" class="logo"></a>
			<a href="###" class="link2">
				<b></b>购物车
			</a>
		</div>
		<div class="cart-search">
			<div class="form">
				<input type="text" id="key" class="itxt" value="自营" />
				<input type="button" class="button" value="搜索" />
			</div>
		</div>
	</div>
	<!-- 购物车商品陈列 -->
	<div id="container" class="cart">
		<!-- 标题 -->
		<div class="w">
			<div class="cart-filter-bar clearfix">
				<ul class="switch-cart">
					<li class="switch-cart-item curr">
						<a href="###">
							<em>全部商品</em><span class="number">9</span>
						</a>
					</li>
					<li class="switch-cart-item ui-switchable-selected">
						<a href="###">
							<em>京东大药房</em>
						</a>
					</li>
				</ul>
				<div class="cart-store">
					<span class="label">配送至：</span>
					<div id="jdarea" class="ui-area-wrap ui-area-oversea-mode">
						<div class="ui-area-text-wrap">
							<div class="ui-area-text" data-id="9-639-38630" title="吉林长春市朝阳区">吉林长春市朝阳区</div>
							<b></b>
						</div>
						<div class="ui-area-content-wrap ui-area-w-max" style="left: -360px;">
							<div class="ui-area-tab">
								<a href="###" class="ui-switchable-item">
									<em>吉林</em><i></i>
								</a>
								<a href="###" class="ui-switchable-item">
									<em>长春市</em><i></i>
								</a>
								<a href="###" class="ui-switchable-item ui-area-current">
									<em>朝阳区</em><i></i>
								</a>
							</div>
							<div class="ui-area-content">
								<ul class="ui-area-content-list">
									<li data-name="北京"><a href="###">北京</a></li>
									<li data-name="上海"><a href="###">上海</a></li>
									<li data-name="天津"><a href="###">天津</a></li>
									<li data-name="重庆"><a href="###">重庆</a></li>
									<li data-name="河北"><a href="###">河北</a></li>
									<li data-name="山西"><a href="###">山西</a></li>
									<li data-name="河南"><a href="###">河南</a></li>
									<li data-name="辽宁"><a href="###">辽宁</a></li>
									<li data-name="吉林"><a href="###">吉林</a></li>
									<li data-name="黑龙江"><a href="###">黑龙江</a></li>
									<li data-name="内蒙古"><a href="###">内蒙古</a></li>
									<li data-name="江苏"><a href="###">江苏</a></li>
									<li data-name="山东"><a href="###">山东</a></li>
									<li data-name="安徽"><a href="###">安徽</a></li>
									<li data-name="浙江"><a href="###">浙江</a></li>
									<li data-name="福建"><a href="###">福建</a></li>
									<li data-name="湖北"><a href="###">湖北</a></li>
									<li data-name="湖南"><a href="###">湖南</a></li>
									<li data-name="广东"><a href="###">广东</a></li>
									<li data-name="广西"><a href="###">广西</a></li>
									<li data-name="江西"><a href="###">江西</a></li>
									<li data-name="四川"><a href="###">四川</a></li>
									<li data-name="海南"><a href="###">海南</a></li>
									<li data-name="贵州"><a href="###">贵州</a></li>
									<li data-name="云南"><a href="###">云南</a></li>
									<li data-name="西藏"><a href="###">西藏</a></li>
									<li data-name="陕西"><a href="###">陕西</a></li>
									<li data-name="甘肃"><a href="###">甘肃</a></li>
									<li data-name="青海"><a href="###">青海</a></li>
									<li data-name="宁夏"><a href="###">宁夏</a></li>
									<li data-name="新疆"><a href="###">新疆</a></li>
									<li data-name="台湾"><a href="###">台湾</a></li>
									<li data-name="港澳"><a href="###">港澳</a></li>
									<li data-name="钓鱼岛"><a href="###">钓鱼岛</a></li>
								</ul>
								<ul class="ui-area-content-list" style="display: none;">
									<li><a href="###">长春市</a></li>
									<li><a href="###">吉林市</a></li>
									<li><a href="###">四平市</a></li>
									<li><a href="###">辽源市</a></li>
									<li><a href="###">通化市</a></li>
									<li><a href="###">白山市</a></li>
									<li><a href="###">松原市</a></li>
									<li><a href="###">白城市</a></li>
									<li><a href="###">延边州</a></li>
								</ul>
								<ul class="ui-area-content-list" style="display: none;">
									<li><a href="###">德惠市</a></li>
									<li><a href="###">榆树市</a></li>
									<li><a href="###">九台市</a></li>
									<li><a href="###">农安县</a></li>
									<li><a href="###">朝阳区</a></li>
									<li><a href="###">南关区</a></li>
									<li><a href="###">宽城区</a></li>
									<li><a href="###">二道区</a></li>
									<li><a href="###">双阳区</a></li>
									<li><a href="###">绿园区</a></li>
									<li><a href="###">净月区</a></li>
									<li class="long-area"><a href="###">汽车产业开发区</a></li>
									<li class="long-area"><a href="###">高新技术开发区</a></li>
									<li class="long-area"><a href="###">经济技术开发区</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 购物车商品 -->
		<div class="cart-warp">
			<div class="w">
				<!-- 商品陈列 -->
				<div id="jd-cart">
					<div class="cart-main cart-main-new">
						<div class="cart-thead">
							<div class="column t-checkbox">
								<div class="cart-checkbox">
									<input type="checkbox" class="jdcheckbox"/>
								</div>全选
							</div>
							<div class="column t-goods">商品</div>
							<div class="column t-props"></div>
							<div class="column t-price">单价</div>
							<div class="column t-quantity">数量</div>
							<div class="column t-sum">小计</div>
							<div class="column t-action">操作</div>
						</div>
						<c:forEach items="${cartList.list }" var="item">
						<div id="cart-list">
							<div class="cart-item-list" id="cart-item-list-01">
								<div class="cart-tbody" id="vender_8888">
									<div class="shop">
										<div class="cart-checkbox">
											<input type="checkbox" class="jdcheckbox"/>
											<label for="">勾选店铺内全部商品</label>
										</div>
										<span class="shop-txt">
											<a href="###" class="shop-name self-shop-name">京东自营</a>
										</span>
										<span class="shop-coupon">
											<a href="###" class="shop-coupon-btn" id="J_zypromo_btn">优惠券</a>
										</span>
									</div>
									<div class="item-list">
										<div class="item-give item-full" id="product_promo_201471374">
											<div class="item-header">
												<div class="f-txt">
													<a href="###">
														<span class="full-icon full-gray-icon">换购<b></b></span>
														活动商品购满¥20.00，即可加价换购商品一件>
													</a>
													<a href="###" class="trade-btn btn-1 ml20" id="select-gift_201471374">查看换购品</a>
													<a href="###" id="coudan_promo_201471374" class="ftx-05">&nbsp;去凑单&nbsp;></a>
												</div>
											</div>
											<div class="item-last item-item">
												<div class="item-form clearfix">
													<div class="cell p-checkbox">
														<div class="cart-checkbox">
															<input type="checkbox" class="jdcheckbox"/>
															<label for="">勾选商品</label>
															<span class="line-circle"></span>
														</div>
													</div>
													<div class="cell p-goods">
														<div class="goods-item">
															<div class="p-img">
																<a href="###" class="J_zyyhq_2102567">
																	<img style="width:80px;height:90px" src="${item.img}" alt="${item.gname }"/>
																</a>
															</div>
															<div class="item-msg">
																<div class="p-name">
																	<a href="###">${item.gname }</a>
																</div>
																<div class="p-extend p-extend-new">
																	<span class="promise return-n">
																		<i class="return-n-icon"></i>
																		<a href="#none" class="ftx-03" data-tips="不支持7天无理由退货">不支持7天无理由退货</a>
																	</span>
																</div>
															</div>
														</div>
													</div>
													<div class="cell p-props p-props-new">
														<div class="props-txt" title="莫斯利安350g*6盒">颜色：莫斯利安350g*6盒</div>
													</div>
													<div class="cell p-price">
														<strong>¥ ${item.price}</strong>
														<a href="###" class="sales-promotion">更多促销<b></b></a>
													</div>
													<div class="cell p-quantity">
														<div class="quantity-form">
															<a href="###" class="decrement disabled">-</a>
															<input type="text" class="itxt" value="${item.count }" />
															<a href="###" class="increment">+</a>
														</div>
														<div class="ac ftx-03 quantity-txt" _stock="stock_2102567">有货</div>
													</div>
													<div class="cell p-sum">
														<strong>¥ ${item.price}</strong>
														<span class="weight">2.38kg</span>
													</div>
													<div class="cell p-ops">
														<a class="remove" data-gid="${item.gid}">删除</a>
														<a href="###" class="cart-follow" id="follow">移到我的关注</a>
														<a href="###" class="add-follow" id="add-follow">加到我的关注</a>
													</div>
												</div>
												<div class="item-extra mb10"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
					</div>
				</div>
				<!-- 清除结算 -->
				<div id="cart-floatbar">
					<div class="ui-ceilinglamp-1">
						<div class="cart-toolbar">
							<div class="toolbar-wrap">
								<div class="options-box">
									<div class="select-all">
										<div class="cart-checkbox">
											<input type="checkbox" class="jdcheckbox" id="toggle-checkboxes_down" />
											<label for="">勾选全部商品</label>
										</div>全选
									</div>
									<div class="operation">
										<a href="###" class="remove-batch">删除选中的商品</a>
										<a href="###" class="follow-batch">移到我的关注</a>
										<a href="###" class="J_clr_nosale">清除下柜商品</a>
									</div>
									<div class="toolbar-right">
										<div class="normal">
											<div class="comm-right">
												<div class="btn-area">
													<a href="###" class="submit-btn">去结算<b></b></a>
												</div>
												<div class="price-sum">
													<div>
														<span class="txt txt-new">总价：</span>
														<span class="price sumPrice"><em>¥${cartList.totalMoney}</em></span>
														<b class="ml5 price-tips"></b><br/>
														<span class="txt">已节省：</span>
														<span class="price totalRePrice">-¥0.00</span>
													</div>
												</div>
												<div class="amount-sum">
													已选择<em>0</em>件商品<b class="up"></b>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="cart-warp">
					<div class="w">
						<div class="cart-removed">
							<div class="r-tit">已删除商品，您可以重新购买或加关注：</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 底部 -->
	<div id="GLOBAL_FOOTER" style="padding-bottom: 30px;">
		<div id="service-2014">
			<div class="slogen">
				<span class="item fore1">
					<i></i><b>多</b>品类齐全，轻松购物
				</span>
				<span class="item fore2">
					<i></i><b>快</b>多仓直发，极速配送
				</span>
				<span class="item fore3">
					<i></i><b>好</b>正品行货，精致服务
				</span>
				<span class="item fore4">
					<i></i><b>省</b>天天低价，畅选无忧
				</span>
			</div>
			<div class="w clearfix">
				<dl class="fore1">
					<dt>购物指南</dt>
					<dd>
						<div><a rel="nofollow" href="###">购物流程</a></div>
						<div><a rel="nofollow" href="###">会员介绍</a></div>
						<div><a rel="nofollow" href="###">生活旅行/团购</a></div>
						<div><a rel="nofollow" href="###">常见问题</a></div>
						<div><a rel="nofollow" href="###">大家电</a></div>
						<div><a rel="nofollow" href="###">联系客服</a></div>
					</dd>
				</dl>
				<dl class="fore2">
					<dt>配送方式</dt>
					<dd>
						<div><a rel="nofollow" href="###">上门自提</a></div>
						<div><a rel="nofollow" href="###">211限时达</a></div>
						<div><a rel="nofollow" href="###">配送服务查询</a></div>
						<div><a rel="nofollow" href="###">配送费收取标准</a></div>
						<div><a rel="nofollow" href="###">海外配送</a></div>
					</dd>
				</dl>
				<dl class="fore3">
					<dt>支付方式</dt>
					<dd>
						<div><a rel="nofollow" href="###">货到付款</a></div>
						<div><a rel="nofollow" href="###">在线支付</a></div>
						<div><a rel="nofollow" href="###">分期付款</a></div>
						<div><a rel="nofollow" href="###">邮局汇款</a></div>
						<div><a rel="nofollow" href="###">公司转账</a></div>
					</dd>
				</dl>
				<dl class="fore4">
					<dt>售后服务</dt>
					<dd>
						<div><a rel="nofollow" href="###">售后政策</a></div>
						<div><a rel="nofollow" href="###">价格保护</a></div>
						<div><a rel="nofollow" href="###">退款说明</a></div>
						<div><a rel="nofollow" href="###">返修/退换货</a></div>
						<div><a rel="nofollow" href="###">取消订单</a></div>
					</dd>
				</dl>
				<dl class="fore5">
					<dt>特色服务</dt>
					<dd>
						<div><a rel="nofollow" href="###">夺宝岛</a></div>
						<div><a rel="nofollow" href="###">DIY装机</a></div>
						<div><a rel="nofollow" href="###">延保服务</a></div>
						<div><a rel="nofollow" href="###">京东E卡</a></div>
						<div><a rel="nofollow" href="###">京东通信</a></div>
						<div><a rel="nofollow" href="###">京东JD+</a></div>
					</dd>
				</dl>
			</div>
		</div>
		<div class="w">
			<div id="footer-2014">
				<div class="links">
					<a rel="nofollow" href="###">关于我们</a>|<a rel="nofollow" href="###">联系我们</a>|<a rel="nofollow" href="###">联系客服</a>|<a rel="nofollow" href="###">合作招商</a>|<a rel="nofollow" href="###">商家帮助</a>|<a rel="nofollow" href="###">营销中心</a>|<a rel="nofollow" href="###">手机京东</a>|
					<a rel="nofollow" href="###">友情链接</a>|<a rel="nofollow" href="###">销售联盟</a>|<a rel="nofollow" href="###">京东社区</a>|<a rel="nofollow" href="###">风险监测</a>|<a rel="nofollow" href="###">隐私政策</a>|<a rel="nofollow" href="###">京东公益</a>|<a rel="nofollow" href="###">English Site</a>|<a rel="nofollow" href="###">Media & IR</a>
				</div>
				<div class="copyright">
					<a><i class="copyicon"></i> 京公网安备 11000002000088号</a>
					&nbsp;&nbsp;|&nbsp;&nbsp;京ICP证070359号&nbsp;&nbsp;|&nbsp;&nbsp;
					<a href="###">互联网药品信息服务资格证编号(京)-经营性-2014-0008</a>
					&nbsp;&nbsp;|&nbsp;&nbsp;新出发京零&nbsp;字第大120007号<br>
					互联网出版许可证编号新出网证(京)字150号&nbsp;&nbsp;|&nbsp;&nbsp;
					<a href="###">出版物经营许可证</a>&nbsp;&nbsp;|&nbsp;&nbsp;
					<a href="###">网络文化经营许可证京网文[2014]2148-348号</a>
					&nbsp;&nbsp;|&nbsp;&nbsp;违法和不良信息举报电话：4006561155<br>
					Copyright&nbsp;©&nbsp;2004-2017&nbsp;&nbsp;京东JD.com&nbsp;版权所有&nbsp;&nbsp;|&nbsp;&nbsp;消费者维权热线：4006067733&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="###">经营证照</a><br>京东旗下网站：<a href="###">京东支付</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="###">京东云</a>
				</div>
				<div class="authentication">
					<a href="####" class="mod_copyright_auth_ico mod_copyright_auth_ico_1">经营性网站备案中心</a>
					<a href="####" class="mod_copyright_auth_ico mod_copyright_auth_ico_2">可信网站信用评估</a>
					<a href="####" class="mod_copyright_auth_ico mod_copyright_auth_ico_3">网络警察提醒你</a>
					<a href="####" class="mod_copyright_auth_ico mod_copyright_auth_ico_4">诚信网站</a>
					<a href="####" class="mod_copyright_auth_ico mod_copyright_auth_ico_5">中国互联网举报中心</a>
					<a href="####" class="mod_copyright_auth_ico mod_copyright_auth_ico_6">网络举报APP下载</a>
				</div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		$(function(){
			$(".remove").on("click",function(){
				var gid = $(this).data("gid");
				$.ajax({
					url:"ms/show/removeFromCart.do?gid="+gid,
					type:"post",
					dataType:"json",
					success:function(data){
						alert(data.message);
						location.replace(location.href);
					}
				});
			});
		});
	</script>
</body>
</html>