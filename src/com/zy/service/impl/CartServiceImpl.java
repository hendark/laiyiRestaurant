package com.zy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.zy.mapper.CartMapper;
import com.zy.mapper.CartMapperFood;
import com.zy.po.Cart;
import com.zy.po.CartExample;
import com.zy.po.CartFood;
import com.zy.service.CartService;

public class CartServiceImpl implements CartService{
	@Autowired
	private CartMapper cartMapper;
	@Autowired
	private CartMapperFood cartMapperFood;
	
	public void del(int id) throws Exception {
		
		cartMapper.deleteByPrimaryKey(id);
	}

	public void insert(Cart cart) throws Exception {
		
		cartMapper.insert(cart);
	}

	public List<Cart> selectAllByUserId(int id) throws Exception {
		
		CartExample ce = new CartExample();
		CartExample.Criteria Criteria= ce.createCriteria();
		Criteria.andUseridEqualTo(id);
		List<Cart> myCart = cartMapper.selectByExample(ce);
		if(myCart.size()==0){
			return null;
		}else{
			return myCart;
		}
	}

	public void update(Cart cart) throws Exception {
		
		cartMapper.updateByPrimaryKey(cart);
	}

	public List<CartFood> selectCartFoodByUserId(int id) throws Exception {
		CartExample ce = new CartExample();
		CartExample.Criteria Criteria= ce.createCriteria();
		Criteria.andUseridEqualTo(id);
		List<CartFood> myCartFood = cartMapperFood.selectCartFoodByUserId(id);
		if(myCartFood.size()==0){
			return null;
		}else{
			return myCartFood;
		}
	}

}
