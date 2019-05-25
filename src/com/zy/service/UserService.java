package com.zy.service;

import com.zy.po.User;

public interface UserService {

	public User selectByid(int id)throws Exception;
	public User login(String username,String password)throws Exception;
	public void update(User user) throws Exception;
	public void insert(User user) throws Exception;
	public User selectByUsername(String username)throws Exception;
}
