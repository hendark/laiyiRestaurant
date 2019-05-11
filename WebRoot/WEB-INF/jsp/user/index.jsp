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
	<title>来怡饭店首页</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/base.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_common.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_header.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_home.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_manager.css" type="text/css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/userjs/css/shop_list.css" type="text/css" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/jquery.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/topNav.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/focus.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/userjs/js/shop_home_tab.js" ></script>
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
				<c:choose>
					<c:when test="${sessionScope.user.username!=null}">
						<div class="shop_hd_topNav_all_left">
							<p>您好！<b><a href="#">${sessionScope.user.username}</a></b>[<a href="${pageContext.request.contextPath}/user/logout.action">退出</a>]</p>
						</div>
					</c:when>
					<c:otherwise>
						<div class="shop_hd_topNav_all_left">
							<p>您好，欢迎来到<b><a href="/">来怡饭店</a></b>[<a href="${pageContext.request.contextPath}/user/userLogin.action">登录</a>][<a href="">注册</a>]</p>
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
						<c:forEach items="${sessionScope.cuisines}" var="c">
							<li id="cat_1" class="">
								<h3><a href="#">${c.cuisine}</a></h3>
	                        </li>
                        </c:forEach>
					</ul>
				</div>
			</div>
			<!-- 所有商品菜单 END -->
			<!-- 普通导航菜单 -->
			<ul class="shop_hd_menu_nav">
				<li class="current_link"><a href=""><span>首页</span></a></li>			
				<li class="link"><a href=""><span>我的订单</span></a></li>
				<li class="link"><a href="${pageContext.request.contextPath}/cart/tomyCart.action"><span>我的购物车</span></a></li>
				<li class="link"><a href=""><span>个人中心</span></a></li>
			</ul>
			<!-- 普通导航菜单 End -->
		</div>
		<!-- Header Menu End -->

	</div>
	<div class="clear"></div>
	<!-- Header End -->
	          
            <!-- 第二块区域 -->
            <div class="shop_bd_2 clearfix">
                <!-- 特别推荐 -->
                <div class="shop_bd_tuijian">
                    <ul class="tuijian_tabs">
                        <li class="hover"  onmouseover="easytabs('1', '1');" onfocus="easytabs('1', '1');" onclick="return false;" id="tuijian_content_btn_1"><a href="javascript:void(0);">特别推荐</a></li>
                        <li onmouseover="easytabs('1', '2');" onfocus="easytabs('1', '2');" onclick="return false;" id="tuijian_content_btn_2" ><a href="javascript:void(0);">热门商品</a></li>
                        <li onmouseover="easytabs('1', '3');" onfocus="easytabs('1', '3');" onclick="return false;" id="tuijian_content_btn_3"><a href="javascript:void(0);">新品上架</a></li>
                    </ul>
                    <div class="tuijian_content">
                        <div id="tuijian_content_1" class="tuijian_shangpin" style="display: block;">
                            <ul>
                                <li>
                                    <dl>
                                        <dt><a href="${pageContext.request.contextPath}/food/detail.action?id=1"><img width="160px" height="120px" src="${pageContext.request.contextPath}/userjs/images/img02.jpg" /></a></dt>
                                        <dd><a href="${pageContext.request.contextPath}/food/detail.action?id=1">油焖大虾</a></dd>
                                        <dd> 原价：   <del>188.00</del>元</dd>
                                        <dd> 折扣价：<em>168.00</em>元</dd>
                                    </dl>
                                </li>
                                <li>
                                  	<dl>
                                        <dt><a href=""><img width="160px" height="120px" src="${pageContext.request.contextPath}/userjs/images/img02.jpg" /></a></dt>
                                        <dd><a href="#">龙虾</a></dd>
                                        <dd> 商城价：<em>256.00</em>元</dd>
                                    </dl>
                                </li>
                                
                                <li>
                                    <dl>
                                        <dt><a href=""><img width="160px" height="120px" src="${pageContext.request.contextPath}/userjs/images/img02.jpg" /></a></dt>
                                        <dd><a href="#">龙虾</a></dd>
                                        <dd> 商城价：<em>256.00</em>元</dd>
                                    </dl>
                                </li>
                                
                                <li>
                                    <dl>
                                        <dt><a href=""><img width="160px" height="120px" src="${pageContext.request.contextPath}/userjs/images/img02.jpg" /></a></dt>
                                        <dd><a href="#">龙虾</a></dd>
                                        <dd> 商城价：<em>256.00</em>元</dd>
                                    </dl>
                                </li>
                                
                                
                            </ul>
                        </div>
                        
                        <div id="tuijian_content_2" class="tuijian_shangpin">
                            <ul>
                                <li>
                                    <dl>
                                        <dt><a href=""><img width="160px" height="120px" src="${pageContext.request.contextPath}/userjs/images/img02.jpg" /></a></dt>
                                        <dd><a href="#">龙虾</a></dd>
                                        <dd> 商城价：<em>256.00</em>元</dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl>
                                        <dt><a href=""><img width="160px" height="120px" src="${pageContext.request.contextPath}/userjs/images/img02.jpg" /></a></dt>
                                        <dd><a href="#">龙虾</a></dd>
                                        <dd> 商城价：<em>256.00</em>元</dd>
                                    </dl>
                                </li>
                                
                                <li>
                                    <dl>
                                        <dt><a href=""><img width="160px" height="120px" src="${pageContext.request.contextPath}/userjs/images/img02.jpg" /></a></dt>
                                        <dd><a href="#">龙虾</a></dd>
                                        <dd> 商城价：<em>256.00</em>元</dd>
                                    </dl>
                                </li>
                                
                                <li>
                                    <dl>
                                        <dt><a href=""><img width="160px" height="120px" src="${pageContext.request.contextPath}/userjs/images/img02.jpg" /></a></dt>
                                        <dd><a href="#">龙虾</a></dd>
                                        <dd> 商城价：<em>256.00</em>元</dd>
                                    </dl>
                                </li>
                                
                            </ul>
                        </div>
                        <div id="tuijian_content_3" class="tuijian_shangpin tuijian_content">
                            <ul>
                                <li>
                                    <dl>
                                        <dt><a href=""><img width="160px" height="120px" src="${pageContext.request.contextPath}/userjs/images/img02.jpg" /></a></dt>
                                        <dd><a href="#">龙虾</a></dd>
                                        <dd> 商城价：<em>256.00</em>元</dd>
                                    </dl>
                                </li>
                                <li>
                                    <dl>
                                        <dt><a href=""><img width="160px" height="120px" src="${pageContext.request.contextPath}/userjs/images/img02.jpg" /></a></dt>
                                        <dd><a href="#">龙虾</a></dd>
                                        <dd> 商城价：<em>256.00</em>元</dd>
                                    </dl>
                                </li>
                                
                                <li>
                                    <dl>
                                        <dt><a href=""><img width="160px" height="120px" src="${pageContext.request.contextPath}/userjs/images/img02.jpg" /></a></dt>
                                        <dd><a href="#">龙虾</a></dd>
                                        <dd> 商城价：<em>256.00</em>元</dd>
                                    </dl>
                                </li>
                                
                                <li>
                                    <dl>
                                        <dt><a href=""><img width="160px" height="120px" src="${pageContext.request.contextPath}/userjs/images/img02.jpg" /></a></dt>
                                        <dd><a href="#">龙虾</a></dd>
                                        <dd> 商城价：<em>256.00</em>元</dd>
                                    </dl>
                                </li>
                                
                            </ul>
                        </div>
                        
                    </div>

                </div>
                <!-- 特别推荐 End -->     
                 
                <div class="clear"></br></div>    
                
		        <!-- 右边购物列表 -->
				<div class="shop_member_bd_right clearfix">
					
					<div class="shop_meber_bd_good_lists clearfix">
						<div class="title"><h3>所有菜品</h3></div>
						
						<!-- 商品列表 -->
					<div class="shop_bd_list_content clearfix">
						<ul>
							<c:forEach items="${sessionScope.foodcuisines}" var="f">
							<li>
								<dl>
									<dt><a href="${pageContext.request.contextPath}/food/detail.action?id=${f.id}"><img src="${pageContext.request.contextPath}/userjs/images/img03.jpg" /></a></dt>
									<dd class="title"><a href="${pageContext.request.contextPath}/food/detail.action?id=${f.id}">${f.fname}</a></dd>
									<dd class="content">
									<li>
										<label>原价：</label>
										<span><del>${f.fprice}</del>元</span>
									</li>
									<li>
										<span class="goods_jiage">折扣价：<strong>${f.fdprice}</strong>元</span>
									</li>
									<li>
										<label>库存是否充足：</label>
										<span>${f.fstate==1?"充足":"无材料"}</span>
									</li>
									<li>
										<label>是否特色菜：</label>
										<span >${f.fischara==1?"特色菜":"否"}</span>
									</li>
									</dd>
								</dl>
							</li>
							</c:forEach>
						</ul>
					</div>
					<div class="clear"></div>
					<div class="pagination"> 
						<ul><li><span>首页</span></li>
							<li><span>上一页</span></li>
							<li><span class="currentpage">1</span></li>
							<li><span>下一页</span></li>
							<li><span>末页</span></li>
						</ul> 
					</div>
					<!-- 商品列表 End -->
		
					</div>
				</div>
				<!-- 右边购物列表 End -->    
		              
		            </div>
		            <div class="clear"></div>
		            <!-- 第二块区域 End -->
                                         
                                   
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

