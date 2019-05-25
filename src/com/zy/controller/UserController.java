package com.zy.controller;


import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.UserRoleAuthorizationInterceptor;

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
	
	@RequestMapping("/toregister")
	public ModelAndView toregister(
			ModelAndView mv)throws Exception{
		mv.setViewName("user/register");	
		return mv;
	}

	@RequestMapping("/register")
	public void register(
			HttpServletResponse response,
			String username,
			String password, 
			String surepassword)throws Exception{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		User selectuser = userService.selectByUsername(username);
		if(username==null||password==null){
			out.print("<script type='text/javascript'>alert('用户名不能为空!');</script>");
		}else if(selectuser!=null){
			out.print("<script type='text/javascript'>alert('用户名已被占用!');</script>");
		}else{
			if(password.equals(surepassword)){
				User user = new User();
				user.setUsername(username);
				user.setPassword(password);
				userService.insert(user);
				out.print("<script type='text/javascript'>alert('注册成功，请登录');location='userLogin.action';</script>");
			}else {
				String pswinfo;
				pswinfo="密码不一致，请重新输入！";
				out.println(pswinfo);
			}
		}
	}
}
