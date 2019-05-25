package com.zy.service;

import java.util.List;

import com.zy.po.Cart;
import com.zy.po.CartFood;

public interface CartService {
	
	public List<Cart> selectAllByUserId(int id) throws Exception;
	public void insert(Cart cart) throws Exception;
	public void update(Cart cart) throws Exception;
	public void del(int id) throws Exception;
	public List<CartFood> selectCartFoodByUserId(int id)throws Exception;
	public Cart selectByUserIdAndFoodId(int userid,int foodid) throws Exception;
	public Cart selectById(int id)throws Exception;
}
