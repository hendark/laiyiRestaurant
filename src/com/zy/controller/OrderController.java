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
import com.zy.po.Table;
import com.zy.po.User;
import com.zy.service.DetailsService;
import com.zy.service.OrderService;
import com.zy.service.TableService;

@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	private OrderService orderService;
	@Autowired
	private DetailsService detailsService;
	@Autowired
	private TableService tableService;

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
		details.setPrice(2.00);
		int orderid = details.getOrderid();
		detailsService.update(details);
		mv.setViewName("redirect:/order/orderDetails.action?id="+orderid);
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
	
	@RequestMapping("/waiterLookOrder")
	public ModelAndView waiterLookOrder(
			ModelAndView mv)throws Exception{
		List<Order> orders = orderService.selectByState(2);
		mv.addObject("orders", orders);
		mv.setViewName("employees/waiterLookOrder");
		return mv;
	}
	
	@RequestMapping("/waiterOrderDetails")
	public ModelAndView waiterOrderDetails(
			@RequestParam("id") int id,
			ModelAndView mv)throws Exception{
		List<DetailsFood> detailsFoods = detailsService.selectAllByOrderId(id);
		mv.addObject("detailsFoods", detailsFoods);
		mv.setViewName("employees/shangCai");
		return mv;
	}
	
	@RequestMapping("/shangCaiUpd")
	public ModelAndView shangCaiUpd(
			@RequestParam("id") int id,
			ModelAndView mv)throws Exception{
		Details details = detailsService.selectById(id);
		details.setPrice(3.00);
		int orderid = details.getOrderid();
		detailsService.update(details);
		mv.setViewName("redirect:/order/waiterOrderDetails.action?id="+orderid);
		return mv;
	}
	
	@RequestMapping("/waiterLookOrderByState23")
	public ModelAndView waiterLookOrderByState23(
			ModelAndView mv)throws Exception{
		List<Order> orders = orderService.selectByState23(2, 3);
		mv.addObject("orders", orders);
		mv.setViewName("employees/waiterLookOrderByState23");
		return mv;
	}
	
	@RequestMapping("/dasao")
	public ModelAndView dasao(
			@RequestParam("id") int id,
			@RequestParam("tableid") int tableid,
			ModelAndView mv)throws Exception{
		Order order = orderService.selectById(id);
		order.setState(4);
		orderService.update(order);
		Table table = tableService.selectById(tableid);
		table.setState(1);
		tableService.update(table);
		mv.setViewName("redirect:/order/waiterLookOrderByState23.action");
		return mv;
	}
	
	@RequestMapping("/jiezhang")
	public ModelAndView jiezhang(
			@RequestParam("id") int id,
			ModelAndView mv)throws Exception{
		Order order = orderService.selectById(id);
		order.setState(3);
		orderService.update(order);
		mv.setViewName("redirect:/order/waiterLookOrder.action");
		return mv;
	}
}
