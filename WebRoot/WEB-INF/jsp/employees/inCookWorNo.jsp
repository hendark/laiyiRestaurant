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
</head>
<body>
    <div class="right" id="mainFrame">
        <div class="right_cont">
            <ul class="breadcrumb">
               	 当前位置：<a href="${pageContext.request.contextPath}/welcome.html">首页</a>
                <span class="divider">/</span>
                <a href="#">厨师个人功能</a>
                <span class="divider">/</span>修改菜品
            </ul>
            <div class="title_right">
                <strong>修改菜品</strong>
            </div>
            <form action="orderUpd.action" method="post">
            <div style="width:900px; margin:auto">
                <table class="table table-bordered">
                    <tr>
                        <td width="12%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">请输入工号：</td>
	                    <td width="38%"><input type="text" name="fname" id="input" class="span1-1" /></td>
	                </tr>  
                    <input type="hidden" name="id" value="${order.id}"/>  
                    <input type="hidden" name="userid" value="${order.userid}"/>  
                    <input type="hidden" name="tableid" value="${order.tableid}"/>  
                    <input type="hidden" name="ordertime" value="${order.ordertime}" />  
                    <input type="hidden" name="state" value="2"/>  
                    <input type="hidden" name="price" value="${order.price}"/>    
                    <input type="hidden" name="waiterno" /> 
                </table>
                <table class="margin-bottom-20 table  no-border">
                    <tr>
                        <td class="text-center">
                            <input type="submit" value="确认输入" class="btn btn-info " style="width:80px;"/>
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
