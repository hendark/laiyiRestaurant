package com.zy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.zy.mapper.UserMapper;
import com.zy.po.User;
import com.zy.po.UserExample;
import com.zy.service.UserService;

public class UserServiceImpl implements UserService{
	@Autowired
	private UserMapper userMapper;
	
	public User selectByid(int id) throws Exception {
		
		return userMapper.selectByPrimaryKey(id);
	}
	
	public User login(String username, String password) throws Exception {
		UserExample ue = new UserExample();
		UserExample.Criteria Criteria = ue.createCriteria();
		Criteria.andUsernameEqualTo(username);
		Criteria.andPasswordEqualTo(password);
		List<User> users = userMapper.selectByExample(ue);
		if(users.size()==0){
			return null;
		}else{
			return users.get(0);
		}
	}

}
