<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>来怡饭店员工管理系统</title>
		<link rel="stylesheet" 
			href="${pageContext.request.contextPath}/adminjs/css/bootstrap.css" />
		<script type="text/javascript" 
			src="${pageContext.request.contextPath}/adminjs/js/jquery1.9.0.min.js">
		</script>
		<script type="text/javascript" 
			src="${pageContext.request.contextPath}/adminjs/js/bootstrap.min.js">
		</script>
		<style type="text/css">
			body{ background:#0066A8 url(adminjs/img/login_bg.png) no-repeat center 0px;}
			.tit{ color: white; margin:auto; margin-top:170px; text-align:center; width:350px; padding-bottom:20px;}
			.login-wrap{ width:220px; padding:30px 50px 0 330px; height:220px; background:#fff url(adminjs/img/20150212154319.jpg) no-repeat 30px 40px; margin:auto; overflow: hidden;}
			.login_input{ display:block; width:220px;}
			.login_user{ background: url(adminjs/img/input_icon_1.png) no-repeat 200px center; font-family: "Lucida Sans Unicode", "Lucida Grande", sans-serif}
			.login_password{ background: url(adminjs/img/input_icon_2.png) no-repeat 200px center; font-family:"Courier New", Courier, monospace}
			.my_selected{width:230px;height: initial;}
			.btn-login{ background:#40454B; box-shadow:none; text-shadow:none; color:#fff; border:none;height:35px; line-height:26px; font-size:14px; font-family:"microsoft yahei";}
			.btn-login:hover{ background:#333; color:#fff;}
			.copyright{ margin:auto; margin-top:10px; text-align:center; width:370px; color:#CCC}
		</style>	
	</head>

<body>
	<div class="tit">
		<h3>来怡饭店员工管理系统</h3>
	</div>
		<div class="login-wrap">
	  		<table width="100%" border="0" cellspacing="0" cellpadding="0">  		
			  	<form id="form" action="${pageContext.request.contextPath}/employees/login.action"
		 			 method="post">
			  		<tr>
			  			<td height="25" valign="bottom">用户名：</td>
			  		</tr>
				    <tr>
				      	<td><input type="text" placeholder="工号" name="workno" class="login_input login_user" /></td>
				    </tr>
				    <tr>
				      	<td height="25" valign="bottom">密  码：</td>
				    </tr>
				    <tr>
				      	<td><input type="password" placeholder="密码" name="password" class="login_input login_password" /></td>
				    </tr>		
				    <tr>    
				    	<select class="my_selected" name="type">	    		
				    		<option value="1" selected="selected">前台服务员</option>
				    		<option value="2">厨师</option>	
				    	</select>	
				    </tr>
			    <tr>
			      <td height="60" valign="bottom">
			     	<input type="submit" class="btn btn-block btn-login" value="登录"/>	      	    
			    </tr>
			  </form>
	  		</table>
		</div>	   
</body>
</html>

