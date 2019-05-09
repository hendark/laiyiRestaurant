package com.zy.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zy.po.Order;
import com.zy.po.User;
import com.zy.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/lookUser")
	public ModelAndView lookUser(
			@RequestParam("id") int id,
			ModelAndView mv)throws Exception{
		User user = userService.selectByid(id);
		mv.addObject("user", user);
		mv.setViewName("employees/cookOrderDetail");
		return mv;
	}

}
