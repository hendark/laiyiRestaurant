package com.zy.service;


import com.zy.po.Employees;

public interface EmployeesService {
	public Employees login(String workno,String password,int type) throws Exception;
	public Employees selectById(int id) throws Exception;
	public void update(Employees employees) throws Exception;
}
