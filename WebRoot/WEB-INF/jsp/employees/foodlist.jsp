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
	<script type="text/javascript">
		$(function(){
			$("#btnAdd").click(function(){
				var obj = '<iframe name="myFrame" src="${pageContext.request.contextPath}/foodinsert.jsp" frameborder="0" scrolling="no" height="450" width="950" style="margin:0;padding:0;"/></iframe>';
				$(obj).dialog({
					title : "添加菜品"
				});
			});
		});
		function todel() { 
    		var msg = "您真的确定要删除吗？\n\n请确认！"; 
    		if (confirm(msg)==true){ 
    		return true; 
    		}else{ 
    		return false; 
    		} 
    		}
	</script>
</head>
<body>
    <div class="right" id="mainFrame">
        <div class="right_cont">
            <ul class="breadcrumb">
               	 当前位置：<a href="${pageContext.request.contextPath}/welcome.html">首页</a>
                <span class="divider">/</span>
                <a href="#">厨师个人功能</a>
                <span class="divider">/</span>菜品管理
            </ul>
            <div class="title_right">
                <strong>菜品管理</strong>
            </div>
			<div style="width:99%;margin:auto;text-align:right;">
			<button id="btnAdd" class="btn btn-info " style="width:80px;">添加</button><p/>
			</div>
            <div style="width:99%; margin:auto">
                <!--表格开始-->
				<table class="table table-bordered table-striped table-hover">
					<tbody>
						<tr align="center">
							<td>编号</td>
							<td>菜系</td>
							<td>菜名</td>
							<td>原价</td>
							<td>折扣价</td>
							<td>是否特色菜</td>
							<td>库存量</td>
							<td style="width: 170px">操作</td>
         				</tr>
         			<c:forEach items="${foodcuisines}" var="f">
						<tr align="left">
							<td>${f.id}</td>
							<td>${f.cuisine}</td>
							<td>${f.fname}</td>
							<td>￥${f.fprice}</td>
							<td>￥${f.fdprice}</td>
							<td>${f.fischara==1?"特色菜":"否"}</td>
							<td>${f.fstate==1?"充足":"无材料"}</td>
							<td>
								<a href="tofoodupd.action?id=${f.id }" class="btn btn-info" style="width:60px;">修改</a>
								<a onclick="javascript:return todel()" href="fooddel.action?id=${f.id }" class="btn btn-info" style="width:60px;">删除</a>
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
