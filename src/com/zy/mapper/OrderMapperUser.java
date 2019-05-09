package com.zy.mapper;

import java.util.List;

import com.zy.po.OrderUser;

public interface OrderMapperUser {
	public List<OrderUser> selectOrder() throws Exception;
	public List<OrderUser> selectMyOrder() throws Exception;
}
