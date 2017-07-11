<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title></title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="assets/css/core.css" />
		<link rel="stylesheet" href="assets/css/menu.css" />
		<link rel="stylesheet" href="assets/css/amazeui.css" />
		<link rel="stylesheet" href="assets/css/component.css" />
		<link rel="stylesheet" href="assets/css/page/form.css" />

  </head>
  
  <body>
		<div class="account-pages">
			<div class="wrapper-page">
				<div class="text-center">
	                <a href="index.html" class="logo"><span>Admin<span>to</span></span></a>
	            </div>
	            
	            <div class="m-t-40 card-box">
	            	<div class="text-center">
	                    <h4 class="text-uppercase font-bold m-b-0">登陆</h4>
	                    <font color="red">${message }</font>
	                </div>
	                <div class="panel-body">
	                	<form id="loginForm" class="am-form" action="admin/login" method="post" >
	                		<div class="am-g">
	                			<div class="am-form-group">
     								 <label for="doc-vld-name-2">用户名：</label>
      								 <input type="text" id="doc-vld-name-2" minlength="3" placeholder="输入用户名（至少 3 个字符）" required/>
    							</div>
								<div class="am-form-group">
     								 <label for="doc-vld-name-2">密码：</label>
      								 <input type="password" id="doc-vld-name-2" minlength="3" placeholder="输入用户名（至少 3 个字符）" required/>
    							</div>
							    <div class="am-form-group ">
		                           	<label style="font-weight: normal;color: #999;">
								        <input type="checkbox" class="remeber"> 记住我
								    </label>
		                        </div>
		                        
		                        <div class="am-form-group ">
		                        	<button type="button" class="am-btn am-btn-primary am-radius" style="width: 100%;height: 50px;" onclick="document.getElementById('loginForm').submit()">登陆</button>
		                        </div>
		                        
		                        <div class="am-form-group ">
		                        <a href="page-recoverpw.html" class="text-muted"><i class="fa fa-lock m-r-5"></i> 忘记密码?</a>
		                        </div>
	                		</div>

	                	</form>
							
	                </div>
	            </div>
			</div>
		</div>
	</body>
</html>
