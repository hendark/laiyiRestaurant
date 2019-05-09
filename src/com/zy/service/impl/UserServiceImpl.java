package com.zy.service.impl;

import org.springframework.beans.factory.annotation.Autowired;

import com.zy.mapper.UserMapper;
import com.zy.po.User;
import com.zy.service.UserService;

public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;
	public User selectByid(int id) throws Exception {
		
		return userMapper.selectByPrimaryKey(id);
	}

}
