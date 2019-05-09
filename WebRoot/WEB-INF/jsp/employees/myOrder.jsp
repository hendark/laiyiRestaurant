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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/adminjs/css/bootstrap.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/adminjs/css/css.css" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/adminjs/js/jquery1.9.0.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/adminjs/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/adminjs/js/sdmenu.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/adminjs/js/laydate/laydate.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/adminjs/css/jquery.dialog.css">
	<script src="${pageContext.request.contextPath}/adminjs/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/adminjs/js/jquery.dialog.js"></script>
	<style type="text/css">
		#vvv{text-align:right;margin:0;padding:0;}
	</style>
</head>
<body>
    <div class="right" id="mainFrame">
        <div class="right_cont">
            <ul class="breadcrumb">
               	 当前位置：<a href="${pageContext.request.contextPath}/welcome.html">首页</a>
                <span class="divider">/</span>
                <a href="#">厨师个人功能</a>
                <span class="divider">/</span>做菜管理
            </ul>
            <div class="title_right">
                <strong>做菜管理</strong>
            </div>			
            <div style="width:99%; margin:auto">
                <!--表格开始-->
				<table class="table table-bordered table-striped table-hover">
					<tbody>
						<tr align="center">
							<td>餐桌号</td>
							<td>订单时间</td>
							<td>订单状态</td>
							<td>总价</td>
							<td style="width: 80px">操作</td>
							<td style="width: 100px">操作</td>
         				</tr>
         			<c:forEach items="${orders}" var="o">
						<tr align="left">
							<td>${o.tableid}</td>
							<td>${o.ordertime}</td>
							<td>${o.state==1?"暂无厨师接单":"已有厨师接单"}</td>
							<td>￥${o.price}</td>
							<td>
								<a  href="${pageContext.request.contextPath}/order/orderDetails.action?id=${o.id }" class="btn btn-info" style="width:80px;">查看订单详情</a>							
							</td>
							<td>
								<a href="${pageContext.request.contextPath}/user/lookUser.action?id=${o.userid }" class="btn btn-info" style="width:80px;">查看顾客详情</a>
							</td>
         				</tr>
         			</c:forEach>
					</tbody>
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
