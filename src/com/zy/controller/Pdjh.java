package com.zy.controller;


import java.io.PrintWriter;
import java.util.LinkedList;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/pdjh")
public class Pdjh {
	private int number = 0;
	@RequestMapping("/pdjh")
	public ModelAndView pdjh(
		HttpSession session,
		ModelAndView mv)throws Exception{
		if(session.getAttributeNames().equals("list")==false){
			LinkedList list=new LinkedList();
			session.setAttribute("list", list);
			mv.setViewName("employees/startpdjh");
		}else{
			mv.setViewName("employees/jhpd");
		}
		return mv;
	}
	
	@RequestMapping("/add")
	public ModelAndView add(
		HttpSession session,
		ModelAndView mv)throws Exception{
		LinkedList list =(LinkedList)session.getAttribute("list");
		number=number+1;
		list.addLast(number);
		for (Object object : list) {
			System.out.println(object);
		}
		session.setAttribute("list", list);
		mv.setViewName("employees/jhpd");
		return mv;
	}

	@RequestMapping("/remove")
	public ModelAndView remove(
		HttpSession session,
		HttpServletResponse response,
		ModelAndView mv)throws Exception{
		LinkedList list =(LinkedList) session.getAttribute("list");
		if(list.isEmpty()){
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out=response.getWriter();
			out.print("<script type='text/javascript'>alert('已经没有号可以移除了!');</script>");
		}else{
			list.removeFirst();
			session.setAttribute("list", list);
		}
		mv.setViewName("employees/jhpd");
		return mv;
	}
	
	@RequestMapping("/clear")
	public ModelAndView clear(
		HttpSession session,
		ModelAndView mv)throws Exception{
		LinkedList list =(LinkedList) session.getAttribute("list");
		list.clear();
		session.removeAttribute("list");
		mv.setViewName("redirect:/pdjh/pdjh.action");
		return mv;
	}
}
