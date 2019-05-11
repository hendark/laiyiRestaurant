package com.zy.controller;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.zy.po.Employees;
import com.zy.service.EmployeesService;

@Controller
@RequestMapping("/employees")
public class EmployeesController {
	@Autowired
	private EmployeesService EmployeesService;
	
	@RequestMapping("/login")
	public ModelAndView toindex(
			@RequestParam("workno") String workno,
			@RequestParam("password") String password,
			@RequestParam("type") int type,
			ModelAndView mv) throws Exception {
		Employees employees = 	EmployeesService.login(workno, password,type);
		if(employees==null){
			mv.setViewName("redirect:/employeesLogin.jsp");
		}else{
			mv.addObject("employees", employees);	
			mv.setViewName("employees/cookIndex");
		}
		return mv;
	}
	
	@RequestMapping("/tolist")
	public ModelAndView tolist(
			@RequestParam("id") int id,
			ModelAndView mv) throws Exception{
		Employees employees = 	EmployeesService.selectById(id);
		mv.addObject("employees",employees);
		mv.setViewName("employees/list");
		return mv;
	}
	
	@RequestMapping("/toupd")
	public ModelAndView toupd(
			@RequestParam("id") int id,
			ModelAndView mv) throws Exception{
		Employees employees = 	EmployeesService.selectById(id);
		mv.addObject("employees",employees);
		mv.setViewName("employees/employeesUpd");
		return mv;
	}
	
	@RequestMapping("/employeesupd")
	public ModelAndView employeesupd(
			Employees employees,
			ModelAndView mv) throws Exception{
		EmployeesService.update(employees);
		mv.setViewName("welcome");
		return mv;
		
	}
	
}
