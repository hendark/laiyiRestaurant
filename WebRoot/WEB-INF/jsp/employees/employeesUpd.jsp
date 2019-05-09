<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
                <span class="divider">/</span>修改个人信息
            </ul>
            <div class="title_right">
                <strong>修改个人信息</strong>
            </div>
            <form action="employeesupd.action" method="post">
            <div style="width:900px; margin:auto">
                <table class="table table-bordered">
                    <tr>
                        <td width="12%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">昵称：</td>
                        <td width="38%"><input type="text" name="username" value="${employees.username}" id="input" class="span1-1" /></td>
                        <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">性别：</td>
                        <td>
                        	<select class="span1-1" name="sex">
                        	<c:choose>
	                        	<c:when test="${employees.sex==0}">
	                        		<option value="0" selected="selected">男</option>
	                        		<option value="1">女</option>
	                        	</c:when>
	                        	<c:otherwise>
	                        		<option value="0">男</option>
	                        		<option value="1" selected="selected">女</option>
	                        	</c:otherwise>
                        	</c:choose>
                        	</select>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">年龄：</td>
                        <td><input type="text" name="age" value="${employees.age}"  id="input3" class="span1-1" /></td>
                        <td align="right" bgcolor="#f1f1f1">电话：</td>
                        <td><input type="text" name="tel" value="${employees.tel}"  id="input4" class="span1-1" /></td>
                    </tr>    
                    <input type="hidden" name="id" value="${employees.id}"/>    
                    <input type="hidden" name="workno" value="${employees.workno}"/>  
                    <input type="hidden" name="password" value="${employees.password}"/>  
                    <input type="hidden" name="type" value="${employees.type}"/>   
                </table>
                <table class="margin-bottom-20 table  no-border">
                    <tr>
                        <td class="text-center">
                            <input id="btn" type="submit" value="确认修改" class="btn btn-info " style="width:80px;"/>
                        </td>
                    </tr>
                </table>
            </div>
            </form>
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
