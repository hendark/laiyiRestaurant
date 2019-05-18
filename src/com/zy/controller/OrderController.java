package com.zy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zy.po.Details;
import com.zy.po.DetailsFood;
import com.zy.po.Order;
import com.zy.po.OrderUser;
import com.zy.po.User;
import com.zy.service.DetailsService;
import com.zy.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private DetailsService detailsService;

	@RequestMapping("/cookorder")
	public ModelAndView cookorder(
			
			ModelAndView mv)throws Exception{
		List<OrderUser>	orderUsers = orderService.selectOrder();
		mv.addObject("orderUsers", orderUsers);
		mv.setViewName("employees/cookOrderList");
		return mv;
	}
	
	@RequestMapping("/toOrderUpd")
	public ModelAndView toOrderUpd(
			@RequestParam("id") int id,
			ModelAndView mv)throws Exception{
		Order order = orderService.selectById(id);
		mv.addObject("order", order);
		mv.setViewName("employees/inCookWorNo");
		return mv;
	}
	

	@RequestMapping("/orderUpd")
	public ModelAndView orderUpd(
			Order order,
			ModelAndView mv)throws Exception{
		orderService.update(order);
		mv.setViewName("redirect:/order/cookorder.action");
		return mv;
	}
	
	@RequestMapping("/cookMyOrder")
	public ModelAndView cookMyOrder(
			@RequestParam("cookno") String cookno,
			ModelAndView mv)throws Exception{
		List<Order> orders = orderService.selectMyOrder(cookno);
		mv.addObject("orders", orders);
		mv.setViewName("employees/myOrder");
		return mv;
	}
	
	@RequestMapping("/orderDetails")
	public ModelAndView orderDetails(
			@RequestParam("id") int id,
			ModelAndView mv)throws Exception{
		List<DetailsFood> detailsFoods = detailsService.selectAllByOrderId(id);
		mv.addObject("detailsFoods", detailsFoods);
		mv.setViewName("employees/orderDetailsList");
		return mv;
	}
	
	@RequestMapping("/orderDetailsUpd")
	public ModelAndView orderDetailsUpd(
			@RequestParam("id") int id,
			ModelAndView mv)throws Exception{
		Details details = detailsService.selectById(id);
		details.setPrice(2.0);
		int orderid = details.getOrderid();
		detailsService.update(details);
		mv.setViewName("redirect:/order/orderDetails.action?id=2");
		return mv;
	}
	
	@RequestMapping("/userMyOrder")
	public ModelAndView userMyOrder(
			HttpSession session,
			ModelAndView mv)throws Exception{
		User user = (User)session.getAttribute("user");
		List<Order> orders = orderService.selectOrderByUserId(user.getId());
		mv.addObject("orders", orders);
		mv.setViewName("user/myOrder");
		return mv;
	}
	
	@RequestMapping("/userOrderDetails")
	public ModelAndView userOrderDetails(
			@RequestParam("id") int id,
			ModelAndView mv)throws Exception{
		List<DetailsFood> detailsFoods = detailsService.selectAllByOrderId(id);
		mv.addObject("detailsFoods", detailsFoods);
		mv.setViewName("user/orderDetails");
		return mv;
	}
}
