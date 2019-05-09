package com.zy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zy.mapper.OrderMapper;
import com.zy.mapper.OrderMapperUser;
import com.zy.po.Order;
import com.zy.po.OrderExample;
import com.zy.po.OrderUser;
import com.zy.service.OrderService;

@Service("OrderService")
public class OrderServiceImpl implements OrderService{
	@Autowired
	private OrderMapper orderMapper;
	@Autowired
	private OrderMapperUser orderMapperUser;
	
	/**
	 * 厨师搜索接过的订单
	 */
	public List<Order> selectMyOrder(String cookno) throws Exception {
		OrderExample oe = new OrderExample();
		OrderExample.Criteria criteria = oe.createCriteria();
		criteria.andCooknoEqualTo(cookno);
		List<Order> orders = orderMapper.selectByExample(oe);
		if(orders.size()==0){
			return null;
		}else{
			return orders;
			
		}
	}

	/**
	 * 厨师搜索个人未接过的订单
	 */
	public List<OrderUser> selectOrder() throws Exception {
		return orderMapperUser.selectOrder();
	}

	
	public void delete(int id) throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void insert(Order order) throws Exception {
		// TODO Auto-generated method stub
		
	}

	/**
	 * 根据id查询订单
	 */
	public Order selectById(int id) throws Exception {
		
		return orderMapper.selectByPrimaryKey(id);
	}

	/**
	 * 更改订单信息
	 */
	public void update(Order order) throws Exception {
		
		orderMapper.updateByPrimaryKey(order);
	}

}
