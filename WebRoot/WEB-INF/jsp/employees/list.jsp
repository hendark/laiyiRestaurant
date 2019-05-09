<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>来怡饭店员工管理系统</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/adminjs/css/bootstrap.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/adminjs/css/css.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/adminjs/js/jquery1.9.0.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/adminjs/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/adminjs/js/sdmenu.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/adminjs/js/laydate/laydate.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#btn").click(function(){
				top.mainFrame.location="table.html";
			});
		});
	</script>
</head>
<body>
    <div class="right" id="mainFrame">
        <div class="right_cont">
            <ul class="breadcrumb">
               	 当前位置：<a href="${pageContext.request.contextPath}/welcome.html">首页</a>
                <span class="divider">/</span>
                <a href="#">个人信息管理</a>
                <span class="divider">/</span>查看个人信息
            </ul>
            <div class="title_right">
                <strong>个人信息总览</strong>
            </div>
            <div style="width:900px; margin:auto">
                <table class="table table-bordered">
                    <tr>
                        <td width="12%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">工号：</td>
                        <td width="38%">${employees.workno}</td>
                        <td width="12%" align="right" bgcolor="#f1f1f1">用户昵称：</td>
                        <td width="38%">${employees.username}</td>
                    </tr>
					<tr>
                        <td width="12%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">性别：</td>              
                        <td width="38%">${employees.sex==0?"男":"女"}</td>
                        <td width="12%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">年龄：</td>
                        <td width="38%">${employees.age}</td>
                    </tr>
                    <tr>
                        <td width="12%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">电话：</td>
                        <td width="38%">${employees.tel}</td>
                        <td width="12%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">职业：</td>
                        <td width="38%">${employees.type==2?"厨师":"前台服务员"}</td>
                    </tr>		
                </table>
            </div>
        </div>
    </div><!-- 底部 --> 
    <script>
        !function(){
            laydate.skin('molv');
            laydate({
                elem: '#Calendar'
            });
            laydate.skin('molv');
            laydate({
                elem: '#Calendar2'
            });
        }();
    </script>
</body>
</html>

