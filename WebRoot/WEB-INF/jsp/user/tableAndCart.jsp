<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
	<title>购物车页面</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/base.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_common.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_manager.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_header.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_list.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_goods.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_gouwuche.css" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/jquery.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/topNav.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/shop_goods.js" ></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/jquery.goodnums.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/shop_gouwuche.js" ></script>
	<style type="text/css">
		.font > p {
			font-size: 40px;
			text-shadow: 5px 5px 5px black, 0px 0px 2px red, 2px 2px 3px green;
		}
	.shop_bd_shdz_title{width:1000px; margin-top: 10px; height:50px; line-height: 50px; overflow: hidden; background-color:#F8F8F8;}
    .shop_bd_shdz_title h3{width:120px; text-align: center; height:40px; line-height: 40px; font-size: 14px; font-weight: bold;  background:#FFF; border:1px solid #E8E8E8; border-radius:4px 4px 0 0; float: left;  position: relative; top:10px; left:10px; border-bottom: none;}
    .shop_bd_shdz_title p{float: right;}
    .shop_bd_shdz_title p a{margin:0 8px; color:#555555;}
	</style>
	
</head>
<body>
	<!-- Header  -zy-2019/05/10 -->
	<div class="shop_hd">
		<!-- Header TopNav -->
		<div class="shop_hd_topNav">
			<div class="shop_hd_topNav_all">
				<!-- Header TopNav Left -->
				<c:choose>
					<c:when test="${sessionScope.user.username!=null}">
						<div class="shop_hd_topNav_all_left">
							<p>您好！<b><a href="#">${sessionScope.user.username}</a></b>[<a href="${pageContext.request.contextPath}/user/logout.action">退出</a>]</p>
						</div>
					</c:when>
					<c:otherwise>
						<div class="shop_hd_topNav_all_left">
							<p>您好，欢迎来到<b><a href="/">来怡饭店</a></b>[<a href="${pageContext.request.contextPath}/user/userLogin.action">登录</a>][<a href="${pageContext.request.contextPath}/user/toregister.action">注册</a>]</p>
						</div>
					</c:otherwise>	
				</c:choose>
				<!-- Header TopNav Left End -->
			</div>
			<div class="clear"></div>
		</div>
		<div class="clear"></div>
		<!-- Header TopNav End -->

		<!-- TopHeader Center -->
		<div class="shop_hd_header">
			
			<div class="shop_hd_header_logo font">
	 			<p><i>来怡饭店</i></p>
			</div>
			<div class="shop_hd_header_search">
                <ul class="shop_hd_header_search_tab">
			         <li id="search" class="current">商品</li>
			    </ul>
                <div class="clear"></div>
			    <div class="search_form">
			    	<form method="post" action="${pageContext.request.contextPath}/food/findByFname.action">
			    		<div class="search_formstyle">
			    			<input type="text" class="search_form_text" name="searchContent"  />
			    			<input type="submit" class="search_form_sub" name="secrch_submit" value="" title="搜索" />
			    		</div>
			    	</form>
			    </div>
			</div>
		</div>
		<div class="clear"></div>
		<!-- TopHeader Center End -->

		<!-- Header Menu -->
		<div class="shop_hd_menu">
			<!-- 所有商品菜单 -->
                        
			<div id="shop_hd_menu_all_category" class="shop_hd_menu_all_category"><!-- 首页去掉 id="shop_hd_menu_all_category" 加上clsss shop_hd_menu_hover -->
				<div class="shop_hd_menu_all_category_title"><h2 title="所有商品分类"><a href="javascript:void(0);">所有商品分类</a></h2><i></i></div>
				<div id="shop_hd_menu_all_category_hd" class="shop_hd_menu_all_category_hd">
					<ul class="shop_hd_menu_all_category_hd_menu clearfix">
						<!-- 单个菜单项 -->
						<c:forEach items="${sessionScope.cuisines}" var="c">
							<li id="cat_1" class="">
								<h3><a href="${pageContext.request.contextPath}/food/findByCuisine.action?id=${c.id}">${c.cuisine}</a></h3>
	                        </li>
                        </c:forEach>
					</ul>
				</div>
			</div>
			<!-- 所有商品菜单 END -->
			<!-- 普通导航菜单 -->
			<ul class="shop_hd_menu_nav">
				<li class="link"><a href="${pageContext.request.contextPath}/food/toindex.action"><span>首页</span></a></li>			
				<li class="link"><a href="${pageContext.request.contextPath}/table/tableList.action"><span>预订餐桌</span></a></li>
				<li class="current_link"><a href="tomyCart.action"><span>我的购物车</span></a></li>
				<li class="link"><a href="${pageContext.request.contextPath}/user/myInfo.action"><span>个人中心</span></a></li>
			</ul>
			<!-- 普通导航菜单 End -->
		</div>
		<!-- Header Menu End -->

	</div>
	<div class="clear"></div>
	<!-- 面包屑 注意首页没有 -->
	<div class="shop_hd_breadcrumb">
		<strong>当前位置：</strong>
		<span>
			<a href="tomyCart.action">我的购物车</a>&nbsp;›&nbsp;
			<a href="#">填写订单</a>&nbsp;›&nbsp;
		</span>
	</div>
	<div class="clear"></div>
	<!-- Header End -->
	 
	 <!-- 购物车 Body -->
	
	<div class="shop_gwc_bd clearfix  shop_gwc_bd_contents ">
			<!-- 收货地址 title -->
			<div class="shop_bd_shdz_title">
				<h3>餐桌</h3>
			</div>
			<div class="clear"></div>
			<div class="shop_bd_shdz clearfix">
				<div class="shop_meber_bd_good_lists clearfix">
				<table>
					<thead class="tab_title">
						<th style="width:900px;"><span>餐桌信息</span></th>
					</thead>
					<tbody>

						<tr><td colspan="5">
						
							<c:forEach items="${orders}" var="o">
							<table class="good">
								<thead >
									<tr><th colspan="6">
										<span><strong>餐桌号码：</strong>${o.tableid }</span>
									</th></tr>
								</thead>
								<tbody>
									<tr>
										<td class="dingdan_pic"><img src="${pageContext.request.contextPath}/userjs/images/canzhuo.jpg" /></td>
									</tr>
								</tbody>
							</table>
							</c:forEach>
						</td></tr>
					</tbody>
				</table>
			</div>
			<div class="clear"></div>
			<!-- 购物车列表 -->
			<div class="shop_bd_shdz_title">
				<h3>确认购物清单</h3>
			</div>
			<div class="clear"></div>
			<table>
				<thead>
					<tr>
						<th colspan="2"><span>商品</span></th>
						<th><span>单价(元)</span></th>
						<th><span>数量</span></th>
						<th><span>小计</span></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${myCartFood}" var="m">
						<tr>
							<td class="gwc_list_pic"><a href=""><img width="50px" height="60px"  src="${pageContext.request.contextPath}/userjs/images/img02.jpg" /></a></td>
							<td class="gwc_list_title"><a href="">${m.fname} </a></td>
							<td class="gwc_list_danjia"><span>￥<strong id="danjia_001">${m.fdprice}</strong></span></td>
							<td class="gwc_list_danjia"><strong id="danjia_001">${m.num}</strong></span></td>
							<td class="gwc_list_xiaoji"><span>￥<strong id="xiaoji_001" class="good_xiaojis">${m.xiaoji}</strong></span></td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="6">
							<div class="gwc_foot_zongjia">商品总价<span>￥<strong id="good_zongjia">${zongji}</strong></span></div>
							<div class="clear"></div>
							<div class="gwc_foot_links">
								<a href="tomyCart.action" class="go">返回上一步</a>
								<c:choose>
									<c:when test="${orders==null}">
										<a href="${pageContext.request.contextPath}/table/tableList.action" class="op">确认餐桌</a>
									</c:when>
									<c:otherwise>
										<a href="toOrderAndDetails.action?price=${zongji}" class="op">确认餐桌</a>
									</c:otherwise>
								</c:choose>
							</div>
						</td>
					</tr>
				</tfoot>
			</table>
			<!-- 购物车列表 End -->
		</div>
		<!-- 购物车有商品 end -->

	</div>
	<!-- 购物车 Body End -->         
 
	<div class="clear"></div>
	<div class="shop_footer">
            <div class="shop_footer_link">
                <p> 
					<a href="#">首页</a> |
				 	<a href="#">广告合作</a> |
				 	<a href="#">关于来怡饭店</a> |
				 	<a href="#">联系我们</a>
				</p>	
            </div>
            <div class="shop_footer_copy">
                <p>According to the first version designed by le yi hotels</p>
            </div>
        </div>
	<!-- Footer End -->
</body>
</html>

