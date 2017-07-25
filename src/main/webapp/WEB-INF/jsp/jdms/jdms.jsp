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
	<title>京东秒杀</title>
	<link rel="stylesheet" href="jdms/css/reset.css"/>
	<link rel="stylesheet" href="jdms/css/jdms.css"/>
	<script src="assets/js/jquery-2.1.0.js"></script>
	<script src="jdms/js/jdms.js"></script>
</head>
<body>
	<!-- 导航栏:header -->
	<div class="header clearfix">
		<div class="main clearfix">
			<ul class="headerlist clearfix">
				<li id="fore1">
					<div class="mobile_text dt" id="mobile_jd">手机京东</div>
					<!-- hover弹出的二维码系列 -->
					<div class="mobile_pop" id="mobile_pop">
						<div class="mobile_pop_item">
							<div class="mobile_pop_qrcode">
								<i class="mobile_pop_img1"></i>
							</div>
							<div class="mobile_pop_info">
								<h5><a href="###">手机京东</a></h5>
								<p class="mobile_pop_value">新人专享188元大<br/>礼包</p>
								<p class="mobile_pop_device">
									<a href="###" class="mobile_pop_device_ios"></a>
									<a href="###" class="mobile_pop_device_and mobile_pop_device_ios"></a>
									<a href="###" class="mobile_pop_device_pad mobile_pop_device_ios"></a>
								</p>
							</div> 
						</div>
						<div class="mobile_pop_item">
							<div class="mobile_pop_qrcode">
								<i class="mobile_pop_img2 mobile_pop_img1"></i>
							</div>
							<div class="mobile_pop_info">
								<h5><a href="###">关注京东微信</a></h5>
								<p class="mobile_pop_value">微信扫一扫关注<br/>新粉最高180元<br/>惊喜大礼包</p>
							</div> 
						</div>
						<div class="mobile_pop_item">
							<div class="mobile_pop_qrcode">
								<i class="mobile_pop_img3 mobile_pop_img1"></i>
							</div>
							<div class="mobile_pop_info">
								<h5><a href="###">京东金融客户端</a></h5>
								<p class="mobile_pop_value">新人专享128元大<br/>礼包</p>
								<p class="mobile_pop_device">
									<a href="###" class="mobile_pop_device_ios"></a>
									<a href="###" class="mobile_pop_device_and mobile_pop_device_ios"></a>
								</p>
							</div> 
						</div>
					</div>
				</li>
				<li class="bar"></li>
				<li class="fore2">
					<div class="dt1 dt" id="siteMap"><i class="downicon"></i>网站导航</div>
					<div class="dropdown_layer" id="siteMap_list">
						<dl class="fore21 fore">
							<dt>特色主题</dt>
							<dd>
								<div class="item"><a href="###">品牌头条</a></div>
								<div class="item"><a href="###">发现好货</a></div>
								<div class="item"><a href="###">京东预售</a></div>
								<div class="item"><a href="###">京东金融</a></div>
								<div class="item"><a href="###">京东试用</a></div>
								<div class="item"><a href="###">港澳售</a></div>
								<div class="item"><a href="###">优惠券</a></div>
								<div class="item"><a href="###">闪购</a></div>
								<div class="item"><a href="###">京东会员</a></div>
								<div class="item"><a href="###">装机大师</a></div>
								<div class="item"><a href="###">秒杀</a></div>
								<div class="item"><a href="###">定期送</a></div>
								<div class="item"><a href="###">新奇特</a></div>
								<div class="item"><a href="###">企业金融服务</a></div>
								<div class="item"><a href="###">礼品购</a></div>
								<div class="item"><a href="###">智能馆</a></div>
								<div class="item"><a href="###">0元测评</a></div>
								<div class="item"><a href="###">ln货推荐</a></div>
								<div class="item"><a href="###">北京老字号</a></div>
								<div class="item"><a href="###">买什么</a></div>
							</dd>
						</dl>
						<dl class="fore22 fore">
							<dt>行业频道</dt>
							<dd>
								<div class="item"><a href="###">服装城</a></div>
								<div class="item"><a href="###">家用电器</a></div>
								<div class="item"><a href="###">电脑办公</a></div>
								<div class="item"><a href="###">手机</a></div>
								<div class="item"><a href="###">美妆</a></div>
								<div class="item"><a href="###">食品</a></div>
								<div class="item"><a href="###">智能数码</a></div>
								<div class="item"><a href="###">母婴</a></div>
								<div class="item"><a href="###">家装城</a></div>
								<div class="item"><a href="###">运动户外</a></div>
								<div class="item"><a href="###">整车</a></div>
								<div class="item"><a href="###">图书</a></div>
								<div class="item"><a href="###">农资频道</a></div>
								<div class="item"><a href="###">京东智能</a></div>
								<div class="item"><a href="###">玩3C</a></div>
							</dd>
						</dl>
						<dl class="fore23 fore">
							<dt>生活服务</dt>
							<dd>
								<div class="item"><a href="###">京东众筹</a></div>
								<div class="item"><a href="###">白条</a></div>
								<div class="item"><a href="###">京东金融App</a></div>
								<div class="item"><a href="###">京东小金库</a></div>
								<div class="item"><a href="###">理财</a></div>
								<div class="item"><a href="###">话费</a></div>
								<div class="item"><a href="###">旅游</a></div>
								<div class="item"><a href="###">彩票</a></div>
								<div class="item"><a href="###">游戏</a></div>
								<div class="item"><a href="###">机票酒店</a></div>
								<div class="item"><a href="###">电影票</a></div>
								<div class="item"><a href="###">水电煤</a></div>
								<div class="item"><a href="###">京东到家</a></div>
								<div class="item"><a href="###">京东微联</a></div>
								<div class="item"><a href="###">京东众测</a></div>
							</dd>
						</dl>
						<dl class="fore24 fore">
							<dt>更多精选</dt>
							<dd>
								<div class="item"><a href="###">京东社区</a></div>
								<div class="item"><a href="###">京东通信</a></div>
								<div class="item"><a href="###">在线读书</a></div>
								<div class="item"><a href="###">京东E卡</a></div>
								<div class="item"><a href="###">智能社区</a></div>
								<div class="item"><a href="###">游戏社区</a></div>
								<div class="item"><a href="###">京友邦</a></div>
								<div class="item"><a href="###">合作招商</a></div>
								<div class="item"><a href="###">企业采购</a></div>
								<div class="item"><a href="###">服务市场</a></div>
								<div class="item"><a href="###">乡村招募</a></div>
								<div class="item"><a href="###">校园加盟</a></div>
								<div class="item"><a href="###">办公生活馆</a></div>
								<div class="item"><a href="###">知识产权维权</a></div>
								<div class="item"><a href="###">English Site</a></div>
							</dd>
						</dl>
					</div>
				</li>
				<li class="bar"></li>
				<li class="fore3">
					<div class="dt1 dt" id="service"><i class="downicon"></i>客户服务</div>
					<div class="server dropdown_layer" id="service_list">
						<div class="sever_item clearfix">
							<div class="server_client">客户</div>
							<div class="item"><a href="###">帮助中心</a></div>
							<div class="item"><a href="###">售后服务</a></div>
							<div class="item"><a href="###">在线客服</a></div>
							<div class="item"><a href="###">意见建议</a></div>
							<div class="item"><a href="###">电话服务</a></div>
							<div class="item"><a href="###">客服邮箱</a></div>
							<div class="item"><a href="###">金融咨询</a></div>
						</div>
						<div class="sever_item">
							<div class="server_business">商户</div>
							<div class="item"><a href="###">合作招商</a></div>
							<div class="item"><a href="###">京东商学院</a></div>
							<div class="item"><a href="###">商家后台</a></div>
							<div class="item"><a href="###">京麦工作台</a></div>
							<div class="item"><a href="###">商家帮助</a></div>
							<div class="item"><a href="###">规则平台</a></div>
						</div>
					</div>
				</li>
				<li class="bar"></li>
				<li class="fore4"><div class="dt"><a href="###">企业采购</a></div></li>
				<li class="bar"></li>
				<li class="fore5"><div class="dt"><a href="###">京东会员</a></div></li>
				<li class="bar"></li>
				<li class="fore6">
					<div class="dt1 dt" id="myjd"><i class="downicon"></i><a href="###">我的京东</a></div>
					<div class="myjd dropdown_layer" id="myjd_list">
						<div class="myjs_list">
							<div class="item"><a href="">待处理订单</a></div>
							<div class="item"><a href="">消息</a></div>
							<div class="item"><a href="">返修退换货</a></div>
							<div class="item"><a href="">我的问答</a></div>
							<div class="item"><a href="">降价商品</a></div>
							<div class="item"><a href="">我的关注</a></div>
						</div>
						<div class="myjs_list2 myjs_list">
							<div class="item"><a href="">我的京豆</a></div>
							<div class="item"><a href="">我的优惠券</a></div>
							<div class="item"><a href="">我的白条</a></div>
							<div class="item"><a href="">我的理财</a></div>
						</div>
					</div>
				</li>
				<li class="bar"></li>
				<li class="fore7"><div class="dt"><a href="###">我的订单</a></div></li>
				<li class="bar"></li>
				<li class="mlogin">
					<a href="###" class="hello dt">你好，请登录</a><a href="###" class="login dt">免费注册</a>
				</li>
				<li id="ttbar-home">
					<i class="homeicon"></i>
					<a href="//www.jd.com/" target="_blank">京东首页</a>
				</li>
				<li class="address">
					<i class="address_icon"></i>
					<span class="address_text">北京</span>
					<div class="adress_list dropdown_layer" id="adress_list">
						<div class="item"><a href="###" class="selected">北京</a></div>
						<div class="item"><a href="###">上海</a></div>
						<div class="item"><a href="###">天津</a></div>
						<div class="item"><a href="###">重庆</a></div>
						<div class="item"><a href="###">河北</a></div>
						<div class="item"><a href="###">山西</a></div>
						<div class="item"><a href="###">河南</a></div>
						<div class="item"><a href="###">辽宁</a></div>
						<div class="item"><a href="###">吉林</a></div>
						<div class="item"><a href="###">黑龙江</a></div>
						<div class="item"><a href="###">内蒙古</a></div>
						<div class="item"><a href="###">安徽</a></div>
						<div class="item"><a href="###">江苏</a></div>
						<div class="item"><a href="###">山东</a></div>
						<div class="item"><a href="###">浙江</a></div>
						<div class="item"><a href="###">福建</a></div>
						<div class="item"><a href="###">湖北</a></div>
						<div class="item"><a href="###">湖南</a></div>
						<div class="item"><a href="###">广西</a></div>
						<div class="item"><a href="###">广东</a></div>
						<div class="item"><a href="###">江西</a></div>
						<div class="item"><a href="###">四川</a></div>
						<div class="item"><a href="###">海南</a></div>
						<div class="item"><a href="###">贵州</a></div>
						<div class="item"><a href="###">云南</a></div>
						<div class="item"><a href="###">西藏</a></div>
						<div class="item"><a href="###">陕西</a></div>
						<div class="item"><a href="###">甘肃</a></div>
						<div class="item"><a href="###">宁夏</a></div>
						<div class="item"><a href="###">青海</a></div>
						<div class="item"><a href="###">新疆</a></div>
						<div class="item"><a href="###">港澳</a></div>
						<div class="item"><a href="###">台湾</a></div>
						<div class="item"><a href="###">钓鱼岛</a></div>
						<div class="item"><a href="###">海外</a></div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<!-- 搜索栏 -->
	<div class="sk_mod_hd" id="sk_mod_hd">
		<div class="main">
			<div class="w clearfix">
				<div id="logo-2014">
					<a href="//www.jd.com/" class="logo">京东</a>
					<div class="extra">
						<div id="channel">秒杀</div>
						<div id="categorys-mini" class="">
							<div class="cw-icon">
								<h2>
									<a href="###">
										全部分类<i class="ci-right"></i>
									</a>
								</h2>
							</div>
							<div id="categorys-mini-main">
								<div class="dd-inner">
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">家用电器</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">手机</a>、<a href="#">运营商</a>、<a href="#">数码</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">电脑</a>、<a href="#">办公</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">家居</a>、<a href="#">家具</a>、<a href="#">家装</a>、<a href="#">厨具</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">男装</a>、<a href="#">女装</a>、<a href="#">童装</a>、<a href="#">内衣</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">美妆个护</a>、<a href="#">宠物</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">女鞋</a>、<a href="#">箱包</a>、<a href="#">钟表</a>、<a href="#">珠宝</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">男鞋</a>、<a href="#">运动</a>、<a href="#">户外</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">汽车</a>、<a href="#">汽车用品</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">母婴</a>、<a href="#">玩具乐器</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">食品</a>、<a href="#">酒类</a>、<a href="#">生鲜</a>、<a href="#">特产</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">礼品鲜花</a>、<a href="#">农资绿植</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">医疗保健</a>、<a href="#">计生情趣</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">图书</a>、<a href="#">影像</a>、<a href="#">电子书</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
										<a href="#">机票</a>、<a href="#">酒店</a>、<a href="#">旅游</a>、<a href="#">生活</a>
									</h3></div>
									<div class="item1 fore1" data-index="1"><h3>
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
						<button class="button cw-icon">搜索</button>
					</div>
				</div>
				<div id="settleup-2014" class="dorpdown">
					<div class="cw-icon">
						<i class="ci-left"></i>
						<i class="ci-right">&gt;</i>
						<i class="ci-count" id="shopping-amount">0</i>
						<a href="#">我的购物车</a>
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
		</div>
	</div>
	<!-- 秒杀导航栏 -->
	<div class="skmu J_menu" id="skmu">
		<div class="main">
			<div class="skmu_list">
				<ul class="skmu_list_cnt">
					<li class="skmu_list_item skmu_list_item_on"><a href="###">京东秒杀</a></li>
					<li class="skmu_list_item "><a href="###">品牌秒杀</a></li>
					<li class="skmu_list_item "><a href="###">品类秒杀</a></li>
				</ul>
			</div>
			<div class="skmu_cls">
				<i class="skmu_cls_line"></i>
				<ul class="skmu_cls_list">
					<li class="skmu_cls_item "><a href="###">电脑办公</a></li>
					<li class="skmu_cls_item "><a href="###">生活电器</a></li>
					<li class="skmu_cls_item "><a href="###">手机通讯</a></li>
					<li class="skmu_cls_item "><a href="###">大家电</a></li>
					<li class="skmu_cls_item "><a href="###">智能数码</a></li>
					<li class="skmu_cls_item "><a href="###">饮料酒水</a></li>
					<li class="skmu_cls_item "><a href="###">家居家装</a></li>
					<li class="skmu_cls_item "><a href="###">母婴童装</a></li>
					<li class="skmu_cls_item "><a href="###">食品生鲜</a></li>
					<li class="skmu_cls_item skmu_cls_item_last"><a href="###">更多分类</a><i class="skmu_arrow"></i></li>
				</ul>
				<div class="skmu_mcate">
					<s></s>
					<a href="###">个护家清</a>
					<a href="###">美肤</a>
					<a href="###">运动户外</a>
					<a href="###">潮流鞋靴</a>
					<a href="###">流行服装</a>
					<a href="###">内衣</a>
					<a href="###">钟表珠宝</a>
					<a href="###">居家百货</a>
					<a href="###">医药保健</a>
					<a href="###">箱包服配</a>
					<a href="###">汽车用品</a>
				</div>
			</div>
		</div>
	</div>
	<!-- 秒杀正文 -->
	<div class="seckill_container">
		<div class="seckill_container_bg"></div>
		<!-- 秒杀标题 -->
		<div class="skhd" id="skhd">
			<div class="skhd_wrap">
				<div class="main"><h3 class="skhd_tit"></h3></div>
			</div>
		</div>
		<!-- 秒杀时间列表 -->
		<div class="timeline" id="timeline">
			<div class="main">
				<ul class="timeline_list">
					<li class="timeline_item timeline_item_selected">
						<a href="###" class="timeline_item_link">
							<div class="before"></div>
							<div class="timeline_item_link_skew">
								<div class="timeline_item_link_skew_timewrap">
									<i class="timeline_item_link_skew_time">00:00</i>
								</div>
								<div class="timeline_item_link_skew_processwrap">
									<i class="timeline_item_link_skew_processtips">进行中</i>
								</div>
								<div class="timeline_timecount">
									<b class="timeline_timecount_txt">正在秒杀</b>
									<b class="J-timeline_timecount_wrap timeline_timecount_time">
										距结束 <i class="hour timecount_time_txt_time">00</i>:<i class="minutes timecount_time_txt_time">06</i>:<i class="seconds timecount_time_txt_time">41</i>
									</b>
								</div>
							</div>
							<div class="after"></div>
						</a>
					</li>
					<li class="timeline_item">
						<a href="###" class="timeline_item_link">
							<div class="before"></div>
							<div class="timeline_item_link_skew">
								<div class="timeline_item_link_skew_timewrap">
									<i class="timeline_item_link_skew_time">02:00</i>
								</div>
								<div class="timeline_item_link_skew_processwrap">
									<i class="timeline_item_link_skew_processtips">即将开始</i>
								</div>
								<div class="timeline_timecount">
									<b class="timeline_timecount_txt">即将开始</b>
									<b class="J-timeline_timecount_wrap timeline_timecount_time">
										距开始 <i class="hour timecount_time_txt_time">00</i>:<i class="minutes timecount_time_txt_time">02</i>:<i class="seconds timecount_time_txt_time">11</i>
									</b>
								</div>
							</div>
							<div class="after"></div>
						</a>
					</li>
					<li class="timeline_item">
						<a href="###" class="timeline_item_link">
							<div class="before"></div>
							<div class="timeline_item_link_skew">
								<div class="timeline_item_link_skew_timewrap">
									<i class="timeline_item_link_skew_time">12:00</i>
								</div>
								<div class="timeline_item_link_skew_processwrap">
									<i class="timeline_item_link_skew_processtips">即将开始</i>
								</div>
								<div class="timeline_timecount">
									<b class="timeline_timecount_txt">即将开始</b>
									<b class="J-timeline_timecount_wrap timeline_timecount_time">
										距开始 <i class="hour timecount_time_txt_time">00</i>:<i class="minutes timecount_time_txt_time">02</i>:<i class="seconds timecount_time_txt_time">11</i>
									</b>
								</div>
							</div>
							<div class="after"></div>
						</a>
					</li>
					<li class="timeline_item">
						<a href="###" class="timeline_item_link">
							<div class="before"></div>
							<div class="timeline_item_link_skew">
								<div class="timeline_item_link_skew_timewrap">
									<i class="timeline_item_link_skew_time">14:00</i>
								</div>
								<div class="timeline_item_link_skew_processwrap">
									<i class="timeline_item_link_skew_processtips">即将开始</i>
								</div>
								<div class="timeline_timecount">
									<b class="timeline_timecount_txt">即将开始</b>
									<b class="J-timeline_timecount_wrap timeline_timecount_time">
										距开始 <i class="hour timecount_time_txt_time">00</i>:<i class="minutes timecount_time_txt_time">02</i>:<i class="seconds timecount_time_txt_time">11</i>
									</b>
								</div>
							</div>
							<div class="after"></div>
						</a>
					</li>
					<li class="timeline_item">
						<a href="###" class="timeline_item_link">
							<div class="before"></div>
							<div class="timeline_item_link_skew">
								<div class="timeline_item_link_skew_timewrap">
									<i class="timeline_item_link_skew_time">16:00</i>
								</div>
								<div class="timeline_item_link_skew_processwrap">
									<i class="timeline_item_link_skew_processtips">即将开始</i>
								</div>
								<div class="timeline_timecount">
									<b class="timeline_timecount_txt">即将开始</b>
									<b class="J-timeline_timecount_wrap timeline_timecount_time">
										距开始 <i class="hour timecount_time_txt_time">00</i>:<i class="minutes timecount_time_txt_time">02</i>:<i class="seconds timecount_time_txt_time">11</i>
									</b>
								</div>
							</div>
							<div class="after"></div>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 秒杀商品内容 -->
		<div class="skwrap">
			<div class="spsk">
				<div class="main">
					<ul class="seckill_mod_goodslist clearfix">
						<div class="spsk_item seckill_mod_goods_soldout">
							<span class="title_logo">超级秒杀</span>
							<div class="spsk_item_container">
								<div class="spsk_item_title">
									<a href="###" class="goods_title" title=" 帕森（PARZIN）偏光太阳镜女款太阳眼镜大框驾驶墨镜 9251 蓝色"> 帕森（PARZIN）偏光太阳镜女款太阳眼镜大框驾驶墨镜 9251 蓝色</a>
									<span class="price">
										<i class="price_now"><em>¥</em>1</i>
										<span class="price_origin">¥<del>599</del></span>
									</span>
									<span class="spsk_item_tip">90件抢光啦</span>
									<a href="###" class="spsk_item_btn">更多优惠</a>
								</div>
								<div class="spsk_item_goods">
									<a href="###">
										<i class="seckill_mod_goods_out"></i>
										<img class="spsk_item_goods_img" src="jdms/images/goods_img.jpg" alt=""/>
									</a>
								</div>
							</div>
						</div>
					<c:forEach items="${list }" var="item">
						<li class="seckill_mod_goods">
							<a href="ms/show/showGoods.do?gid=${item.goods.gid}" class="seckill_mod_goods_link">
								<img class="seckill_mod_goods_link_img" src="${item.goods.goodsImg[0].src}" alt=""/>
								<h4 class="seckill_mod_goods_title">${item.goods.gname }</h4>
							</a>
							<div class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>${item.price }</i>
										<span class="seckill_mod_goods_price_pre">¥<del>${item.goods.gprice }</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售15%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:26%"></b></i>
									</span>
								</span>
								<a href="###" class="seckill_mod_goods_info_i">立即抢购</a>
							</div>
						</li>
					</c:forEach>	
					</ul>
				</div>
			</div>
		</div>
		<!-- 更多好货 -->
		<div class="moregoods" id="moregoods">
			<div class="main">
				<h3 class="moregoods_logo">更多好货</h3>
				<ul id="J-superkillGoodslist" class="seckill_mod_goodslist">
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
					<li class="seckill_mod_goods">
						<a href= "###" class="seckill_mod_goods_link">
							<img class="seckill_mod_goods_link_img" src="jdms/images/moregoods/more1.jpg" alt=""/>
							<h4 class="seckill_mod_goods_title">联想 ZUK Z2 Pro手机（Z2121）尊享版 6G+128G 陶瓷白 移动联通电信4G手机 双卡双待</h4>
							<span class="seckill_mod_goods_info">
								<span class="seckill_mod_goods_info_txt">
									<span class="seckill_mod_goods_price">
										<i class="seckill_mod_goods_price_now"><em>¥</em>1748</i>
										<span class="seckill_mod_goods_price_pre">¥<del>1799</del></span>
									</span>
									<span class="seckill_mod_goods_progress">
										<i class="seckill_mod_goods_progress_txt">已售29%</i>
										<i class="seckill_mod_goods_progress_inner"><b class="seckill_mod_goods_progress_completed" style="width:29%"></b></i>
									</span>
								</span>
								<i class="seckill_mod_goods_info_i">立即抢购</i>
							</span>
						</a>
					</li>
				</ul>
			</div>
		</div>
		<!-- 底部广告 -->
		<div class="bttwobanner clearfix" id="bttwobanner">
			<div class="main">
				<a href="###" class="bttwobanner_lk">
					<img class="bttwobanner_img" src="jdms/images/bottomad1.png" alt=""/>
				</a>
				<a href="###" class="bttwobanner_lk bttwobanner_lklast">
					<img class="bttwobanner_img" src="jdms/images/bottomad2.png" alt=""/>
				</a>
			</div>
		</div>
	</div>
	<!-- 价格说明和底部菜单 -->
	<div class="" id="cmsfooter">
		<div class="d_price_tips">
			<div class="main">
				<div class="d_price_tips_ls">
					<p><strong class="d_price_tips_h">价格说明：</strong></p>
					<p><strong>秒杀价：</strong>参与秒杀活动期间，该商品在京东秒杀频道的促销价格。</p>
					<p><strong>划线价：</strong>商品展示的划横线价格为参考价，该价格可能是品牌专柜标价、商品吊牌价或由品牌供应商提供的正品零售价（如厂商指导价、建议零售价等）或该商品在京东平台上曾经展示过的销售价；由于地区、时间的差异性和市场行情波动，品牌专柜标价、商品吊牌价等可能会与您购物时展示的不一致，该价格仅供您参考。</p>
					<p><strong>小贴士：</strong>因可能存在系统缓存、页面更新导致价格变动异常等不确定性情况出现，如您发现活动商品标价或促销信息有异常，请您立即联系我们，以便我们及时补正。</p>
				</div>
			</div>
		</div>
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
	<!-- 返回顶部 -->
	<div class="top">
		<a href="">
			<i class="sk_mod_er_top_arrow"></i>
			<span>TOP</span>
		</a>
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