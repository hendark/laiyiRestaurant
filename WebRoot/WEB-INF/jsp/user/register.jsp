<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<title>用户注册</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/base.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/global.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/login-register.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/jquery-1.8.3.js"></script>
	<style type="text/css">
		.font > p {
			font-size: 40px;
			text-shadow: 5px 5px 5px black, 0px 0px 2px red, 2px 2px 3px green;
		}
	</style>
	<script type="text/javascript">
		 $(function(){
			 $("#btn").click(function(){
		 		$.get("${pageContext.request.contextPath}/user/register.action",{
					username:$("#username").val(),	
					password:$("#password").val(),
					surepassword:$("#surepassword").val()	
				},function(data){
					$("#pswinfo").html(data);
				});
		 	});	 
		 });
	</script>
</head>
<body>
	<div class="header wrap1000 font">
	 <p><i>来怡饭店</i></p>
	</div>
	
	<div class="main">
		<div class="login-form fr">
			<div class="form-hd">
				<h3>用户注册</h3>
			</div>
			<div class="form-bd">
					<dl>
						<dt>用户名</dt>
						<dd><input type="text" id="username" name="username" class="text" /></dd>
					</dl>
					<dl>
						<dt>密&nbsp;&nbsp;&nbsp;&nbsp;码</dt>
						<dd><input type="password" id="password" name="password" class="text"/></dd>
					</dl>
					<dl>
						<dt>确认密码</dt>
						<dd><input type="password" id="surepassword" name="surepassword" class="text"/><span id="pswinfo" style="color: red"></span></dd>
					</dl>
					<dl>
						<dt>&nbsp;</dt>
						<dd><input type="submit" id="btn" value="立即注册" class="submit"/> </dd>
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
			<a href="${pageContext.request.contextPath}/food/toindex.action">首页</a> |
		 	<a href="#">广告合作</a> |
		 	<a href="#">关于来怡饭店</a> |
		 	<a href="#">联系我们</a>
		</p>	
	</div>
	
	
</body>
</html>

