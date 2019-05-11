<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<title>用户登录</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/base.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/global.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/login-register.css" />
	<style type="text/css">
		.font > p {
			font-size: 40px;
			text-shadow: 5px 5px 5px black, 0px 0px 2px red, 2px 2px 3px green;
		}
	</style>
</head>
<body>
	<div class="header wrap1000 font">
	 <p><i>来怡饭店</i></p>
	</div>
	
	<div class="main">
		<div class="login-form fr">
			<div class="form-hd">
				<h3>用户登录</h3>
			</div>
			<div class="form-bd">
				<form action="${pageContext.request.contextPath}/user/login.action" method="POST">
					<dl>
						<dt>用户名</dt>
						<dd><input type="text" name="username" class="text" /></dd>
					</dl>
					<dl>
						<dt>密&nbsp;&nbsp;&nbsp;&nbsp;码</dt>
						<dd><input type="password" name="password" class="text"/></dd>
					</dl>
					<dl>
						<dt>&nbsp;</dt>
						<dd><input type="submit" value="登  录" class="submit"/> </dd>
					</dl>
				</form>
				<dl>
					<dt>&nbsp;</dt>
					<dd> 还不是本站会员？立即 <a href="" class="register">注册</a></dd>
				</dl>
			</div>
			<div class="form-ft">
			
			</div>		
		</div>
		
		<div class="login-form-left fl">
			<img src="${pageContext.request.contextPath}/userjs/images/left.jpg" alt="" />
		</div>
	</div>
	<div class="footer clear wrap1000">
		<p> 
			<a href="#">首页</a> |
		 	<a href="#">广告合作</a> |
		 	<a href="#">关于来怡饭店</a> |
		 	<a href="#">联系我们</a>
		</p>	
	</div>
	
	
</body>
</html>

