<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
	<meta charset="UTF-8">
	<title>【京东生鲜福山大樱桃/国产车厘子】</title>
	<link rel="stylesheet" href="jdms/css/reset.css"/>
	<link rel="stylesheet" href="jdms/css/baobei.css"/>
	<script src="assets/js/jquery-2.1.0.js"></script>
	<script src="jdms/js/baobei.js"></script>
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
					<a  class="link-login">你好，请登录</a>&nbsp;&nbsp;<a href="###" class="link-regist style-red">免费注册</a>
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
										<img src="jdms/images/smc1.jpg" width="50" height="50" alt="大红门 哈尔滨红肠 冷藏熟食 220g/袋*2 北京老字号"/>
									</a>
								</div>
								<div class="item">
									<a href="###" title="众品 台湾风味肉肠 700g/袋 香嫩风味 烧烤食材">
										<img src="jdms/images/smc2.jpg" width="50" height="50" alt="众品 台湾风味肉肠 700g/袋 香嫩风味 烧烤食材"/>
									</a>
								</div>
								<div class="item">
									<a href="###" title="大红门 秘制烤肠 240g/袋 原味 北京老字号">
										<img src="jdms/images/smc3.jpg" width="50" height="50" alt="大红门 秘制烤肠 240g/袋 原味 北京老字号"/>
									</a>
								</div>
								<div class="item">
									<a href="###" title="得利斯 猪精前排条 500g/袋 欧得莱黑山猪">
										<img src="jdms/images/smc4.jpg" width="50" height="50" alt="得利斯 猪精前排条 500g/袋 欧得莱黑山猪"/>
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
							<img src="jdms/images/atte.jpg" alt=""/>
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
	<!-- 搜索框部分 -->
	<div id="search" class="w clearfix">
		<div id="logo-2014">
			<a href="###" class="logo">京东</a>
			<div class="extra">
				<div id="channel"></div>
				<div id="categorys-mini">
					<div class="cw-icon">
						<h2>
							<a href="###">全部分类<i class="ci-right"><s>◇</s></i></a>
						</h2>
					</div>
					<div id="categorys-mini-main">
						<div class="dd-inner">
							<div class="item fore1" data-index="1"><h3>
								<a href="#">家用电器</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">手机</a>、<a href="#">运营商</a>、<a href="#">数码</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">电脑</a>、<a href="#">办公</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">家居</a>、<a href="#">家具</a>、<a href="#">家装</a>、<a href="#">厨具</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">男装</a>、<a href="#">女装</a>、<a href="#">童装</a>、<a href="#">内衣</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">美妆个护</a>、<a href="#">宠物</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">女鞋</a>、<a href="#">箱包</a>、<a href="#">钟表</a>、<a href="#">珠宝</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">男鞋</a>、<a href="#">运动</a>、<a href="#">户外</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">汽车</a>、<a href="#">汽车用品</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">母婴</a>、<a href="#">玩具乐器</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">食品</a>、<a href="#">酒类</a>、<a href="#">生鲜</a>、<a href="#">特产</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">礼品鲜花</a>、<a href="#">农资绿植</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">医疗保健</a>、<a href="#">计生情趣</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">图书</a>、<a href="#">影像</a>、<a href="#">电子书</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">机票</a>、<a href="#">酒店</a>、<a href="#">旅游</a>、<a href="#">生活</a>
							</h3></div>
							<div class="item fore1" data-index="1"><h3>
								<a href="#">理财</a>、<a href="#">众筹</a>、<a href="#">白条</a>、<a href="#">保险</a>
							</h3></div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="search-2014">
			<ul id="shelper">
				<li class="delall">全部删除</li>
			</ul>
			<div class="form">
				<input type="text" class="text" placeholder="烧烤食材" />
				<button class="button cw-icon">搜全站</button>
				<button type="button" class="button button01">搜本店</button>
			</div>
		</div>
		<div id="settleup-2014" class="dorpdown">
			<div class="cw-icon">
				<i class="ci-left"></i>
				<i class="ci-right">&gt;</i>
				<i class="ci-count" id="shopping-amount">0</i>
				<a href="#">购物车</a>
			</div>
			<div class="dorpdown-layer">
				<div class="spacer"></div>
				<div class="prompt">
					<div class="nogoods">
						<b></b>购物车中还没有商品，赶紧选购吧！
					</div>
				</div>
				<div id="settleup-content">
					<div class="smt"><h4 class="fl">最新加入的商品</h4></div>
					<div class="smc">
						<ul id="mcart-sigle">
							<li>
								<div class="p-img fl">
									<a href="###"><img src="jdms/images/mcart.jpg" alt="" width="50" height="50" /></a>
								</div>
								<div class="p-name fl"><a href="###" title="优选100 山东烟台福山大樱桃/国产车厘子 500g 果径26-28mm 新鲜水果">优选100 山东烟台福山大樱桃/国产车厘子 500g 果径26-28mm 新鲜水果</a></div>
								<div class="p-detail fr ar">
									<span class="p-price"><strong>￥33.90</strong>×6</span><br>
									<a href="###" class="delete">删除</a>
								</div>
							</li>
						</ul>
					</div>
					<div class="smb ar">
						<div class="p-total">共<b>6</b>件商品　共计<strong>￥ 203.40</strong></div>
						<a href="###" title="去购物车">去购物车</a>
					</div>
				</div>
			</div>
		</div>
		<div id="hotwords">
			<a href="#">牛排</a><a href="#">冰淇淋</a><a href="#">海参</a><a href="#">樱桃</a><a href="#">小龙虾</a><a href="#">奇异果</a><a href="#">蔬菜</a>
		</div>
	</div>
	<!-- 头部导航栏 -->
	<div id="shop-head">
		<div class="layout-area J-layout-area">
			<div class="layout layout-auto J-layout" style="overflow: visible;">
				<div class="layout-one" style="overflow: visible;">
					<div class="fn-clear sh-brand-wrap-633464">
						<div class="mc">
							<div class="sh-brand-wrap">
								<div class="sh-brand sh-hot-wrap">
									<div class="shop-logo-box">
										<a href="##" class="shop-logo-link"><img src="jdms/images/shop-logo.jpg" alt=""/></a>
									</div>
									<div class="shop-name-box">
										<span class="shop-name">京东自营水果专区</span>
										<a href="#" class="follow-me for-light-bg">关注我</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="fn-clear sh-head-menu-red-v-633589" style="margin-bottom: 0px;">
						<div class="mc" style="overflow: visible;">
							<div class="J_ShopHeaderLinkWithDropdown sh-hd-wrap">
								<div class="sh-head-menu">
									<ul class="menu-list">
										<li class="menu">
											<a href="#" class="main-link">首页</a>
										</li>
										<li class="menu all-cate">
											<a href="#" class="main-link">全部分类<span class="arrow"></span></a>
											<div class="sub-menu-wrap">
												<dl class="sub-pannel">
													<dt class="sub-title"><a href="#" class="sub-tit-link">国产水果 ></a></dt>
													<dd class="sub-list">
														<ul class="leaf-list">
															<li class="leaf"><a href="#" class="leaf-link">苹果/梨</a></li>
															<li class="leaf"><a href="#" class="leaf-link">柑/橘/橙/柚/柠檬</a></li>
															<li class="leaf"><a href="#" class="leaf-link">瓜类</a></li>
															<li class="leaf"><a href="#" class="leaf-link">热带水果</a></li>
															<li class="leaf"><a href="#" class="leaf-link">桃/李/杏</a></li>
															<li class="leaf"><a href="#" class="leaf-link">猕猴桃</a></li>
														</ul>
													</dd>
												</dl>
												<dl class="sub-pannel">
													<dt class="sub-title"><a href="#" class="sub-tit-link">进口水果 ></a></dt>
													<dd class="sub-list">
														<ul class="leaf-list">
															<li class="leaf"><a href="#" class="leaf-link">苹果/梨</a></li>
															<li class="leaf"><a href="#" class="leaf-link">柑/橘/橙/柚/柠檬</a></li>
															<li class="leaf"><a href="#" class="leaf-link">瓜类</a></li>
															<li class="leaf"><a href="#" class="leaf-link">热带水果</a></li>
															<li class="leaf"><a href="#" class="leaf-link">桃/李/杏</a></li>
															<li class="leaf"><a href="#" class="leaf-link">猕猴桃</a></li>
														</ul>
													</dd>
												</dl>
												<dl class="sub-pannel">
													<dt class="sub-title"><a href="#" class="sub-tit-link">冷冻水果 ></a></dt>
													<dd class="sub-list">
														<ul class="leaf-list">
															<li class="leaf"><a href="#" class="leaf-link">苹果/梨</a></li>
															<li class="leaf"><a href="#" class="leaf-link">柑/橘/橙/柚/柠檬</a></li>
															<li class="leaf"><a href="#" class="leaf-link">瓜类</a></li>
															<li class="leaf"><a href="#" class="leaf-link">热带水果</a></li>
															<li class="leaf"><a href="#" class="leaf-link">桃/李/杏</a></li>
															<li class="leaf"><a href="#" class="leaf-link">猕猴桃</a></li>
														</ul>
													</dd>
												</dl>
												<dl class="sub-pannel">
													<dt class="sub-title"><a href="#" class="sub-tit-link">送礼专区 ></a></dt>
													<dd class="sub-list">
														<ul class="leaf-list">
															<li class="leaf"><a href="#" class="leaf-link">苹果/梨</a></li>
															<li class="leaf"><a href="#" class="leaf-link">柑/橘/橙/柚/柠檬</a></li>
															<li class="leaf"><a href="#" class="leaf-link">瓜类</a></li>
															<li class="leaf"><a href="#" class="leaf-link">热带水果</a></li>
															<li class="leaf"><a href="#" class="leaf-link">桃/李/杏</a></li>
															<li class="leaf"><a href="#" class="leaf-link">猕猴桃</a></li>
														</ul>
													</dd>
												</dl>
											</div>
										</li>
										<li class="menu">
											<a href="#" class="main-link">瓜</a>
										</li>
										<li class="menu">
											<a href="#" class="main-link">苹果</a>
										</li>
										<li class="menu">
											<a href="#" class="main-link">牛油果</a>
										</li>
										<li class="menu">
											<a href="#" class="main-link">火龙果</a>
										</li>
										<li class="menu">
											<a href="#" class="main-link">柠檬</a>
										</li>
										<li class="menu">
											<a href="#" class="main-link">奇异果</a>
										</li>
										<li class="menu">
											<a href="#" class="main-link">芒果</a>
										</li>
										<li class="menu">
											<a href="#" class="main-link">葡萄/提子</a>
										</li>
									</ul>
									<div class="s-form">
										<input type="text" class="s-inp" value="瓜" maxlength="60" size="60" />
										<input type="button" value="搜索" class="s-submit" />
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 本页来源部分 -->
	<div class="crumb-wrap" id="crumb-wrap">
		<div class="w clearfix">
			<ul class="crumb fl clearfix">
				<li class="item"><a href="#">生鲜</a></li><li class="item sep">></li><li class="item"><a href="#">水果</a></li><li class="item sep">></li><li class="item"><a href="#">车厘子/樱桃</a></li><li class="item sep">></li><li class="item"><a href="#">京东生鲜</a></li><li class="item sep">></li><li class="item ellipsis">京东生鲜福山大樱桃/国产车厘子</li>
			</ul>
			<div class="contact fr clearfix">
				<div class="J-hove-wrap EDropdown fr">
					<div class="item">
						<div class="name">
							<a href="#">京东自营水果专区</a>
							<em class="u-jd"><span>JD</span>自营</em>
						</div>
					</div>
					<div class="item J-im-item">
						<div class="J-im-btn">
							<div class="im gys-im"><i class="sprite-im"></i>联系供应商</div>
						</div>
					</div>
					<div class="item">
						<div class="follow J-follow-shop"><i class="sprite-follow"></i>关注店铺</div>
					</div>
					<div class="contact-layer">
						<div class="content">
							<div class="score-body">
								<div class="pop-shop-im">
									<div class="J-contact-text">客服</div>
									<div class="J-im-item">
										<div class="J-im-btn clearfix">
											<div class="im gys-im">
												<i class="sprite-im"></i>联系供应商
											</div>
										</div>
									</div>
								</div>
								<div class="pop-shop-qr-code J-contact-qrcode clearfix">
									<div class="qr-code J-m-qrcode">
										<div class="J-m-wrap">
											<img src="jdms/images/qr.png" width="118" height="118"/>
											<p>手机下单</p>
										</div>
									</div>
								</div>
								<div class="btns">
									<a href="#" class="btn-def enter-shop J-enter-shop">
										<i class="sprite-enter"></i><span>进店逛逛</span><span class="separator">|</span>
									</a>
									<a href="#" class="btn-def follow-shop J-follow-shop">
										<i class="sprite-follow"></i><span>关注店铺</span>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 商品简介及购买 -->
	<div class="w">
		<div class="product-intro clearfix">
			<!-- 图片展示区 -->
			<div class="preview-wrap">
				<div class="preview" id="preview">
					<div class="jqzoom main-img">
						<img src="${goods.goodsImg[0].src }" id="spec-img" alt="" width="350"/>
						<i></i>
						<div class="jqZoompup" style="width: 236.25px;height: 236.25px"></div>
						<div class="zoomdiv">
							<img src="${goods.goodsImg[0].src }" alt=""/>
						</div>
					</div>
					<div class="spec-list">
						<a href="###" id="spec-forward" class="arrow-prev disabled">
							<i class="sprite-arrow-prev"></i>
						</a>
						<a href="###" id="spec-backward" class="arrow-next">
							<i class="sprite-arrow-next"></i>
						</a>
						<div id="spec-list" class="spec-items">
							<ul class="lh clearfix">
								<!-- <li class="img-hover"><img src="jdms/images/spec1.jpg" alt="优选100 山东烟台福山大樱桃/国产车厘子 500g 果径26-28mm 新鲜水果" height="50" width="50" /></li> -->
								<c:forEach items="${goods.goodsImg }" var="item">
									<li><img src="${item.src }" alt="优选100 山东烟台福山大樱桃/国产车厘子 500g 果径26-28mm 新鲜水果" height="50" width="50" /></li>
								</c:forEach>
							</ul>
						</div>
					</div>
					<div class="preview-info">
						<div class="left-btns">
							<a href="###" class="follow J-follow">
								<i class="sprite-follow-sku"></i><em>关注</em>
							</a>
							<a href="###" class="share J-share"><i class="sprite-share"></i><em>分享</em></a>
						</div>
						<div class="right-btns"><a href="###" class="report-btn">举报</a></div>
					</div>
				</div>
			</div>
			<!-- 购买说明 -->
			<div class="itemInfo-wrap">
				<div class="sku-name">${goods.gname }</div>
				<div class="news">
					<div class="item" id="p-ad" title="${goods.gdesc }">${goods.gdesc }</div>
				</div>
				<div class="activity-banner  J-seckill seckilling">
					<div class="activity-type">
						<i class="sprite-seckilling"></i>
						<strong>京东秒杀</strong>
					</div>
					<div class="activity-message">
						距离结束<span class="cd_hour">22</span>:<span class="cd_minute">54</span>:<span class="cd_second">19</span>
					</div>
				</div>
				<div class="summary summary-first" id="summary-first">
					<div class="summary-price-wrap">
						<div class="summary-price J-summary-price">
							<div class="dt">秒 杀 价</div>
							<div class="dd">
								<span class="p-price">
									<span>￥</span><span class="price J-p-4927562">${goods.seckill.price }</span>
									<span class="seckill_mod_goods_price_pre">¥<del>${goods.gprice }</del></span>
								</span>
								<a class="notice J-notify-sale" href="###">降价通知</a>
							</div>
						</div>
						<div class="summary-info J-summary-info clearfix">
							<div id="comment-count" class="comment-count item fl">
								<p class="comment">累计评价</p><a class="count J-comm-4927562" href="###">3000+</a>
							</div>
						</div>
						<div id="summary-quan" class="li p-choose clearfix">
							<div class="dt">优 惠 券</div>
							<div class="dd">
								<dl>
									<dt class="fl"></dt>
									<dd class="lh"><a href="###" class="J-open-tb">
										<span class="quan-item" title="仅可购买自营生鲜部分商品 有效期2017-06-01至2017-06-08"><s></s><b></b><span class="text">满159减30</span></span>
									</a></dd>
								</dl>
							</div>
						</div>
						<div id="J-summary-top" class="summary-top">
							<div id="summary-promotion" class="summary-promotion">
								<div class="dt">促　　销</div>
								<div class="dd J-prom-wrap p-promotions-wrap">
									<div class="p-promotions">
										<div class="prom">
											<div class="J-prom">
												<div class="prom-item">
													<em class="hl_red_bg">限制</em>
													<em class="hl_red">此价格不与套装优惠同时享受</em>
												</div>
											</div>
										</div>
										<div class="prom-quan">
											<div class="J-prom-quan prom-quan">
												<em class="hl_red_bg">满额返券</em>
												<em class="hl_red">购生鲜返汽车用品199减100优惠券</em>&nbsp;
												<a href="###">详情 <s class="s-arrow">&gt;&gt;</s></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="summary p-choose-wrap">
					<div class="summary-stock" id="summary-stock">
						<div class="dt">配 送 至</div>
						<div class="dd">
							<div class="store clearfix">
								<div id="stock-address" class="stock-address EDropdown">
									<div class="inner">
										<div class="head">
											<span class="text" data-res="">黑龙江 鹤岗市 萝北县</span><span class="arrow arr-close"></span>
										</div>
										<div class="content">
											<!-- <dl class="address-used">
												<dt>
													<strong>常用地址</strong>
													<span class="arrow"></span>
												</dt>
											</dl>
											<div class="line"></div> -->
											<dl class="address-select clicked">
												<dt>
													<strong>选择新地址</strong>
													<span class="arrow"></span>
												</dt>
												<dd class="stock-address-list">
													<div class="address-tab J-address-tab ETab">
														<ul class="tab">
															<li class="" data-id="10">黑龙江</li>
															<li class="" data-id="727">鹤岗</li>
															<li class="current" data-id="728">萝北县</li>
														</ul>
														<div class="tab-con" id="tab-con">
															<ul class="tab-item" style="display: none;">
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
															<ul class="tab-item" style="display: none;">
																<li data-name="哈尔滨"><a href="###">哈尔滨</a></li>
																<li data-name="齐齐哈尔"><a href="###">齐齐哈尔</a></li>
																<li data-name="鸡西"><a href="###">鸡西</a></li>
																<li data-name="鹤岗"><a href="###">鹤岗</a></li>
																<li data-name="双鸭山"><a href="###">双鸭山</a></li>
																<li data-name="大庆"><a href="###">大庆</a></li>
																<li data-name="伊春"><a href="###">伊春</a></li>
																<li data-name="佳木斯"><a href="###">佳木斯</a></li>
																<li data-name="七台河"><a href="###">七台河</a></li>
																<li data-name="牡丹江"><a href="###">牡丹江</a></li>
																<li data-name="黑河"><a href="###">黑河</a></li>
																<li data-name="绥化"><a href="###">绥化</a></li>
																<li data-name="大兴安岭"><a href="###">大兴安岭</a></li>
															</ul>
															<ul class="tab-item" style="display: block;">
																<li data-name="兴山区"><a href="###">兴山区</a></li>
																<li data-name="向阳区"><a href="###">向阳区</a></li>
																<li data-name="工农区"><a href="###">工农区</a></li>
																<li data-name="南山区"><a href="###">南山区</a></li>
																<li data-name="兴安区"><a href="###">兴安区</a></li>
																<li data-name="东山区"><a href="###">东山区</a></li>
																<li data-name="萝北县"><a href="###">萝北县</a></li>
																<li data-name="绥滨县"><a href="###">绥滨县</a></li>
															</ul>
														</div>
													</div>
												</dd>
											</dl>
										</div>
									</div>
								</div>
								<div class="store-prompt" id="store-prompt">
									<strong>采购中</strong>，预计2017-06-10日后有货，现在可下单
									<span></span>
								</div>
								<div class="J-promise-icon promise-icon fl">
									<div class="title fl">支持</div>
									<div class="icon-list fl">
										<ul>
											<div class="line1 clearfix">
												<a href="###" title="所选地址自营生鲜订单满99元免基础运费（20kg内），不足金额订单收取6元/单基础运费，超出重量加收1元/kg续重运费。" class="free_delivery_fresh_zhong">生鲜99元免基础运费（20kg内）</a>
												<a href="####" title="我们提供多种自提服务，包括京东自提点、京东校园派、自助提货柜、移动自提车等服务，自提订单满49元免运费，不足金额订单收取3元/单运费。" class="special_ziti noborder">                自提            </a>
											</div>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div id="summary-supply" class="li">
						<div class="dt">　　</div>
						<div class="dd">
							<div id="summary-service" class="summary-service">由 <span class="hl_red">京东</span> 发货，并提供售后服务。</div>
						</div>
					</div>
					<div id="summary-weight" class="li">
						<div class="dt">重　　量</div>
						<div class="dd">0.5kg</div>
					</div>
					<div class="summary-line"></div>
					<div id="choose-attrs" class="clearfix">
						<div id="choose-attr-1" class="li p-choose">
							<div class="dt">选择种类</div>
							<div class="dd">
								<div class="item  selected" title="500g 爆款装（26-28mm）">
									<a href="###" class="clearfix">
										<img src="jdms/images/choose.jpg" alt="500g 爆款装（26-28mm）" width="40" height="40"/>
										<i>500g 爆款装（26-28mm）</i>
									</a>
								</div>
								<div class="item" title="500g 爆款装（26-28mm）">
									<a href="###" class="clearfix">
										<img src="jdms/images/choose2.jpg" alt="1.5kg 家庭装 (26-28mm)" width="40" height="40"/>
										<i>1.5kg 家庭装 (26-28mm)</i>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div id="choose-service" class="li"></div>
					<div id="choose-baitiao" class="li choose-baitiao clearfix">
						<div class="dt">白条分期</div>
						<div class="dd">
							<div class="baitiao-list J-baitiao-list clearfix">
								<div class="item">
									<a href="###">
										<strong>                         不分期                    </strong>
										<span style="display: none;">
											<em>惠</em> 0手续费                    
										</span>
									</a>
									<div class="baitiao-tips hide">
										<ul>
											<li>                            无手续费                        </li>
										</ul>
									</div>
								</div>
								<div class="item">
									<a href="###">
										<strong>                        ￥<i>11.47</i>×3期                    </strong>
										<span style="display: none;">
											<em>惠</em> 含手续费                                       
										</span>
									</a>
									<div class="baitiao-tips hide">
										<ul>
											<li>                            含手续费：费率0.5%，￥<em>0.17</em>×3期                        </li>
										</ul>
									</div>
								</div>
								<div class="item">
									<a href="###">
										<strong>                        ￥<i>5.82</i>×6期                    </strong>
										<span style="display: none;">
											<em>惠</em> 含手续费                                       
										</span>
									</a>
									<div class="baitiao-tips hide">
										<ul>
											<li>                            含手续费：费率0.5%，￥<em>0.17</em>×6期                        </li>
										</ul>
									</div>
								</div>
								<div class="item">
									<a href="###">
										<strong>                        ￥<i>2.99</i>×12期                    </strong>
										<span style="display: none;">
											<em>惠</em> 含手续费                                       
										</span>
									</a>
									<div class="baitiao-tips hide">
										<ul>
											<li>                            含手续费：费率0.5%，￥<em>0.17</em>×12期                        </li>
										</ul>
									</div>
								</div>
								<div class="item">
									<a href="###">
										<strong>                        ￥<i>1.58</i>×24期                    </strong>
										<span style="display: none;">
											<em>惠</em> 含手续费                                       
										</span>
									</a>
									<div class="baitiao-tips hide">
										<ul>
											<li>                            含手续费：费率0.5%，￥<em>0.17</em>×24期                        </li>
										</ul>
									</div>
								</div>
								<div class="bt-info-tips">
									<a class="J-icon-hui prom icon fl" href="###">　</a>
									<div class="baitiao-text J-baitiao-text">
										<i><s>◇</s></i>
										<div class="hui-txt">
											<p>【白条支付】首单最高立减6.18元</p>
										</div>
									</div>
								</div>
								<div class="bt-info-tips">
									<a class="J-bt-tips question icon fl" href="###">　</a>
									<div class="baitiao-text J-baitiao-text">
										<i><s>◇</s></i>
										<div class="hui-txt question-txt">
											<p>1、实际分期金额与手续费以白条剩余额度及收银台优惠为准</p>
											<p>2、什么是白条分期？</p>
											<p>白条是一种"先消费，后付款"的支付方式，使用白条可以享受先用后付，以及最长36期的分期还款。</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="summary-line"></div>
					<div id="choose-btns" class="choose-btns clearfix">
						<div class="choose-amount">
							<div class="wrap-input">
								<input class="text buy-num" id="buy-num" value="1" data-max="199"/>
								<a class="btn-reduce disabled" href="###" data-disabled="1">-</a>
								<a class="btn-add" href="###" data-disabled="1">+</a>
							</div>
						</div>
						<a href="###" id="InitCartUrl" class="btn-special1 btn-lg">加入购物车</a>
					</div>
					<div id="summary-tips" class="summary-tips">
						<div class="dt">温馨提示</div>
						<div class="dd">
							<ol class="tips-list clearfix">
								<li>·不支持7天无理由退货</li>
								<li>·该商品超时未付款，订单将被自动取消。</li>
							</ol>
						</div>
					</div>
				</div>
			</div>
			<!-- 看了又看 -->
			<div id="track" class="track">
				<div class="extra">
					<div class="track-tit">
						<h3>看了又看</h3><span></span>
					</div>
					<div class="track-con">
						<ul>
							<li><a href="###" title="佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果">
									<img src="jdms/images/track1.jpg" alt="佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果"/>
									<p class="J-p-3712995">￥29.90</p>
								</a></li>
							<li><a href="###" title="优选100 海南妃子笑荔枝 1kg装 新鲜水果">
									<img src="jdms/images/track2.jpg" alt="优选100 海南妃子笑荔枝 1kg装 新鲜水果"/>
									<p class="J-p-3712995">￥23.90</p>
								</a></li>
							<li><a href="###" title="泰国进口 金枕头榴莲 1个 约3kg 新鲜水果">
									<img src="jdms/images/track3.jpg" alt="泰国进口 金枕头榴莲 1个 约3kg 新鲜水果"/>
									<p class="J-p-3712995">￥114.90</p>
								</a></li>
							<li><a href="###" title="佳农 菲律宾菠萝 2个装 单果1kg以上 新鲜水果">
									<img src="jdms/images/track4.jpg" alt="佳农 菲律宾菠萝 2个装 单果1kg以上 新鲜水果"/>
									<p class="J-p-3712995">￥39.90</p>
								</a></li>
							<li><a href="###" title="鲜果使者 进口埃及橙 8个装 1.5kg 单果约200-220g 新鲜水果">
									<img src="jdms/images/track5.jpg" alt="鲜果使者 进口埃及橙 8个装 1.5kg 单果约200-220g 新鲜水果"/>
									<p class="J-p-3712995">￥26.90</p>
								</a></li>
							<li><a href="###" title="珍享 国产蓝莓 2盒装 约125g/盒 新鲜水果">
									<img src="jdms/images/track6.jpg" alt="珍享 国产蓝莓 2盒装 约125g/盒 新鲜水果"/>
									<p class="J-p-3712995">￥24.90</p>
								</a></li>
							<li><a href="###" title="鲜百年 广西百香果 西番莲鸡蛋果 12个装 单果50-80g 新鲜水果">
									<img src="jdms/images/track7.jpg" alt="鲜百年 广西百香果 西番莲鸡蛋果 12个装 单果50-80g 新鲜水果"/>
									<p class="J-p-3712995">￥23.90</p>
								</a></li>
							<li><a href="###" title="佳农 进口香蕉 1kg 单根装 新鲜水果">
									<img src="jdms/images/track8.jpg" alt="佳农 进口香蕉 1kg 单根装 新鲜水果"/>
									<p class="J-p-3712995">￥19.90</p>
								</a></li>
							<li><a href="###" title="珍享 墨西哥进口牛油果 6个装 单果约130-160g    新鲜水果">
									<img src="jdms/images/track9.jpg" alt="珍享 墨西哥进口牛油果 6个装 单果约130-160g    新鲜水果"/>
									<p class="J-p-3712995">￥79.90</p>
								</a></li>
							<li><a href="###" title="华圣 高原红富士苹果 6个装 1.2kg 新鲜水果">
									<img src="jdms/images/track10.jpg" alt="华圣 高原红富士苹果 6个装 1.2kg 新鲜水果"/>
									<p class="J-p-3712995">￥23.90</p>
								</a></li>
							<li><a href="###" title="鲜为天 海南小台农芒果 1kg 单果50-90g 新鲜水果">
									<img src="jdms/images/track11.jpg" alt="鲜为天 海南小台农芒果 1kg 单果50-90g 新鲜水果"/>
									<p class="J-p-3712995">￥21.90</p>
								</a></li>
							<li><a href="###" title="鲜百年 泰国进口椰青 送开椰器+吸管 9个装 单果750-850g 新鲜水果">
									<img src="jdms/images/track12.jpg" alt="鲜百年 泰国进口椰青 送开椰器+吸管 9个装 单果750-850g 新鲜水果"/>
									<p class="J-p-3712995">￥108.00</p>
								</a></li>
							<li><a href="###" title="佳农 山东优质富士12个装80mm 约2.5kg 单果重约200g 新鲜水果">
									<img src="jdms/images/track13.jpg" alt="佳农 山东优质富士12个装80mm 约2.5kg 单果重约200g 新鲜水果"/>
									<p class="J-p-3712995">￥29.80</p>
								</a></li>
							<li><a href="###" title="泰国进口精品山竹750g 新鲜水果">
									<img src="jdms/images/track14.jpg" alt="泰国进口精品山竹750g 新鲜水果"/>
									<p class="J-p-3712995">￥30.90</p>
								</a></li>
							<li><a href="###" title="珍享 智利进口ChiChi品牌奇异果 绿果 12个装 单果重80g以上 新鲜水果">
									<img src="jdms/images/track15.jpg" alt="珍享 智利进口ChiChi品牌奇异果 绿果 12个装 单果重80g以上 新鲜水果"/>
									<p class="J-p-3712995">￥29.90</p>
								</a>
							</li>
							<li><a href="###" title="佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果">
									<img src="jdms/images/track1.jpg" alt="佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果"/>
									<p class="J-p-3712995">￥29.90</p>
								</a></li>
							<li><a href="###" title="优选100 海南妃子笑荔枝 1kg装 新鲜水果">
									<img src="jdms/images/track2.jpg" alt="优选100 海南妃子笑荔枝 1kg装 新鲜水果"/>
									<p class="J-p-3712995">￥23.90</p>
								</a></li>
							<li><a href="###" title="泰国进口 金枕头榴莲 1个 约3kg 新鲜水果">
									<img src="jdms/images/track3.jpg" alt="泰国进口 金枕头榴莲 1个 约3kg 新鲜水果"/>
									<p class="J-p-3712995">￥114.90</p>
								</a></li>
						</ul>
					</div>
					<div class="track-more">
						<a href="#none" class="J-prev sprite-up">上翻</a>
						<a href="#none" class="J-next sprite-down">下翻</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 详情及售后 -->
	<div class="w clearfix">
		<div class="aside">
			<!-- 京东自营水果专区 -->
			<div class="m m-aside popbox" id="popbox">
				<div class="popbox-inner">
					<div class="mt">
						<h3><a href="###" title="京东自营水果专区">京东自营水果专区</a></h3>
						<div class="im-wrap clearfix">
							<a href="###" class="J-popbox-im im" title="联系供应商">
								<div class="im gys-im"><i class="sprite-im"></i></div>
							</a>
						</div>
						<span class="arrow"></span>
					</div>
					<div class="mc">
						<div class="pop-score-summary">
							<div class="btns">
								<a href="###" class="btn-def enter-shop J-enter-shop">
									<i class="sprite-enter"></i>
									<span>进店逛逛</span>
								</a>
								<a href="###" class="btn-def follow-shop J-follow-shop">
									<i class="sprite-follow"> </i>
									<span>关注店铺</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 店内搜索 -->
			<div id="sp-search" class="m m-aside sp-search">
				<div class="mt"><h3>店内搜索</h3></div>
				<div class="mc">
					<p class="sp-form-item1">
						<label for="sp-keyword">关键字：</label>
						<span>
							<input type="text"/>
						</span>
					</p>
					<p class="sp-form-item2">
						<label for="sp-price">价　格：</label>
						<span>
							<input type="text"/>
							到
							<input type="text"/>
						</span>
					</p>
					<p class="sp-form-item3">
						<label for="">　　　</label>
						<span>
							<input type="submit" value="搜索" id="btnShopSearch" />
						</span>
					</p>
				</div>
			</div>
			<!-- 店内热销 -->
			<div class="m m-aside pop-hot" id="pop-hot">
				<div class="mc no-padding">
					<div class="ETab">
						<div class="tab-main large">
							<ul>
								<li data-tab="trigger" class="current">店铺热销</li>
								<li data-tab="trigger">热门关注</li>
							</ul>
						</div>
						<div class="tab-con">
							<div id="sp-hot-sale">
								<ul class="plist plist-pop plist-2">
									<li class="fore1">
										<div class="p-img ac">
											<a href="###" title="佳农 越南进口白心火龙果 3个装 中果 总重约1kg 新鲜水果">
												<img src="jdms/images/plist1.jpg" width="160" height="160" alt="佳农 越南进口白心火龙果 3个装 中果 总重约1kg 新鲜水果"/>
											</a>
											<div class="p-name">
												<a href="###" title="佳农 越南进口白心火龙果 3个装 中果 总重约1kg 新鲜水果">佳农 越南进口白心火龙果 3个装 中果 总重约1kg 新鲜水果</a>
											</div>
										</div>
										<div class="p-info clearfix">
											<div class="p-count fl">                             
												热销<em>203717</em>件
											</div>
											<div class="p-price fr">
												<strong class="J-p-3712997">￥22.90</strong>
											</div>
										</div>
										<div class="p-num">1</div>
									</li>
									<li class="fore2">
										<div class="p-img ac">
											<a href="###" title="泰国进口 金枕头榴莲 1个 约2.5kg 新鲜水果">
												<img src="jdms/images/plist2.jpg" width="160" height="160" alt="泰国进口 金枕头榴莲 1个 约2.5kg 新鲜水果"/>
											</a>
											<div class="p-name">
												<a href="###" title="泰国进口 金枕头榴莲 1个 约2.5kg 新鲜水果">泰国进口 金枕头榴莲 1个 约2.5kg 新鲜水果</a>
											</div>
										</div>
										<div class="p-info clearfix">
											<div class="p-count fl">                             
												热销<em>108484</em>件
											</div>
											<div class="p-price fr">
												<strong class="J-p-3712997">￥77.90</strong>
											</div>
										</div>
										<div class="p-num">2</div>
									</li>
									<li class="fore3">
										<div class="p-img ac">
											<a href="###" title="优选100 妃子笑荔枝 1kg装 新鲜水果">
												<img src="jdms/images/plist3.jpg" width="160" height="160" alt="优选100 妃子笑荔枝 1kg装 新鲜水果"/>
											</a>
											<div class="p-name">
												<a href="###" title="优选100 妃子笑荔枝 1kg装 新鲜水果">优选100 妃子笑荔枝 1kg装 新鲜水果</a>
											</div>
										</div>
										<div class="p-info clearfix">
											<div class="p-count fl">                             
												热销<em>89235</em>件
											</div>
											<div class="p-price fr">
												<strong class="J-p-3712997">￥23.90</strong>
											</div>
										</div>
										<div class="p-num">3</div>
									</li>
									<li class="fore4">
										<div class="p-img ac">
											<a href="###" title="华圣 高原红富士苹果 6个装 1.2kg 新鲜水果">
												<img src="jdms/images/plist4.jpg" width="160" height="160" alt="华圣 高原红富士苹果 6个装 1.2kg 新鲜水果"/>
											</a>
											<div class="p-name">
												<a href="###" title="华圣 高原红富士苹果 6个装 1.2kg 新鲜水果">华圣 高原红富士苹果 6个装 1.2kg 新鲜水果</a>
											</div>
										</div>
										<div class="p-info clearfix">
											<div class="p-count fl">                             
												热销<em>53624</em>件
											</div>
											<div class="p-price fr">
												<strong class="J-p-3712997">￥23.90</strong>
											</div>
										</div>
										<div class="p-num">4</div>
									</li>
									<li class="fore5">
										<div class="p-img ac">
											<a href="###" title="佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果">
												<img src="jdms/images/plist5.jpg" width="160" height="160" alt="佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果"/>
											</a>
											<div class="p-name">
												<a href="###" title="佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果">佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果</a>
											</div>
										</div>
										<div class="p-info clearfix">
											<div class="p-count fl">                             
												热销<em>53441</em>件
											</div>
											<div class="p-price fr">
												<strong class="J-p-3712997">￥29.90</strong>
											</div>
										</div>
										<div class="p-num">5</div>
									</li>
									<li class="fore6">
										<div class="p-img ac">
											<a href="###" title="兴业源 水果大连油桃6粒(单果重量75-100g)净重约500g 新鲜水果">
												<img src="jdms/images/plist6.jpg" width="160" height="160" alt="兴业源 水果大连油桃6粒(单果重量75-100g)净重约500g 新鲜水果"/>
											</a>
											<div class="p-name">
												<a href="###" title="兴业源 水果大连油桃6粒(单果重量75-100g)净重约500g 新鲜水果">兴业源 水果大连油桃6粒(单果重量75-100g)净重约500g 新鲜水果</a>
											</div>
										</div>
										<div class="p-info clearfix">
											<div class="p-count fl">                             
												热销<em>49883</em>件
											</div>
											<div class="p-price fr">
												<strong class="J-p-3712997">￥11.90</strong>
											</div>
										</div>
										<div class="p-num">6</div>
									</li>
								</ul>
							</div> 
							<div id="sp-hot-fo" class="hide">
								<div class="ac">「暂无数据」</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 店铺新品 -->
			<div class="m m-aside" id="sp-new">
				<div class="mt">
					<h3>店铺新品</h3>
				</div>
				<div class="mc">
					<ul class="plist plist-2">
						<li class="fore1">
							<div class="p-img ac">
								<a href="###" title="京东生鲜  国产水蜜桃  6个装  约1kg  单果约150-200g  新鲜水果">
									<img src="jdms/images/new1.jpg" alt="京东生鲜  国产水蜜桃  6个装  约1kg  单果约150-200g  新鲜水果"/>
								</a>
							</div>
							<div class="p-name">
								<a href="###" title="京东生鲜  国产水蜜桃  6个装  约1kg  单果约150-200g  新鲜水果">京东生鲜  国产水蜜桃  6个装  约1kg  单果约150-200g  新鲜水果</a>
							</div>
							<div class="p-price"><strong class="J-p-4247507">￥23.90</strong></div>
						</li>
						<li class="fore2">
							<div class="p-img ac">
								<a href="###" title="优选100  精选海南荔枝王 1kg装 新鲜水果">
									<img src="jdms/images/new2.jpg" alt="优选100  精选海南荔枝王 1kg装 新鲜水果"/>
								</a>
							</div>
							<div class="p-name">
								<a href="###" title="优选100  精选海南荔枝王 1kg装 新鲜水果">优选100  精选海南荔枝王 1kg装 新鲜水果</a>
							</div>
							<div class="p-price"><strong class="J-p-4247507">￥89.90</strong></div>
						</li>
						<li class="fore3">
							<div class="p-img ac">
								<a href="###" title="京东生鲜 黄金密瓜 2个 约2.5kg 新鲜水果">
									<img src="jdms/images/new3.jpg" alt="京东生鲜 黄金密瓜 2个 约2.5kg 新鲜水果"/>
								</a>
							</div>
							<div class="p-name">
								<a href="###" title="京东生鲜 黄金密瓜 2个 约2.5kg 新鲜水果">京东生鲜 黄金密瓜 2个 约2.5kg 新鲜水果</a>
							</div>
							<div class="p-price"><strong class="J-p-4247507">￥31.90</strong></div>
						</li>
						<li class="fore4">
							<div class="p-img ac">
								<a href="###" title="京东生鲜 云南杨梅 约500g 单果约15-20g 新鲜水果">
									<img src="jdms/images/new4.jpg" alt="京东生鲜 云南杨梅 约500g 单果约15-20g 新鲜水果"/>
								</a>
							</div>
							<div class="p-name">
								<a href="###" title="京东生鲜 云南杨梅 约500g 单果约15-20g 新鲜水果">京东生鲜 云南杨梅 约500g 单果约15-20g 新鲜水果</a>
							</div>
							<div class="p-price"><strong class="J-p-4247507">￥25.90</strong></div>
						</li>
						<li class="fore5">
							<div class="p-img ac">
								<a href="###" title="晋州长城 黄冠梨 河北晋州 6个 单果约335g 新鲜水果">
									<img src="jdms/images/new5.jpg" alt="晋州长城 黄冠梨 河北晋州 6个 单果约335g 新鲜水果"/>
								</a>
							</div>
							<div class="p-name">
								<a href="###" title="晋州长城 黄冠梨 河北晋州 6个 单果约335g 新鲜水果">晋州长城 黄冠梨 河北晋州 6个 单果约335g 新鲜水果</a>
							</div>
							<div class="p-price"><strong class="J-p-4247507">￥29.90</strong></div>
						</li>
					</ul>
				</div>
			</div>
			<!-- 侧边栏底部广告 -->
			<div id="ad_market_1" class="m m-aside">
				<div class="adpic">
					<a href="###">
						<img src="jdms/images/adpic.jpg" alt="" width="211" height="261"/>
					</a>
				</div>
			</div>
		</div>
		<div class="detail">
			<div class="ETab" id="detail">
				<div class="tab-main large">
					<ul>
						<li class="current">商品介绍</li>
						<li>规格与包装</li>
						<li>售后保障</li>
						<li>商品评价<s>(4200+)</s></li>
						<li>本店好评商品</li>
					</ul>
					<div class="extra">
						<div class="item addcart-mini">
							<div class="J-addcart-mini EDropdown">
								<div class="inner">
									<div class="head"><a href="###" class="btn-primary">加入购物车</a></div>
									<div class="content">
										<div class="mini-product-info">
											<div class="p-img fl">
												<img src="jdms/images/extra.jpg" alt="" width="100" height="100" />
											</div>
											<div class="p-info lh">
												<div class="p-name">优选100 山东烟台福山大樱桃/国产车厘子 500g 果径26-28mm 新鲜水果</div>
												<div class="p-price"><strong class="J-p-4927562">￥34.90</strong>
													<span>X <span class="J-buy-num">1</span></span>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="tab-con">
					<div class="item">
						<div class="p-parameter">
							<ul id="parameter-brand" class="p-parameter-list">
								<li title="京东生鲜">
									品牌： <a href="###">京东生鲜</a>&nbsp;
									<a href="###" class="follow-brand btn-def"><b>♥</b>关注</a>
								</li>
							</ul>
							<ul class="parameter2 p-parameter-list">
								<li title="京东生鲜福山大樱桃/国产车厘子">商品名称：京东生鲜福山大樱桃/国产车厘子</li><li title="4927562">商品编号：4927562</li><li title="500.00g">商品毛重：500.00g</li><li title="山东烟台">商品产地：山东烟台</li><li title="1kg以下">重量：1kg以下</li><li title="美早">分类：美早</li><li title="26mm-28mm">果实直径：26mm-28mm</li><li title="简装">包装：简装</li><li title="国产">国产/进口：国产</li><li title="中国（山东）">原产地：中国（山东）</li>
							</ul>
							<p class="more-par">
								<a href="###" class="J-more-param">
									更多参数<s class="txt-arr">&gt;&gt;</s>
								</a>
							</p>
						</div>
						<div class="detail-content clearfix">
							<div class="detail-content-wrap">
								<div class="detail-content-item">
									<div id="activity_header">
										<div style="text-align: center;">
											<a href="###"><img src="jdms/images/detail.jpg" alt=""/></a>
										</div>
									</div>
									<div id="J-detail-content">
										<div style="text-align:center;">
											<li><img src="jdms/images/detail1.jpg" alt=""/></li>
											<li><img src="jdms/images/detail2.jpg" alt=""/></li>
											<li><img src="jdms/images/detail3.jpg" alt=""/></li>
											<li><img src="jdms/images/detail4.jpg" alt=""/></li>
											<li><img src="jdms/images/detail5.jpg" alt=""/></li>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="item hide">
						<div class="Ptable">
							<div class="Ptable-item">
								<h3>主体</h3>
								<dl>
									<dt>果实直径（mm）</dt><dd>26-28mm</dd>
									<dt>贮存条件</dt><dd>冷藏 0-4℃</dd>
									<dt>保质期</dt><dd>7天</dd>
									<dt>净含量</dt><dd>500g</dd>
									<dt>包装清单</dt><dd>500g 果径26-28mm</dd>
								</dl>
							</div>
						</div>
						<div class="package-list">
							<h3>包装清单</h3>
							<p>山东烟台福山大樱桃/国产车厘子 500g 果径26-28mm x1</p>
						</div>
					</div>
					<div class="item hide"></div>
					<div class="item hide"></div>
					<div class="item hide"></div>
				</div>
			</div>
			<div class="m m-content guarantee" id="guarantee">
				<div class="mc">
					<div class="item-detail item-detail-copyright">
						<div id="shouhou" style="line-height: 20px; font-size: 12px;">
							<strong>1、生鲜“优鲜赔”绿色通道</strong><br>
							<p>
								生鲜自营商品的破损或腐坏等问题，请在商品签收后48小时内提交“<strong>优鲜赔</strong>”申请，100分钟内审核通过后即享补偿，无需返回商品。<br>
							</p>
							<strong>2、专业生鲜客服团队—让您售后无忧</strong><br>
							<p>
								微信在线客服：JD-fresh<br>京东生鲜客服电话：400-606-3311<br>服务时间：09:00-21:00 <br>
							</p>
							<strong>3、京东自营商品开具机打发票或电子发票</strong><br>
							<p>
								如您发现商品有质量问题，请在收到商品之时起48小时内及时提交申请或联系客服处理。<br>
							</p>
							<strong>
								<a href="###"><font color="red">生鲜商品售后政策</font></a>
							</strong><br>
							<p>注：因厂家会在没有任何提前通知的情况下更改产品包装、产地或者一些附件，京东生鲜不能确保客户收到的货物与商城图片、产地、附件说明完全一致。只能确保为原厂正货！并且保证与当时市场上同样主流新品一致。若京东生鲜没有及时更新，请大家谅解！</p>
						</div>
						<div id="state">
							<strong>权利声明：</strong><br>京东上的所有商品信息、客户评价、商品咨询、网友讨论等内容，是京东重要的经营资源，未经许可，禁止非法转载使用。
                            <p>
                            	<b>注：</b>本站商品信息均来自于合作方，其真实性、准确性和合法性由信息拥有者（合作方）负责。本站不提供任何保证，并不承担任何法律责任。
                            </p><br>
                            <strong>价格说明：</strong><br>
                            <p><b>京东价：</b>京东价为商品的销售价，是您最终决定是否购买商品的依据。</p>
                            <p><b>划线价：</b>商品展示的划横线价格为参考价，该价格可能是品牌专柜标价、商品吊牌价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品在京东平台上曾经展示过的销售价；由于地区、时间的差异性和市场行情波动，品牌专柜标价、商品吊牌价等可能会与您购物时展示的不一致，该价格仅供您参考。</p>
                            <p><b>折扣：</b>如无特殊说明，折扣指销售商在原价、或划线价（如品牌专柜标价、商品吊牌价、厂商指导价、厂商建议零售价）等某一价格基础上计算出的优惠比例或优惠金额；如有疑问，您可在购买前联系销售商进行咨询。</p>
                            <p><b>异常问题：</b></p>
						</div>
					</div>
				</div>
			</div>
			<div class="m m-content comment" id="comment">
				<div class="mt"><h3>商品评价</h3></div>
				<div class="mc">
					<div class="comment-info J-comment-info">
						<div class="comment-percent">
							<strong class="percent-tit">好评度</strong>
							<div class="percent-con">93<span>%</span></div>
						</div>
						<div class="percent-info"><div class="notag">此商品暂时还没有买家印象哦~</div></div>
					</div>
					<div class="J-comments-list comments-list ETab">
						<div class="tab-main small">
							<ul class="filter-list">
								<li class="current" data-num="4900"><a href="###">全部评价<em>(4900+)</em></a></li>
								<li><a href="###" data-num="500">晒图<em>(500)</em></a></li>
								<li><a href="###" data-num="60">追评<em>(60+)</em></a></li>
								<li><a href="###" data-num="4600">好评<em>(4600+)</em></a></li>
								<li><a href="###" data-num="200">中评<em>(200+)</em></a></li>
								<li><a href="###" data-num="100">差评<em>(100+)</em></a></li>
								<li class="comm-curr-sku">
									<span><input type="checkbox" id="comm-curr-sku"></span><label for="comm-curr-sku">只看当前商品评价</label>
								</li>
							</ul>
							<div class="extra">
								<div class="sort-select J-sort-select">
									<div class="current"><span class="J-current-sortType">推荐排序</span><i></i></div>
									<div class="others">
										<div class="curr">
											<span class="J-current-sortType">推荐排序</span><i></i>
										</div>
										<ul>
											<li class="J-sortType-item">推荐排序</li>
											<li class="J-sortType-item">时间排序</li>
										</ul> 
									</div>
								</div>
							</div>
						</div>
						<div class="tab-con">
							<div id="comment-0" class="item">
								<div class="comment-item clearfix">
									<div class="user-column">
										<div class="user-info"><img src="jdms/images/user1.gif" width="25" height="25" alt="" class="avatar" />                j***8            </div>
										<div class="user-level"><span>铜牌会员</span></div>
									</div>
									<div class="comment-column J-comment-column">
										<div class="comment-star star5"></div>
										<p class="comment-con">好红好甜，以为寄过来会坏，那么热的天，还好放了冰袋，吃的时候还是凉凉的</p>
										<div class="pic-list J-pic-list clearfix">
											<a href="###" class="J-thumb-img" data-ind="0"><img src="jdms/images/thumb1.jpg" alt=""/></a>
											<a href="###" class="J-thumb-img" data-ind="1"><img src="jdms/images/thumb2.jpg" alt=""/></a>
											<a href="###" class="J-thumb-img" data-ind="1"><img src="jdms/images/thumb3.jpg" alt=""/></a>
											<a href="###" class="J-thumb-img" data-ind="1"><img src="jdms/images/thumb4.jpg" alt=""/></a>
										</div>
										<div class="comment-message">
											<div class="order-info">
												<span>500g 爆款装（26-28mm ）</span>
												<span>2017-05-31 22:52</span>
											</div>
											<div class="comment-op">
												<a href="###" class="J-report">举报</a>
												<a href="###" class="J-nice" title="44"><i class="sprite-praise"></i>44</a>
												<a href="###"><i class="sprite-comment"></i>26</a>
											</div>
										</div>
									</div>
								</div>
								<div class="comment-item clearfix">
									<div class="user-column">
										<div class="user-info"><img src="jdms/images/user2.jpg" width="25" height="25" alt="" class="avatar" />                月***嘴            </div>
										<div class="user-level"><span>金牌会员</span></div>
									</div>
									<div class="comment-column J-comment-column">
										<div class="comment-star star5"></div>
										<p class="comment-con">期待已久的大樱桃今晚终于到手了，感谢快递小哥这么晚还把货送到家！</p>
										<div class="pic-list J-pic-list clearfix">
											<a href="###" class="J-thumb-img" data-ind="0"><img src="jdms/images/thumb1_1.jpg" alt=""/></a>
											<a href="###" class="J-thumb-img" data-ind="1"><img src="jdms/images/thumb1_2.jpg" alt=""/></a>
											<a href="###" class="J-thumb-img" data-ind="2"><img src="jdms/images/thumb1_3.jpg" alt=""/></a>
										</div>
										<div class="comment-message">
											<div class="order-info">
												<span>500g 爆款装（26-28mm ）</span>
												<span>2017-05-31 22:14</span>
											</div>
											<div class="comment-op">
												<a href="###" class="J-report">举报</a>
												<a href="###" class="J-nice" title="18"><i class="sprite-praise"></i>18</a>
												<a href="###"><i class="sprite-comment"></i>2</a>
											</div>
										</div>
									</div>
								</div>
								<div class="comment-item clearfix">
									<div class="user-column">
										<div class="user-info"><img src="jdms/images/user3.gif" width="25" height="25" alt="" class="avatar" />                邱***霜            </div>
										<div class="user-level"><span style="color:#e1a10a">PLUS会员[试用]</span></div>
									</div>
									<div class="comment-column J-comment-column">
										<div class="comment-star star1"></div>
										<p class="comment-con">差评。不新鲜，三分之一是坏的或者即将要坏</p>
										<div class="pic-list J-pic-list clearfix">
										</div>
										<div class="comment-message">
											<div class="order-info">
												<span>500g 爆款装（26-28mm ）</span>
												<span>2017-06-12 10:58</span>
											</div>
											<div class="comment-op">
												<a href="###" class="J-report">举报</a>
												<a href="###" class="J-nice" title="0"><i class="sprite-praise"></i>0</a>
												<a href="###"><i class="sprite-comment"></i>0</a>
											</div>
										</div>
									</div>
								</div>
								<div class="comment-item clearfix">
									<div class="user-column">
										<div class="user-info"><img src="jdms/images/user4.jpg" width="25" height="25" alt="" class="avatar" />                风***古            </div>
										<div class="user-level"><span style="color:#666666">金牌会员</span></div>
									</div>
									<div class="comment-column J-comment-column">
										<div class="comment-star star5"></div>
										<p class="comment-con">买给父母吃的，说味道不错，包装挺用心的，还放了冰袋。物美价廉。车厘子真是不错的水果！</p>
										<div class="pic-list J-pic-list clearfix">
										</div>
										<div class="comment-message">
											<div class="order-info">
												<span>500g 爆款装（26-28mm ）</span>
												<span>2017-06-12 10:57</span>
											</div>
											<div class="comment-op">
												<a href="###" class="J-report">举报</a>
												<a href="###" class="J-nice" title="0"><i class="sprite-praise"></i>0</a>
												<a href="###"><i class="sprite-comment"></i>0</a>
											</div>
										</div>
									</div>
								</div>
								<div class="comment-item clearfix">
									<div class="user-column">
										<div class="user-info"><img src="jdms/images/user5.gif" width="25" height="25" alt="" class="avatar" />                j***b            </div>
										<div class="user-level"><span style="color:#666666">银牌会员</span></div>
									</div>
									<div class="comment-column J-comment-column">
										<div class="comment-star star5"></div>
										<p class="comment-con">不错哦……果实??描述的大颗、包装里面还附加冰袋保鲜、、尝了几个非常甜</p>
										<div class="pic-list J-pic-list clearfix">										</div>
										<div class="comment-message">
											<div class="order-info">
												<span>500g 爆款装（26-28mm ）</span>
												<span>2017-06-12 10:55</span>
											</div>
											<div class="comment-op">
												<a href="###" class="J-report">举报</a>
												<a href="###" class="J-nice" title="0"><i class="sprite-praise"></i>0</a>
												<a href="###"><i class="sprite-comment"></i>0</a>
											</div>
										</div>
									</div>
								</div>
								<div class="comment-item clearfix">
									<div class="user-column">
										<div class="user-info"><img src="jdms/images/user5.gif" width="25" height="25" alt="" class="avatar" />                i***x            </div>
										<div class="user-level"><span style="color:#666666">银牌会员</span></div>
									</div>
									<div class="comment-column J-comment-column">
										<div class="comment-star star5"></div>
										<p class="comment-con">可能是品种原因，甜度不明显，樱桃大小差异略明显。</p>
										<div class="pic-list J-pic-list clearfix"></div>
										<div class="tag-list"><span data-tid="10501217446">携带保温箱：携带</span></div>
										<div class="comment-message">
											<div class="order-info">
												<span>1.5kg 家庭装 (26-28mm)</span>
												<span>2017-06-12 10:54</span>
											</div>
											<div class="comment-op">
												<a href="###" class="J-report">举报</a>
												<a href="###" class="J-nice" title="0"><i class="sprite-praise"></i>0</a>
												<a href="###"><i class="sprite-comment"></i>0</a>
											</div>
										</div>
									</div>
								</div>
								<div class="comment-item clearfix">
									<div class="user-column">
										<div class="user-info"><img src="jdms/images/user3.gif" width="25" height="25" alt="" class="avatar" />                j***d            </div>
										<div class="user-level"><span style="color:#666666">金牌会员</span></div>
									</div>
									<div class="comment-column J-comment-column">
										<div class="comment-star star5"></div>
										<p class="comment-con">给朋友买的，朋友收到说不错口感很好</p>
										<div class="pic-list J-pic-list clearfix"></div>
										<div class="comment-message">
											<div class="order-info">
												<span>500g 爆款装（26-28mm ）</span>
												<span>2017-06-12 10:53</span>
											</div>
											<div class="comment-op">
												<a href="###" class="J-report">举报</a>
												<a href="###" class="J-nice" title="0"><i class="sprite-praise"></i>0</a>
												<a href="###"><i class="sprite-comment"></i>0</a>
											</div>
										</div>
									</div>
								</div>
								<div class="comment-item clearfix">
									<div class="user-column">
										<div class="user-info"><img src="jdms/images/user6.jpg" width="25" height="25" alt="" class="avatar" />                j***w            </div>
										<div class="user-level"><span style="color:#666666">金牌会员</span></div>
									</div>
									<div class="comment-column J-comment-column">
										<div class="comment-star star5"></div>
										<p class="comment-con">挺好吃，就是少点，有一个长毛的，第一回在京东上买水果，沈阳6.6号晚上下的单，10号到的，包装挺好，还有冰袋。</p>
										<div class="pic-list J-pic-list clearfix"></div>
										<div class="comment-message">
											<div class="order-info">
												<span>500g 爆款装（26-28mm ）</span>
												<span>2017-06-12 10:52</span>
											</div>
											<div class="comment-op">
												<a href="###" class="J-report">举报</a>
												<a href="###" class="J-nice" title="0"><i class="sprite-praise"></i>0</a>
												<a href="###"><i class="sprite-comment"></i>0</a>
											</div>
										</div>
									</div>
								</div>
								<div class="comment-item clearfix">
									<div class="user-column">
										<div class="user-info"><img src="jdms/images/user7.jpg" width="25" height="25" alt="" class="avatar" />                1***m            </div>
										<div class="user-level"><span style="color:#666666">金牌会员</span></div>
									</div>
									<div class="comment-column J-comment-column">
										<div class="comment-star star5"></div>
										<p class="comment-con">有好几个坏的………总体还行</p>
										<div class="pic-list J-pic-list clearfix"></div>
										<div class="comment-message">
											<div class="order-info">
												<span>500g 爆款装（26-28mm ）</span>
												<span>2017-06-12 10:50</span>
											</div>
											<div class="comment-op">
												<a href="###" class="J-report">举报</a>
												<a href="###" class="J-nice" title="0"><i class="sprite-praise"></i>0</a>
												<a href="###"><i class="sprite-comment"></i>0</a>
											</div>
										</div>
									</div>
								</div>
								<div class="comment-item clearfix">
									<div class="user-column">
										<div class="user-info"><img src="jdms/images/user8.gif" width="25" height="25" alt="" class="avatar" />                绿***可            </div>
										<div class="user-level"><span style="color:#666666">钻石会员</span></div>
									</div>
									<div class="comment-column J-comment-column">
										<div class="comment-star star5"></div>
										<p class="comment-con">真的很大，很红，好吃，不错</p>
										<div class="pic-list J-pic-list clearfix"></div>
										<div class="comment-message">
											<div class="order-info">
												<span>1.5kg 家庭装 (26-28mm)</span>
												<span>2017-06-12 10:48</span>
											</div>
											<div class="comment-op">
												<a href="###" class="J-report">举报</a>
												<a href="###" class="J-nice" title="0"><i class="sprite-praise"></i>0</a>
												<a href="###"><i class="sprite-comment"></i>0</a>
											</div>
										</div>
									</div>
								</div>
								<div class="com-table-footer">
									<div class="ui-page-wrap clearfix">
										<div class="ui-page">
											<a rel="2" class="ui-pager-prev" href="###" style="display: none;">上一页</a>
											<a href="###" class="ui-page-curr" rel="1">1</a>
											<a href="###" rel="2">2</a>
											<a href="###" rel="3">3</a>
											<a href="###" rel="4">4</a>
											<a href="###" rel="5">5</a>
											<a href="###" rel="6">6</a>
											<!-- <span>...</span> -->
											<a rel="2" class="ui-pager-next" href="###">下一页</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div id="askAnswer" class="m m-content askAnswer">
				<div class="mt"><h3>商品问答</h3></div>
				<div class="mc">
					<div class="ask-wrap">
						<i class="icon-dog"></i>
						<span>心中疑惑就问问买过此商品的同学吧~</span>
						<a href="#none" class="J-btn-ask btn-ask">我要提问</a>
					</div>
					<div class="askAnswer-list">
						<div class="askAnswer-item">
							<div class="ask">
								<i class="icon-ask">问</i>
								<div class="item-con"><p>到山东黄岛多久</p><span>j***b 2017-06-11 22:40</span></div>
							</div>
							<div class="answer">
								<i class="icon-answer">答</i>
								<div class="item-con">
									<ul class="answer-list">
										<li><p>要好几天</p><span class="item-info">z***2&nbsp;2017-06-12 10:23</span></li>
										<li class="more-answer"><p>要好几天</p><span class="item-info">z***2&nbsp;2017-06-12 10:23</span></li>
										<li class="more-answer"><p>6.6下单，三天采购，6.9下午发货。路上用了一天，速度很快</p><span class="item-info">j***1 2017-06-12 11:08</span></li>
										<li class="more-answer"><p>没货的时候等了两三天  现在应该好快了吧。。</p><span class="item-info">d***2 2017-06-12 10:09</span></li>
										<li class="more-answer"><p>我1号4号到！采摘，但是收到货个个均匀没坏的</p><span class="item-info">仔***咪 2017-06-12 08:28</span></li>
										<li class="more-answer"><p>没货得等挺久，有货深圳半日达</p><span class="item-info">a***t 2017-06-12 07:20</span></li>
										<li class="more-answer"><p>现在快，基本第二天发货。</p><span class="item-info">A***d 2017-06-12 00:43</span></li>
										<li class="more-answer"><p>这个要采摘，两天左右</p><span class="item-info">最***岛 2017-06-12 00:36</span></li>
									</ul>
									<div class="more">
										<a href="###" class="J-spread spread">继续查看<em class="J-rest-answer-count">7</em>条回答<i class="sprite-arrowDown"></i></a>
										<a href="###" class="J-retract retract">收起回答<i class="sprite-arrowUp"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="askAnswer-item">
							<div class="ask">
								<i class="icon-ask">问</i>
								<div class="item-con"><p>到东莞长安要多久</p><span>j***1 2017-06-09 23:53</span></div>
							</div>
							<div class="answer">
								<i class="icon-answer">答</i>
								<div class="item-con">
									<ul class="answer-list">
										<li><p>下单第三天就到了，坐标浙江。</p><span class="item-info">夜***兮 2017-06-10 08:10</span></li>
										<li class="more-answer"><p>要好几天</p><span class="item-info">z***2&nbsp;2017-06-12 10:23</span></li>
										<li class="more-answer"><p>6.6下单，三天采购，6.9下午发货。路上用了一天，速度很快</p><span class="item-info">j***1 2017-06-12 11:08</span></li>
										<li class="more-answer"><p>没货的时候等了两三天  现在应该好快了吧。。</p><span class="item-info">d***2 2017-06-12 10:09</span></li>
										<li class="more-answer"><p>我1号4号到！采摘，但是收到货个个均匀没坏的</p><span class="item-info">仔***咪 2017-06-12 08:28</span></li>
										<li class="more-answer"><p>没货得等挺久，有货深圳半日达</p><span class="item-info">a***t 2017-06-12 07:20</span></li>
										<li class="more-answer"><p>现在快，基本第二天发货。</p><span class="item-info">A***d 2017-06-12 00:43</span></li>
										<li class="more-answer"><p>这个要采摘，两天左右</p><span class="item-info">最***岛 2017-06-12 00:36</span></li>
									</ul>
									<div class="more">
										<a href="###" class="J-spread spread">继续查看<em class="J-rest-answer-count">7</em>条回答<i class="sprite-arrowDown"></i></a>
										<a href="###" class="J-retract retract">收起回答<i class="sprite-arrowUp"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="askAnswer-item">
							<div class="ask">
								<i class="icon-ask">问</i>
								<div class="item-con"><p>今天下单啥时候能到成都</p><span>风***y 2017-06-09 15:15</span></div>
							</div>
							<div class="answer">
								<i class="icon-answer">答</i>
								<div class="item-con">
									<ul class="answer-list">
										<li><p>樱桃很酸而且有一股药味，而且跟卖家沟通无果</p><span class="item-info">1***8 2017-06-10 20:16</span></li>
										<li class="more-answer"><p>要好几天</p><span class="item-info">z***2&nbsp;2017-06-12 10:23</span></li>
										<li class="more-answer"><p>6.6下单，三天采购，6.9下午发货。路上用了一天，速度很快</p><span class="item-info">j***1 2017-06-12 11:08</span></li>
										<li class="more-answer"><p>没货的时候等了两三天  现在应该好快了吧。。</p><span class="item-info">d***2 2017-06-12 10:09</span></li>
										<li class="more-answer"><p>我1号4号到！采摘，但是收到货个个均匀没坏的</p><span class="item-info">仔***咪 2017-06-12 08:28</span></li>
										<li class="more-answer"><p>没货得等挺久，有货深圳半日达</p><span class="item-info">a***t 2017-06-12 07:20</span></li>
										<li class="more-answer"><p>现在快，基本第二天发货。</p><span class="item-info">A***d 2017-06-12 00:43</span></li>
										<li class="more-answer"><p>这个要采摘，两天左右</p><span class="item-info">最***岛 2017-06-12 00:36</span></li>
									</ul>
									<div class="more">
										<a href="###" class="J-spread spread">继续查看<em class="J-rest-answer-count">7</em>条回答<i class="sprite-arrowDown"></i></a>
										<a href="###" class="J-retract retract">收起回答<i class="sprite-arrowUp"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="askAnswer-item">
							<div class="ask">
								<i class="icon-ask">问</i>
								<div class="item-con"><p>亲们，如实说，甜吗？</p><span>j***l 2017-06-09 11:53</span></div>
							</div>
							<div class="answer">
								<i class="icon-answer">答</i>
								<div class="item-con">
									<ul class="answer-list">
										<li><p>这个价格买到这么好的樱桃相当不错，很满意的，好吃。</p><span class="item-info">j***c 2017-06-09 22:19</span></li>
										<li class="more-answer"><p>要好几天</p><span class="item-info">z***2&nbsp;2017-06-12 10:23</span></li>
										<li class="more-answer"><p>6.6下单，三天采购，6.9下午发货。路上用了一天，速度很快</p><span class="item-info">j***1 2017-06-12 11:08</span></li>
										<li class="more-answer"><p>没货的时候等了两三天  现在应该好快了吧。。</p><span class="item-info">d***2 2017-06-12 10:09</span></li>
										<li class="more-answer"><p>我1号4号到！采摘，但是收到货个个均匀没坏的</p><span class="item-info">仔***咪 2017-06-12 08:28</span></li>
										<li class="more-answer"><p>没货得等挺久，有货深圳半日达</p><span class="item-info">a***t 2017-06-12 07:20</span></li>
										<li class="more-answer"><p>现在快，基本第二天发货。</p><span class="item-info">A***d 2017-06-12 00:43</span></li>
										<li class="more-answer"><p>这个要采摘，两天左右</p><span class="item-info">最***岛 2017-06-12 00:36</span></li>
									</ul>
									<div class="more">
										<a href="###" class="J-spread spread">继续查看<em class="J-rest-answer-count">7</em>条回答<i class="sprite-arrowDown"></i></a>
										<a href="###" class="J-retract retract">收起回答<i class="sprite-arrowUp"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="askAnswer-item">
							<div class="ask">
								<i class="icon-ask">问</i>
								<div class="item-con"><p>到四川眉山要多久啊</p><span>W***b 2017-06-09 00:30</span></div>
							</div>
							<div class="answer">
								<i class="icon-answer">答</i>
								<div class="item-con">
									<ul class="answer-list">
										<li><p>这个是用空运的，7号晚上发货在广东这边9号早上就能收到。</p><span class="item-info">j***0 2017-06-09 07:23</span></li>
										<li class="more-answer"><p>要好几天</p><span class="item-info">z***2&nbsp;2017-06-12 10:23</span></li>
										<li class="more-answer"><p>6.6下单，三天采购，6.9下午发货。路上用了一天，速度很快</p><span class="item-info">j***1 2017-06-12 11:08</span></li>
										<li class="more-answer"><p>没货的时候等了两三天  现在应该好快了吧。。</p><span class="item-info">d***2 2017-06-12 10:09</span></li>
										<li class="more-answer"><p>我1号4号到！采摘，但是收到货个个均匀没坏的</p><span class="item-info">仔***咪 2017-06-12 08:28</span></li>
										<li class="more-answer"><p>没货得等挺久，有货深圳半日达</p><span class="item-info">a***t 2017-06-12 07:20</span></li>
										<li class="more-answer"><p>现在快，基本第二天发货。</p><span class="item-info">A***d 2017-06-12 00:43</span></li>
										<li class="more-answer"><p>这个要采摘，两天左右</p><span class="item-info">最***岛 2017-06-12 00:36</span></li>
									</ul>
									<div class="more">
										<a href="###" class="J-spread spread">继续查看<em class="J-rest-answer-count">7</em>条回答<i class="sprite-arrowDown"></i></a>
										<a href="###" class="J-retract retract">收起回答<i class="sprite-arrowUp"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="askAnswer-item">
							<div class="ask">
								<i class="icon-ask">问</i>
								<div class="item-con"><p>是空运吗？多长时间到哈尔滨？</p><span>n***g 2017-06-08 07:58</span></div>
							</div>
							<div class="answer">
								<i class="icon-answer">答</i>
								<div class="item-con">
									<ul class="answer-list">
										<li><p>不好吃</p><span class="item-info">j***0 2017-06-09 07:23</span></li>
										<li class="more-answer"><p>要好几天</p><span class="item-info">2***8 2017-06-08 23:28</span></li>
										<li class="more-answer"><p>6.6下单，三天采购，6.9下午发货。路上用了一天，速度很快</p><span class="item-info">j***1 2017-06-12 11:08</span></li>
										<li class="more-answer"><p>没货的时候等了两三天  现在应该好快了吧。。</p><span class="item-info">d***2 2017-06-12 10:09</span></li>
										<li class="more-answer"><p>我1号4号到！采摘，但是收到货个个均匀没坏的</p><span class="item-info">仔***咪 2017-06-12 08:28</span></li>
										<li class="more-answer"><p>没货得等挺久，有货深圳半日达</p><span class="item-info">a***t 2017-06-12 07:20</span></li>
										<li class="more-answer"><p>现在快，基本第二天发货。</p><span class="item-info">A***d 2017-06-12 00:43</span></li>
										<li class="more-answer"><p>这个要采摘，两天左右</p><span class="item-info">最***岛 2017-06-12 00:36</span></li>
									</ul>
									<div class="more">
										<a href="###" class="J-spread spread">继续查看<em class="J-rest-answer-count">7</em>条回答<i class="sprite-arrowDown"></i></a>
										<a href="###" class="J-retract retract">收起回答<i class="sprite-arrowUp"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="askAnswer-item">
							<div class="ask">
								<i class="icon-ask">问</i>
								<div class="item-con"><p>怎麼還沒發貨啊</p><span>全***航 2017-06-07 17:09</span></div>
							</div>
							<div class="answer">
								<i class="icon-answer">答</i>
								<div class="item-con">
									<ul class="answer-list">
										<li><p>人家生意好，早就摘完了</p><span class="item-info">z***h 2017-06-08 14:18</span></li>
										<li class="more-answer"><p>要好几天</p><span class="item-info">2***8 2017-06-08 23:28</span></li>
										<li class="more-answer"><p>6.6下单，三天采购，6.9下午发货。路上用了一天，速度很快</p><span class="item-info">j***1 2017-06-12 11:08</span></li>
										<li class="more-answer"><p>没货的时候等了两三天  现在应该好快了吧。。</p><span class="item-info">d***2 2017-06-12 10:09</span></li>
										<li class="more-answer"><p>我1号4号到！采摘，但是收到货个个均匀没坏的</p><span class="item-info">仔***咪 2017-06-12 08:28</span></li>
										<li class="more-answer"><p>没货得等挺久，有货深圳半日达</p><span class="item-info">a***t 2017-06-12 07:20</span></li>
										<li class="more-answer"><p>现在快，基本第二天发货。</p><span class="item-info">A***d 2017-06-12 00:43</span></li>
										<li class="more-answer"><p>这个要采摘，两天左右</p><span class="item-info">最***岛 2017-06-12 00:36</span></li>
									</ul>
									<div class="more">
										<a href="###" class="J-spread spread">继续查看<em class="J-rest-answer-count">7</em>条回答<i class="sprite-arrowDown"></i></a>
										<a href="###" class="J-retract retract">收起回答<i class="sprite-arrowUp"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="askAnswer-item">
							<div class="ask">
								<i class="icon-ask">问</i>
								<div class="item-con"><p>你是谁呀？客服</p><span>j***s 2017-06-07 16:14</span></div>
							</div>
							<div class="answer">
								<i class="icon-answer">答</i>
								<div class="item-con">
									<ul class="answer-list">
										<li><p>我是客服？嘻嘻，你找对人了。。。</p><span class="item-info">尼***业 2017-06-07 21:40</span></li>
										<li class="more-answer"><p>要好几天</p><span class="item-info">2***8 2017-06-08 23:28</span></li>
										<li class="more-answer"><p>6.6下单，三天采购，6.9下午发货。路上用了一天，速度很快</p><span class="item-info">j***1 2017-06-12 11:08</span></li>
										<li class="more-answer"><p>没货的时候等了两三天  现在应该好快了吧。。</p><span class="item-info">d***2 2017-06-12 10:09</span></li>
										<li class="more-answer"><p>我1号4号到！采摘，但是收到货个个均匀没坏的</p><span class="item-info">仔***咪 2017-06-12 08:28</span></li>
										<li class="more-answer"><p>没货得等挺久，有货深圳半日达</p><span class="item-info">a***t 2017-06-12 07:20</span></li>
										<li class="more-answer"><p>现在快，基本第二天发货。</p><span class="item-info">A***d 2017-06-12 00:43</span></li>
										<li class="more-answer"><p>这个要采摘，两天左右</p><span class="item-info">最***岛 2017-06-12 00:36</span></li>
									</ul>
									<div class="more">
										<a href="###" class="J-spread spread">继续查看<em class="J-rest-answer-count">7</em>条回答<i class="sprite-arrowDown"></i></a>
										<a href="###" class="J-retract retract">收起回答<i class="sprite-arrowUp"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="askAnswer-item">
							<div class="ask">
								<i class="icon-ask">问</i>
								<div class="item-con"><p>3号下单，7号还在采购中呢</p><span>j***s 2017-06-07 16:13</span></div>
							</div>
							<div class="answer">
								<i class="icon-answer">答</i>
								<div class="item-con">
									<ul class="answer-list">
										<li><p>我29号下单，六月一号收到了</p><span class="item-info">王***i 2017-06-08 06:14</span></li>
										<li class="more-answer"><p>要好几天</p><span class="item-info">2***8 2017-06-08 23:28</span></li>
										<li class="more-answer"><p>6.6下单，三天采购，6.9下午发货。路上用了一天，速度很快</p><span class="item-info">j***1 2017-06-12 11:08</span></li>
										<li class="more-answer"><p>没货的时候等了两三天  现在应该好快了吧。。</p><span class="item-info">d***2 2017-06-12 10:09</span></li>
										<li class="more-answer"><p>我1号4号到！采摘，但是收到货个个均匀没坏的</p><span class="item-info">仔***咪 2017-06-12 08:28</span></li>
										<li class="more-answer"><p>没货得等挺久，有货深圳半日达</p><span class="item-info">a***t 2017-06-12 07:20</span></li>
										<li class="more-answer"><p>现在快，基本第二天发货。</p><span class="item-info">A***d 2017-06-12 00:43</span></li>
										<li class="more-answer"><p>这个要采摘，两天左右</p><span class="item-info">最***岛 2017-06-12 00:36</span></li>
									</ul>
									<div class="more">
										<a href="###" class="J-spread spread">继续查看<em class="J-rest-answer-count">7</em>条回答<i class="sprite-arrowDown"></i></a>
										<a href="###" class="J-retract retract">收起回答<i class="sprite-arrowUp"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="askAnswer-item">
							<div class="ask">
								<i class="icon-ask">问</i>
								<div class="item-con"><p>速度慢，3号买的现在还在采购中</p><span>j***s 2017-06-07 16:08</span></div>
							</div>
							<div class="answer">
								<i class="icon-answer">答</i>
								<div class="item-con">
									<ul class="answer-list">
										<li><p>速度也还可以呀，我一号订的5号就到了，只要采购好了，第二天基本都会到货的。而且特别的新鲜。颗粒又大。👍👍👍</p><span class="item-info">爱***玲 2017-06-07 16:18</span></li>
										<li class="more-answer"><p>要好几天</p><span class="item-info">2***8 2017-06-08 23:28</span></li>
										<li class="more-answer"><p>6.6下单，三天采购，6.9下午发货。路上用了一天，速度很快</p><span class="item-info">j***1 2017-06-12 11:08</span></li>
										<li class="more-answer"><p>没货的时候等了两三天  现在应该好快了吧。。</p><span class="item-info">d***2 2017-06-12 10:09</span></li>
										<li class="more-answer"><p>我1号4号到！采摘，但是收到货个个均匀没坏的</p><span class="item-info">仔***咪 2017-06-12 08:28</span></li>
										<li class="more-answer"><p>没货得等挺久，有货深圳半日达</p><span class="item-info">a***t 2017-06-12 07:20</span></li>
										<li class="more-answer"><p>现在快，基本第二天发货。</p><span class="item-info">A***d 2017-06-12 00:43</span></li>
										<li class="more-answer"><p>这个要采摘，两天左右</p><span class="item-info">最***岛 2017-06-12 00:36</span></li>
									</ul>
									<div class="more">
										<a href="###" class="J-spread spread">继续查看<em class="J-rest-answer-count">7</em>条回答<i class="sprite-arrowDown"></i></a>
										<a href="###" class="J-retract retract">收起回答<i class="sprite-arrowUp"></i></a>
									</div>
								</div>
							</div>
						</div>
						<div class="askAnswer-tips">
							<i class="sprite-tips"></i>
							<p>温馨提示：因厂家更改产品包装、产地或者更换随机附件等没有任何提前通知，且每位咨询者购买情况、提问时间等不同，为此以下回复仅对提问者3天内有效，其他网友仅供参考~若由此给您带来不便请多多谅解，谢谢~</p>
						</div>
						<div class="ui-page-wrap clearfix">
							<div class="ui-page">
								<a rel="2" class="ui-pager-prev" href="###" style="display: none;">上一页</a>
								<a rel="1" class="ui-page-curr" href="###" data-current="true">1</a>
								<a rel="2" href="###">2</a>
								<a rel="3" href="###">3</a>
								<a rel="4" href="###">4</a>
								<a rel="5" href="###">5</a>
								<a rel="2" class="ui-pager-next" href="###">下一页</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="m m-content shop-similar-promotion  img-square" id="shop-similar-promotion">
				<div class="mt"><h3 class="fl">本店好评商品</h3></div>
				<div class="mc">
					<ul class="item-plist-2 shop-similar-promo-list clearfix masonry">
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果">
										<img src="jdms/images/similar1.jpg" alt="佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果">佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥29.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="优选100 妃子笑荔枝 1kg装 新鲜水果">
										<img src="jdms/images/similar2.jpg" alt="优选100 妃子笑荔枝 1kg装 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="优选100 妃子笑荔枝 1kg装 新鲜水果">优选100 妃子笑荔枝 1kg装 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥23.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="泰国进口 金枕头榴莲 1个 约3kg 新鲜水果">
										<img src="jdms/images/similar3.jpg" alt="泰国进口 金枕头榴莲 1个 约3kg 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="泰国进口 金枕头榴莲 1个 约3kg 新鲜水果">泰国进口 金枕头榴莲 1个 约3kg 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥114.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick" style="margin-right: 0;">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果">
										<img src="jdms/images/similar4.jpg" alt="佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果">佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥25.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="兴业源 水果大连油桃6粒(单果重量75-100g)净重约500g 新鲜水果">
										<img src="jdms/images/similar5.jpg" alt="兴业源 水果大连油桃6粒(单果重量75-100g)净重约500g 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="兴业源 水果大连油桃6粒(单果重量75-100g)净重约500g 新鲜水果">兴业源 水果大连油桃6粒(单果重量75-100g)净重约500g 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥19.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="佳农 菲律宾菠萝 2个装 单果1kg以上 新鲜水果">
										<img src="jdms/images/similar6.jpg" alt="佳农 菲律宾菠萝 2个装 单果1kg以上 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="佳农 菲律宾菠萝 2个装 单果1kg以上 新鲜水果">佳农 菲律宾菠萝 2个装 单果1kg以上 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥29.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="珍享 国产蓝莓 2盒装 约125g/盒 新鲜水果">
										<img src="jdms/images/similar7.jpg" alt="珍享 国产蓝莓 2盒装 约125g/盒 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="珍享 国产蓝莓 2盒装 约125g/盒 新鲜水果">珍享 国产蓝莓 2盒装 约125g/盒 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥19.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick" style="margin-right: 0;">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="鲜果使者 进口埃及橙 8个装 1.5kg 单果约200-220g 新鲜水果">
										<img src="jdms/images/similar8.jpg" alt="鲜果使者 进口埃及橙 8个装 1.5kg 单果约200-220g 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="鲜果使者 进口埃及橙 8个装 1.5kg 单果约200-220g 新鲜水果">鲜果使者 进口埃及橙 8个装 1.5kg 单果约200-220g 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥26.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果">
										<img src="jdms/images/similar1.jpg" alt="佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果">佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥29.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="优选100 妃子笑荔枝 1kg装 新鲜水果">
										<img src="jdms/images/similar2.jpg" alt="优选100 妃子笑荔枝 1kg装 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="优选100 妃子笑荔枝 1kg装 新鲜水果">优选100 妃子笑荔枝 1kg装 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥23.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="泰国进口 金枕头榴莲 1个 约3kg 新鲜水果">
										<img src="jdms/images/similar3.jpg" alt="泰国进口 金枕头榴莲 1个 约3kg 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="泰国进口 金枕头榴莲 1个 约3kg 新鲜水果">泰国进口 金枕头榴莲 1个 约3kg 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥114.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick" style="margin-right: 0;">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果">
										<img src="jdms/images/similar4.jpg" alt="佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果">佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥25.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="兴业源 水果大连油桃6粒(单果重量75-100g)净重约500g 新鲜水果">
										<img src="jdms/images/similar5.jpg" alt="兴业源 水果大连油桃6粒(单果重量75-100g)净重约500g 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="兴业源 水果大连油桃6粒(单果重量75-100g)净重约500g 新鲜水果">兴业源 水果大连油桃6粒(单果重量75-100g)净重约500g 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥19.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="佳农 菲律宾菠萝 2个装 单果1kg以上 新鲜水果">
										<img src="jdms/images/similar6.jpg" alt="佳农 菲律宾菠萝 2个装 单果1kg以上 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="佳农 菲律宾菠萝 2个装 单果1kg以上 新鲜水果">佳农 菲律宾菠萝 2个装 单果1kg以上 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥29.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="珍享 国产蓝莓 2盒装 约125g/盒 新鲜水果">
										<img src="jdms/images/similar7.jpg" alt="珍享 国产蓝莓 2盒装 约125g/盒 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="珍享 国产蓝莓 2盒装 约125g/盒 新鲜水果">珍享 国产蓝莓 2盒装 约125g/盒 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥19.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick" style="margin-right: 0;">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="鲜果使者 进口埃及橙 8个装 1.5kg 单果约200-220g 新鲜水果">
										<img src="jdms/images/similar8.jpg" alt="鲜果使者 进口埃及橙 8个装 1.5kg 单果约200-220g 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="鲜果使者 进口埃及橙 8个装 1.5kg 单果约200-220g 新鲜水果">鲜果使者 进口埃及橙 8个装 1.5kg 单果约200-220g 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥26.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果">
										<img src="jdms/images/similar1.jpg" alt="佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果">佳农 越南进口红心火龙果 3个装 中果 总重约1.1kg 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥29.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="优选100 妃子笑荔枝 1kg装 新鲜水果">
										<img src="jdms/images/similar2.jpg" alt="优选100 妃子笑荔枝 1kg装 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="优选100 妃子笑荔枝 1kg装 新鲜水果">优选100 妃子笑荔枝 1kg装 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥23.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="泰国进口 金枕头榴莲 1个 约3kg 新鲜水果">
										<img src="jdms/images/similar3.jpg" alt="泰国进口 金枕头榴莲 1个 约3kg 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="泰国进口 金枕头榴莲 1个 约3kg 新鲜水果">泰国进口 金枕头榴莲 1个 约3kg 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥114.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
						<li class="item masonry-brick" style="margin-right: 0;">
							<div class="pro-wrap">
								<div class="p-img">
									<a title="佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果">
										<img src="jdms/images/similar4.jpg" alt="佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果">
									</a>
								</div>
								<div class="p-name"><a href="###" title="佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果">佳多果 西州蜜(哈密瓜)1粒 1.5-2kg 新鲜水果</a></div>
								<div class="p-price">
									<a href="###" class="p-focus">
										<i class="i-focus"></i><em class="text">关注</em>
									</a>
									<strong class="price"><span class="J-p-3712995">￥25.90</span></strong>
								</div>
								<div class="p-comment"><div class="inner" title=""></div></div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 猜我喜欢 -->
	<div id="footmark" class="w footmark clearfix">
		<div class="m m-content may-like">
			<div class="mt clearfix">
				<h3 class="title">猜你喜欢</h3>
				<div class="extra">
					<div class="item">
						<span class="change"><b>1</b>/1</span>
					</div>
				</div>
		    </div>
		    <div class="mc">
		    	<!-- <a class="guess-ctl guess-prev guess-prev-disable" id="guess-prev"></a>
		    	<a class="guess-ctl guess-next" id="guess-next"></a> -->
		    	<div id="guess-scroll">
		    		<ul class="may-like-list clearfix">
		    			<li>
		    				<div class="p-img">
		    					<a href="###" title="黑珍珠车厘子 烟台大樱桃26mm大果 车厘子  新鲜水果 包邮航空">
		    						<img src="jdms/images/like1.jpg" alt="黑珍珠车厘子 烟台大樱桃26mm大果 车厘子  新鲜水果 包邮航空" />
		    					</a>
		    					<div class="p-name">
		    						<a href="###" title="黑珍珠车厘子 烟台大樱桃26mm大果 车厘子  新鲜水果 包邮航空">黑珍珠车厘子 烟台大樱桃26mm大果 车厘子  新鲜水果 包邮航空</a>
		    					</div>
		    				</div>
		    				<div class="p-price J-p-11976658968">￥89.00</div>
		    			</li>
		    			<li>
		    				<div class="p-img">
		    					<a href="###" title="品胜爱充1A/2A手机充电器充电头 适用于苹果7iPhone6 6s7 5S通用充电线插头 品胜爱充1A充电器白色">
		    						<img src="jdms/images/like2.jpg" alt="品胜爱充1A/2A手机充电器充电头 适用于苹果7iPhone6 6s7 5S通用充电线插头 品胜爱充1A充电器白色" />
		    					</a>
		    					<div class="p-name">
		    						<a href="###" title="品胜爱充1A/2A手机充电器充电头 适用于苹果7iPhone6 6s7 5S通用充电线插头 品胜爱充1A充电器白色">品胜爱充1A/2A手机充电器充电头 适用于苹果7iPhone6 6s7 5S通用充电线插头 品胜爱充1A充电器白色</a>
		    					</div>
		    				</div>
		    				<div class="p-price J-p-11976658968">￥19.90</div>
		    			</li>
		    			<li>
		    				<div class="p-img">
		    					<a href="###" title="【金普馆】大连新鲜大樱桃水果 26-28mm车厘子 1kg装">
		    						<img src="jdms/images/like3.jpg" alt="【金普馆】大连新鲜大樱桃水果 26-28mm车厘子 1kg装" />
		    					</a>
		    					<div class="p-name">
		    						<a href="###" title="【金普馆】大连新鲜大樱桃水果 26-28mm车厘子 1kg装">【金普馆】大连新鲜大樱桃水果 26-28mm车厘子 1kg装</a>
		    					</div>
		    				</div>
		    				<div class="p-price J-p-11976658968">￥59.90</div>
		    			</li>
		    			<li>
		    				<div class="p-img">
		    					<a href="###" title="品胜 爱充1A新版 移动电源/手机充电器/USB电源适配器/单口充电插头（不含数据线）苹果白">
		    						<img src="jdms/images/like4.jpg" alt="品胜 爱充1A新版 移动电源/手机充电器/USB电源适配器/单口充电插头（不含数据线）苹果白" />
		    					</a>
		    					<div class="p-name">
		    						<a href="###" title="品胜 爱充1A新版 移动电源/手机充电器/USB电源适配器/单口充电插头（不含数据线）苹果白">品胜 爱充1A新版 移动电源/手机充电器/USB电源适配器/单口充电插头（不含数据线）苹果白</a>
		    					</div>
		    				</div>
		    				<div class="p-price J-p-11976658968">￥19.90</div>
		    			</li>
		    			<li>
		    				<div class="p-img">
		    					<a href="###" title="鲜东方 烟台特产山东大樱桃黑珍珠3斤">
		    						<img src="jdms/images/like5.jpg" alt="鲜东方 烟台特产山东大樱桃黑珍珠3斤" />
		    					</a>
		    					<div class="p-name">
		    						<a href="###" title="鲜东方 烟台特产山东大樱桃黑珍珠3斤">鲜东方 烟台特产山东大樱桃黑珍珠3斤</a>
		    					</div>
		    				</div>
		    				<div class="p-price J-p-11976658968">￥108.00</div>
		    			</li>
		    			<li>
		    				<div class="p-img">
		    					<a href="###" title="品胜 苹果数据/充电线 1.2米 白色 适用于苹果手机5/5s/SE/6/6s/Plus/7/7Plus 平板iPad4/5/Air/Pro/mini">
		    						<img src="jdms/images/like6.jpg" alt="品胜 苹果数据/充电线 1.2米 白色 适用于苹果手机5/5s/SE/6/6s/Plus/7/7Plus 平板iPad4/5/Air/Pro/mini" />
		    					</a>
		    					<div class="p-name">
		    						<a href="###" title="品胜 苹果数据/充电线 1.2米 白色 适用于苹果手机5/5s/SE/6/6s/Plus/7/7Plus 平板iPad4/5/Air/Pro/mini">品胜 苹果数据/充电线 1.2米 白色 适用于苹果手机5/5s/SE/6/6s/Plus/7/7Plus 平板iPad4/5/Air/Pro/mini</a>
		    					</div>
		    				</div>
		    				<div class="p-price J-p-11976658968">￥17.80</div>
		    			</li>
		    		</ul>
		    	</div>
		    </div>
		</div>
		<div class="m m-content recent-view">
			<div class="mt">
				<h3 class="title">我的足迹</h3>
				<div class="extra">
					<div class="item"><a href="###">更多浏览记录</a></div>
				</div>
			</div>
			<div class="mc">
				<ul class="recent-view-list clearfix">
					<li>
						<div class="p-img">
						<a href="###" title="华为(HUAWEI) Mate8 4G手机 双卡双待 月光银 移动版(3GRAM+32GROM)">
							<img src="jdms/images/foot1.jpg" alt="华为(HUAWEI) Mate8 4G手机 双卡双待 月光银 移动版(3GRAM+32GROM)"/>
						</a>
						</div><div class="p-price J-p-10072697027">￥2466.00</div>
					</li>
					<li>
						<div class="p-img">
						<a href="###" title="施华蔻（Schwarzkopf）多效修护19活幻滋养润发液150ML（修护受损发质重塑发芯）">
							<img src="jdms/images/foot2.jpg" alt="施华蔻（Schwarzkopf）多效修护19活幻滋养润发液150ML（修护受损发质重塑发芯）"/>
						</a>
						</div><div class="p-price J-p-10072697027">暂无报价</div>
					</li>
					<li>
						<div class="p-img">
						<a href="###" title="香织恋蝶  浪漫爱心熊熊猫抱枕大狗熊抱心熊泰迪熊抱抱熊毛绒玩具布娃娃公仔玩偶 粉红色 1米">
							<img src="jdms/images/foot3.jpg" alt="香织恋蝶  浪漫爱心熊熊猫抱枕大狗熊抱心熊泰迪熊抱抱熊毛绒玩具布娃娃公仔玩偶 粉红色 1米"/>
						</a>
						</div><div class="p-price J-p-10072697027">￥98.00</div>
					</li>
					<li>
						<div class="p-img">
						<a href="###" title="礼意久久【DIY刻字】生日礼物 女生玫瑰花带底座 新年情人节礼物玫瑰花礼物送女友 创意礼品 红色玫瑰定制">
							<img src="jdms/images/foot4.jpg" alt="礼意久久【DIY刻字】生日礼物 女生玫瑰花带底座 新年情人节礼物玫瑰花礼物送女友 创意礼品 红色玫瑰定制"/>
						</a>
						</div><div class="p-price J-p-10072697027">暂无报价</div>
					</li>
					<li>
						<div class="p-img">
						<a href="###" title="特斯黛新款时尚女包 手提单肩包印花包二件套子母包 黑色174">
							<img src="jdms/images/foot5.jpg" alt="特斯黛新款时尚女包 手提单肩包印花包二件套子母包 黑色174"/>
						</a>
						</div><div class="p-price J-p-10072697027">暂无报价</div>
					</li>
				</ul>
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
					<a rel="nofollow" href="###">关于我们</a>|
					<a rel="nofollow" href="###">联系我们</a>|
					<a rel="nofollow" href="###">联系客服</a>|
					<a rel="nofollow" href="###">合作招商</a>|
					<a rel="nofollow" href="###">商家帮助</a>|
					<a rel="nofollow" href="###">营销中心</a>|
					<a rel="nofollow" href="###">手机京东</a>|
					<a rel="nofollow" href="###">友情链接</a>|
					<a rel="nofollow" href="###">销售联盟</a>|
					<a rel="nofollow" href="###">京东社区</a>|
					<a rel="nofollow" href="###">风险监测</a>|
					<a rel="nofollow" href="###">隐私政策</a>|
					<a rel="nofollow" href="###">京东公益</a>|
					<a rel="nofollow" href="###">English Site</a>|
					<a rel="nofollow" href="###">Contact Us</a>
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
					<a href="###">经营证照</a><br>京东旗下网站：<a href="###">京东钱包</a>
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
	<!-- 登录框 -->
	<div class="ui-dialog">
		<div class="ui-dialog-title">
			<span>您尚未登录</span>
		</div>
		<div class="ui-dialog-content">
			<div class="login-form">
				<div class="login-tab login-tab-r">
					<a href="###">
            			账户登录
        			</a>
				</div>
				<div class="login-box">
					<div class="mt tab-h"></div>
					<div class="msg-wrap">
						<div class="msg-error hide"><b></b></div>
					</div>
					<div class="mc">
						<div class="mcform">
							<div class="mcitem item-fore1">
									<label for="loginname" class="login-label name-label"></label>
									<input id="loginname" type="text" class="itxt" name="loginname" tabindex="1" autocomplete="off" placeholder="邮箱/用户名/已验证手机">
									<span class="clear-btn"></span>
							</div>
							<div class="mcitem item-fore2">
									<label for="loginname" class="login-label pwd-label"></label>
									<!-- <label id="sloginpwd"></label> -->
									<input id="loginname" type="password" class="itxt itxt-error" name="nloginpwd" tabindex="2" autocomplete="off" placeholder="密码">
									<span class="clear-btn"></span>
									<span class="capslock"><b></b>大小写锁定已打开</span>
							</div>
							<div class="mcitem item-vcode item-fore3  hide " id="o-authcode">
									<input id="authcode" type="text" class="itxt itxt02" name="authcode" tabindex="3">
									<img id="JD_Verification1" class="verify-code" src="" alt="">
									<a href="###">看不清换一张</a>
							</div>
							<div class="mcitem item-fore4">
								<div class="safe">
									<span></span>
									<span class="forget-pw-safe">
										<a href="###" class="">忘记密码</a>
									</span>
								</div>
							</div>
							<div class="mcitem item-fore5" style="visibility: visible;">
								<div class="login-btn">
									<a href="###" class="btn-img btn-entry" id="loginsubmit">登&nbsp;&nbsp;&nbsp;&nbsp;录</a>
								</div>
							</div>

						<div class="coagent" id="kbCoagent">
							<ul>
								<li>
									<b></b>
									<a href="###" class="pdl">
										<b class="QQ-icon"></b>
										<span>QQ</span>
									</a>
									<span class="line">|</span>
								</li>
								<li>
									<a href="###" class="pdl">
										<b class="weixin-icon"></b>
										<span>微信</span>
									</a>
								</li>
								<li class="extra-r">
									<div>
										<div class="regist-link">
											<a href="###">
												<b></b>立即注册
											</a>
										</div>
									</div>
								</li>
							</ul>
						</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a class="ui-dialog-close" title="关闭">
			<span class="ui-icon ui-icon-delete"></span>
		</a>
	</div>
	<!-- 遮罩层 -->
	<div class="ui-mask"></div>
</body> 
</html>