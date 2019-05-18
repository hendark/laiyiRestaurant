package com.zy.service;

import java.util.List;


import com.zy.po.Order;
import com.zy.po.OrderUser;

public interface OrderService {
	public List<OrderUser> selectOrder() throws Exception;
	public List<Order> selectMyOrder(String workno) throws Exception;
	public void insert(Order order) throws Exception;
	public void update(Order order) throws Exception;
	public void delete(int id) throws Exception;
	public Order selectById(int id) throws Exception;
	public List<Order> selectOrderByUserId(int id) throws Exception;
	public List<Order> selectOrderByUserIdAndState(int userid,int state)throws Exception;
}
