package com.zy.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zy.po.CartFood;
import com.zy.po.User;
import com.zy.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {
	@Autowired
	private CartService cartService;
	
	@RequestMapping("/tomyCart")
	public ModelAndView tomyCart(
		HttpSession session,
		ModelAndView mv)throws Exception{
		if(session.getAttribute("user")==null){
			mv.setViewName("user/login");
		}else{
			User user = (User)session.getAttribute("user");
			List<CartFood> myCartFood = cartService.selectCartFoodByUserId(user.getId());
			double zongji=0;
			for (int i = 0; i < myCartFood.size(); i++) {
				zongji+=myCartFood.get(i).getXiaoji();
			}
			mv.addObject("zongji", zongji);
			mv.addObject("myCartFood", myCartFood);
			mv.setViewName("user/cart");
		}
		return mv;
		
	}
}
