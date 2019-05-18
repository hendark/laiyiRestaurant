package com.zy.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zy.po.Cart;
import com.zy.po.CartFood;
import com.zy.po.Details;
import com.zy.po.Order;
import com.zy.po.User;
import com.zy.service.CartService;
import com.zy.service.DetailsService;
import com.zy.service.OrderService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	private CartService cartService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private DetailsService detailsService;

	
	@RequestMapping("/tomyCart")
	public ModelAndView tomyCart(
		HttpSession session,
		ModelAndView mv)throws Exception{
		if(session.getAttribute("user")==null){
			mv.setViewName("user/login");
		}else{
			User user = (User)session.getAttribute("user");
			List<CartFood> myCartFood = cartService.selectCartFoodByUserId(user.getId());
			if(myCartFood==null){
				mv.setViewName("user/cart");
			}else{
			double zongji=0;
			for (int i = 0; i < myCartFood.size(); i++) {
				zongji+=myCartFood.get(i).getXiaoji();
			}
			mv.addObject("zongji", zongji);
			mv.addObject("myCartFood", myCartFood);
			mv.setViewName("user/cart");
			}
		}
		return mv;
		
	}
	
	@RequestMapping("/toTableAndCart")
	public ModelAndView toTableAndCart(
		HttpSession session,
		ModelAndView mv)throws Exception{
		
		User user = (User)session.getAttribute("user");
		List<CartFood> myCartFood = cartService.selectCartFoodByUserId(user.getId());
		double zongji=0;
		for (int i = 0; i < myCartFood.size(); i++) {
			zongji+=myCartFood.get(i).getXiaoji();
		}
		mv.addObject("zongji", zongji);
		mv.addObject("myCartFood", myCartFood);
	
		List<Order> orders = orderService.selectOrderByUserIdAndState(user.getId(), 1);
		mv.addObject("orders", orders);
		
		mv.setViewName("user/tableAndCart");
		return mv;
	}
	
	@RequestMapping("/toOrderAndDetails")
	public ModelAndView toOrderAndDetails(
		double price,
		HttpSession session,
		ModelAndView mv)throws Exception{
		
		User user = (User)session.getAttribute("user");	
		List<Order> orders = orderService.selectOrderByUserIdAndState(user.getId(), 1);
		Order order = new Order();
		order.setId(orders.get(0).getId());
		order.setUserid(user.getId());
		order.setTableid(orders.get(0).getTableid());
		order.setOrdertime(new Date());
		order.setState(1);
		order.setPrice(price);
		orderService.update(order);
		
		List<Cart> myCart = cartService.selectAllByUserId(user.getId());
		for (int i = 0; i < myCart.size(); i++) {
			Details detail = new Details();
			detail.setNum(myCart.get(i).getNum());
			detail.setFoodid(myCart.get(i).getFoodid());
			detail.setOrderid(orders.get(0).getId());
			detail.setPrice(1.00);
			detailsService.insert(detail);
			cartService.del(myCart.get(i).getId());
		}
		mv.setViewName("redirect:/cart/tomyCart.action");
		return mv;
	}
}
