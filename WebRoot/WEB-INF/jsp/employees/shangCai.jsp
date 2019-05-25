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
                <a href="#">前台服务员个人功能</a>
                <span class="divider">/</span>上菜管理
            </ul>
            <div class="title_right">
                <strong>上菜订单详情</strong>
            </div>			
            <div style="width:99%; margin:auto">
                <!--表格开始-->
				<table class="table table-bordered table-striped table-hover">
					<tbody>
						<tr align="center">
							<td>菜品</td>					
							<td>数量</td>
							<td style="width: 100px">操作</td>
         				</tr>
         			<c:forEach items="${detailsFoods}" var="d">
						<tr align="left">
							<td>${d.fname}</td>
							<td>${d.num}</td>
							<c:choose>	
								<c:when test="${d.price==1.0||d.price==2.0}">			
									<td>
										<a href="${pageContext.request.contextPath}/order/shangCaiUpd.action?id=${d.id}" class="btn btn-info" style="width:80px;">菜未上</a>
									</td>
								</c:when>	
								<c:otherwise>
									<td>
										<a href="#" class="btn btn-info" style="width:80px;">菜已上</a>
									</td>
								</c:otherwise>	
							</c:choose>
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
