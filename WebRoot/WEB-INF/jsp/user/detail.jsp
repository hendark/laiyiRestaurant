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
	<title>商品详细页面</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/base.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_common.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_manager.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_header.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_list.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_goods.css" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/jquery.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/topNav.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/shop_goods.js" ></script>
	<style type="text/css">
		.font > p {
			font-size: 40px;
			text-shadow: 5px 5px 5px black, 0px 0px 2px red, 2px 2px 3px green;
		}
	</style>
</head>
<body>
	<!-- Header  -zy-2019/05/10 -->
	<div class="shop_hd">
		<!-- Header TopNav -->
		<div class="shop_hd_topNav">
			<div class="shop_hd_topNav_all">
				<!-- Header TopNav Left -->
				<div class="shop_hd_topNav_all_left">
					<p>您好，欢迎来到<b><a href="/">ShopCZ商城</a></b>[<a href="">登录</a>][<a href="">注册</a>]</p>
				</div>
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
			        <li id="shop_search">店铺</li>
			    </ul>
                            <div class="clear"></div>
			    <div class="search_form">
			    	<form method="post" action="index.php">
			    		<div class="search_formstyle">
			    			<input type="text" class="search_form_text" name="search_content" value="搜索其实很简单！" />
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
						<li id="cat_1" class="">
							<h3><a href="" title="男女服装">男女服装</a></h3>
							<div id="cat_1_menu" class="cat_menu clearfix" style="">
								<dl class="clearfix">
									<dt><a href="女装" href="">女装</a></dt>
									<dd>
										<a href="">风衣</a>
									</dd>
								</dl>
                            </div>
                        </li>
                        <li class="more"><a href="">查看更多分类</a></li>
					</ul>
				</div>
			</div>
			<!-- 所有商品菜单 END -->
			<!-- 普通导航菜单 -->
			<ul class="shop_hd_menu_nav">
				<li class="current_link"><a href=""><span>首页</span></a></li>			
				<li class="link"><a href=""><span>我的订单</span></a></li>
				<li class="link"><a href=""><span>我的购物车</span></a></li>
				<li class="link"><a href=""><span>个人中心</span></a></li>
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
			<a href="#">首页</a>&nbsp;›&nbsp;
			<a href="#">商品详情页</a>&nbsp;›&nbsp;
		</span>
	</div>
	<div class="clear"></div>
	<!-- Header End -->
	          
   	<!-- Goods Body -->
	<div class="shop_goods_bd clear">

		<!-- 商品展示 -->
		<div class="shop_goods_show">
			<div class="shop_goods_show_left">
				<!-- 京东商品展示 -->
				<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_goodPic.css" type="text/css" />
				<script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/shop_goodPic_base.js"></script>
				<script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/lib.js"></script>
				<script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/163css.js"></script>
				<div id="preview">
					<div class=jqzoom id="spec-n1" onClick="window.open('/')"><IMG height="350" src="${pageContext.request.contextPath}/userjs/images/img02.jpg" jqimg="${pageContext.request.contextPath}/userjs/images/img02.jpg" width="350">
						</div>
						<div id="spec-n5">
							<div class=control id="spec-left">
								<img src="${pageContext.request.contextPath}/userjs/images/left.gif" />
							</div>
							<div id="spec-list">
								<ul class="list-h">
									<li><img src="${pageContext.request.contextPath}/userjs/images/img01.jpg"> </li>
									<li><img src="${pageContext.request.contextPath}/userjs/images/img02.jpg"> </li>
									<li><img src="${pageContext.request.contextPath}/userjs/images/img03.jpg"> </li>
									<li><img src="${pageContext.request.contextPath}/userjs/images/img01.jpg"> </li>
									<li><img src="${pageContext.request.contextPath}/userjs/images/img02.jpg"> </li>
									<li><img src="${pageContext.request.contextPath}/userjs/images/img03.jpg"> </li>
									<li><img src="${pageContext.request.contextPath}/userjs/images/img01.jpg"> </li>
									<li><img src="${pageContext.request.contextPath}/userjs/images/img02.jpg"> </li>
									<li><img src="${pageContext.request.contextPath}/userjs/images/img03.jpg"> </li>
								</ul>
							</div>
							<div class=control id="spec-right">
								<img src="${pageContext.request.contextPath}/userjs/images/right.gif" />
							</div>
							
					    </div>
					</div>

					<SCRIPT type=text/javascript>
						$(function(){			
						   $(".jqzoom").jqueryzoom({
								xzoom:400,
								yzoom:400,
								offset:10,
								position:"right",
								preload:1,
								lens:1
							});
							$("#spec-list").jdMarquee({
								deriction:"left",
								width:350,
								height:56,
								step:2,
								speed:4,
								delay:10,
								control:true,
								_front:"#spec-right",
								_back:"#spec-left"
							});
							$("#spec-list img").bind("mouseover",function(){
								var src=$(this).attr("src");
								$("#spec-n1 img").eq(0).attr({
									src:src.replace("\/n5\/","\/n1\/"),
									jqimg:src.replace("\/n5\/","\/n0\/")
								});
								$(this).css({
									"border":"2px solid #ff6600",
									"padding":"1px"
								});
							}).bind("mouseout",function(){
								$(this).css({
									"border":"1px solid #ccc",
									"padding":"2px"
								});
							});				
						})
						</SCRIPT>
					<!-- 来怡饭店商品详情展示 End -->

			</div>
			<div class="shop_goods_show_right">
				<ul>
					<li>
						<strong style="font-size:14px; font-weight:bold;">${food.fname}</strong>
					</li>
					<li>
						<label>原价：</label>
						<span><del>${food.fprice}</del>元</span>
					</li>
					<li>
						<label>折扣价：</label>
						<span><strong>${food.fdprice}</strong>元</span>
					</li>
					<li>
						<label>库存是否充足：</label>
						<span>${food.fstate==1?"充足":"无材料"}</span>
					</li>
					<li>
						<label>是否特色菜：</label>
						<span>${food.fischara==1?"特色菜":"否"}</span>
					</li>
					<li class="goods_num">
						<label>购买数量：</label>
						<span><a class="good_num_jian" id="good_num_jian" href="javascript:void(0);"></a><input type="text" value="1" id="good_nums" class="good_nums" /><a href="javascript:void(0);" id="good_num_jia" class="good_num_jia"></a></span>
					</li>
					<li style="padding:20px 0;">
						<label>&nbsp;</label>
						<span><a href="" class="goods_sub goods_sub_gou" >加入购物车</a></span>
					</li>
				</ul>
			</div>
		</div>
		<!-- 商品展示 End -->
        
        <!-- 右边购物列表 -->
		<div class="shop_member_bd_right clearfix">
			
			<div class="shop_meber_bd_good_lists clearfix">
				<div class="title"><h3>评价列表</h3></div>
				<table>
					<thead class="tab_title">
						<th style="width:20px;"><span>&nbsp;</span></th>
						<th style="width:320px;"><span>评价内容</span></th>
						<th style="width:180px;"><span>评价人</span></th>
						<th style="width:100px;"><span>宝贝信息</span></th>
					</thead>
					<tbody>
						<c:forEach items="${evaluations}" var="e">
							<tr><td colspan="5">
								<table class="good" style="height:50px">
									<tbody>
										<tr>
											<td class="pingjia_pic"><span class="pingjia_type pingjia_type_1"></span></td>
											<c:choose>
												<c:when test="${e.score==5}">
													<td class="pingjia_title"><span> 好评！</span></td>
												</c:when>
												<c:otherwise>
													<td class="pingjia_title"><span> 差评！</span></td>
												</c:otherwise>
											</c:choose>
											<td class="pingjia_danjia"><strong>${e.username}</strong></td>
											<td class="pingjia_shuliang">${e.fname}<br/>${e.fdprice}元</td>
										</tr>
									</tbody>
								</table>
							</td></tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<!-- 右边购物列表 End -->                                
                                   
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

