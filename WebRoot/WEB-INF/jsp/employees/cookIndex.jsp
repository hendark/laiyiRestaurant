<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE>
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
<!-- header开始 --> 
	<div class="header">
	    <div class="header-right">
	    	<i class="icon-user icon-white"></i>
	        <a href="tolist.action?id=${employees.id}">${employees.username}</a>
	        <i class="icon-envelope icon-white"></i>
	        <a href="#">消息</a>
	        <i class="icon-question-sign icon-white"></i><a href="#">帮助</a>
	        <i class="icon-off icon-white"></i>
	        <a id="modal-973558" href="${pageContext.request.contextPath}" role="button" data-toggle="modal">注销</a>
	    </div>
	</div>
<!-- header结束 -->      
		<div id="middle">
			<div class="left">
				<script type="text/javascript">
				//菜单
				var myMenu;
				window.onload = function(){
				    myMenu = new SDMenu("my_menu");
				    myMenu.init();
				};
				</script>
				<div id="my_menu" class="sdmenu">
					<div >
						<span>个人信息管理</span>
						<a href="tolist.action?id=${employees.id}" target="mainFrame">查看个人信息</a>
						<a href="toupd.action?id=${employees.id}" target="mainFrame">修改个人信息</a>
					</div>
					<c:choose>
						<c:when test="${employees.type==1}">
							<div class="collapsed">
								<span>前台服务员个人功能</span>
								<a href="${pageContext.request.contextPath}/order/waiterLookOrder.action" target="mainFrame">上菜管理</a>
								<a href="${pageContext.request.contextPath}/order/waiterLookOrderByState23.action" target="mainFrame">打扫提醒</a>
								<a href="${pageContext.request.contextPath}/pdjh/pdjh.action" target="mainFrame">排队叫号</a>
							</div>
						</c:when>
	                    <c:otherwise >
							<div class="collapsed">
								<span>厨师个人功能</span>
								<a href="${pageContext.request.contextPath}/food/foodlist.action" target="mainFrame">菜品管理</a>
								<a href="${pageContext.request.contextPath}/order/cookorder.action" target="mainFrame">接单管理</a>
								<a href="${pageContext.request.contextPath}/order/cookMyOrder.action?cookno=${employees.workno}" target="mainFrame">做菜管理</a>
								<a href="${pageContext.request.contextPath}/evaluation/lookEvaluation.action" target="mainFrame">查看顾客评价</a>
							</div>
						</c:otherwise>
                    </c:choose>			
				</div>
			</div>
			<div class="Switch"></div>
			<script type="text/javascript">
			//菜单折叠
			$(document).ready(function(e){
			    $(".Switch").click(function(){
			        $(".left").toggle();
			    });
			});
			</script>
		<!-- 菜单栏结束 -->
			<div class="right" id="mainFrame" name="mainFrame">
				<iframe name="mainFrame" frameborder="no" width="99%" height="99%" src="${pageContext.request.contextPath}/welcome.html"></iframe>
			</div>
		</div>
<!-- 主显示区结束-->
		<script>
		!function(){
		    laydate.skin('molv');
		    laydate({
		        elem: '#Calendar'
		    });
		}();
		</script>
	</body>
</html>

