package com.zy.controller;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	
	@RequestMapping("/userLogin")
	public ModelAndView userLogin(
			ModelAndView mv)throws Exception{
		mv.setViewName("user/login");	
		return mv;
	}
	
	@RequestMapping("/login")
	public ModelAndView toindex(
			HttpSession session,
			@RequestParam("username") String username,
			@RequestParam("password") String password,
			ModelAndView mv)throws Exception{
		User user = userService.login(username, password);
		if(user==null){
			mv.setViewName("user/login");
		}else{
			session.setAttribute("user", user);
			mv.setViewName("user/index");	
		}
		return mv;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(
			HttpSession session,
			ModelAndView mv)throws Exception{
		session.removeAttribute("user");
		mv.setViewName("user/index");	
		return mv;
	}
	
	@RequestMapping("/myInfo")
	public ModelAndView myinfo(
			HttpSession session,
			ModelAndView mv)throws Exception{
		if(session.getAttribute("user")==null){
			mv.setViewName("user/login");
		}else{
			User user = (User)session.getAttribute("user");
			User myuser = userService.selectByid(user.getId());
			mv.addObject("myuser", myuser);
			mv.setViewName("user/myInfo");
		}
		return mv;
	}
	
	@RequestMapping("/myInfoToUpd")
	public ModelAndView myInfoToUpd(
			HttpSession session,
			ModelAndView mv)throws Exception{
		User user = (User)session.getAttribute("user");
		User myuser = userService.selectByid(user.getId());
		mv.addObject("myuser", myuser);
		mv.setViewName("user/myInfoUpd");
		return mv;
	}
	
	@RequestMapping("/myInfoUpd")
	public ModelAndView myInfoUpd(
			User user,
			ModelAndView mv)throws Exception{
		userService.update(user);		
		mv.setViewName("redirect:/user/myInfo.action");
		return mv;
	}

}
