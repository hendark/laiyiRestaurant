package com.zy.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zy.po.Order;
import com.zy.po.Table;
import com.zy.po.User;
import com.zy.service.OrderService;
import com.zy.service.TableService;

@Controller
@RequestMapping("/table")
public class TableController {
	@Autowired
	private TableService tableService;
	@Autowired
	private OrderService orderService;
	
	@RequestMapping("/tableList")
	public ModelAndView tableList(
			ModelAndView mv)throws Exception{
		int id = 1;
		List<Table> tables = tableService.selectByState(id);
		mv.addObject("tables", tables);
		mv.setViewName("user/tableList");
		return mv;
		
	}
	
	@RequestMapping("/toydzhifu")
	public ModelAndView toydzhifu(
			@RequestParam("id") int id,
			@RequestParam("capacity") int capacity,
			HttpSession session,
			ModelAndView mv)throws Exception{
		if(session.getAttribute("user")==null){
			mv.setViewName("user/login");
		}else{
		mv.addObject("id", id);
		mv.addObject("capacity", capacity);
		mv.setViewName("user/ydzhifu");
		}
		return mv;
	}
	
	@RequestMapping("/zhifuchenggong")
	public ModelAndView zhifuchenggong(
			@RequestParam("id") int id,
			@RequestParam("capacity") int capacity,
			HttpSession session,
			ModelAndView mv)throws Exception{
		
		Table table = new Table();
		table.setId(id);
		table.setState(2);
		table.setCapacity(capacity);
		tableService.update(table);
		
		Order order = new Order();
		User user = (User)session.getAttribute("user");
		order.setUserid(user.getId());
		order.setTableid(id);
		order.setOrdertime(new Date());
		order.setState(1);
		order.setPrice(50.00);
		orderService.insert(order);
		
		List<Order> orders = orderService.selectOrderByUserIdAndState(user.getId(), 1);
		mv.addObject("orders", orders);
		mv.setViewName("user/myTable");
		return mv;
		
	}
	
	@RequestMapping("/myTable")
	public ModelAndView myTable(
			HttpSession session,
			ModelAndView mv)throws Exception{
		User user = (User)session.getAttribute("user");	
		List<Order> orders = orderService.selectOrderByUserIdAndState(user.getId(), 1);
		mv.addObject("orders", orders);
		mv.setViewName("user/myTable");
		return mv;
		
	}
}
