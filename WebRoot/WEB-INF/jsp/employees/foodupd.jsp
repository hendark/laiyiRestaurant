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
            <form action="foodupd.action" method="post">
            <div style="width:900px; margin:auto">
                <table class="table table-bordered">
                    <tr>
                        <td width="12%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">菜名：</td>
	                    <td width="38%"><input type="text" name="fname" value="${food.fname}" id="input" class="span1-1" /></td>
	                    <td width="12%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">菜系：</td>
	                    <td>
                        	<select name="categoryid" class="span1-1">
                        		<option value="1">鲁菜</option>
                        		<option value="2">川菜</option>
                        		<option value="3">粤菜</option>
                        		<option value="4">闽菜</option>
                        		<option value="5">苏菜</option>
                        		<option value="6">浙菜</option>
                        		<option value="7">湘菜</option>
                        		<option value="8">徽菜</option>
                        	</select>	                      
	                     </td>
                    </tr> 
                    <tr>
	                        <td width="12%" align="right" nowrap="nowrap" bgcolor="#f1f1f1">菜图片地址：</td>
	                        <td><input type="text" name="furl" value="${food.furl}" id="input3" class="span1-1" /></td>
	                        <td align="right" bgcolor="#f1f1f1">是否特色菜：</td>
	                        <td>
	                        	<select name="fischara" class="span1-1">
	                        		<option value="1">是</option>
	                        		<option value="0">否</option>
	                        	</select>
	                        </td>
	                    </tr>
	                    <tr>
	                        <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">原价：</td>
	                        <td><input type="text" name="fprice" value="${food.fprice}" id="input2" class="span1-1" /></td>
	                        <td align="right" bgcolor="#f1f1f1">折扣价：</td>
	                        <td><input type="text" name="fdprice" value="${food.fdprice}" id="input5" class="span1-1" /></td>
	                    </tr>  
	                    <tr>
	                        <td align="right" nowrap="nowrap" bgcolor="#f1f1f1">库存量：</td>
	                        <td>
	                        	<select name="fstate" class="span1-1">
	                        		<option value="1">充足</option>
	                        		<option value="0">无材料</option>
	                        	</select>
	                        </td>
	                    </tr>          
                    <input type="hidden" name="id" value="${food.id}"/>    
                </table>
                <table class="margin-bottom-20 table  no-border">
                    <tr>
                        <td class="text-center">
                            <input type="submit" value="确认修改" class="btn btn-info " style="width:80px;"/>
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
