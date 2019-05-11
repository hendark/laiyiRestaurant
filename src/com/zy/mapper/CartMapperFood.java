package com.zy.mapper;

import java.util.List;

import com.zy.po.CartFood;

public interface CartMapperFood {
	public List<CartFood> selectCartFoodByUserId(int id)throws Exception;
}
