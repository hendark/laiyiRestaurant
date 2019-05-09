package com.zy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zy.mapper.EmployeesMapper;
import com.zy.po.Employees;
import com.zy.po.EmployeesExample;
import com.zy.service.EmployeesService;

@Service("EmployeesService")
public class EmployeesServiceImpl implements EmployeesService{
	@Autowired
	private EmployeesMapper EmployeesMapper;

	/**
	 * 员工登陆8
	 */
	public Employees login(String workno, String password,int type)
			throws Exception {
		EmployeesExample em = new EmployeesExample();
		EmployeesExample.Criteria Criteria = em.createCriteria();
		Criteria.andWorknoEqualTo(workno);
		Criteria.andPasswordEqualTo(password);
		Criteria.andTypeEqualTo(type);
		List<Employees> list = EmployeesMapper.selectByExample(em);
		if(list.size()==0){
			return null;
		}else{
			return list.get(0);
			
		}
		
	}

	/**
	 * 员工根据id查寻个人信息
	 */
	public Employees selectById(int id) throws Exception {
		
		return EmployeesMapper.selectByPrimaryKey(id);
	}

	/**
	 * 员工更改信息方法
	 */
	public void update(Employees employees) throws Exception {
		
		EmployeesMapper.updateByPrimaryKey(employees);		
	}
	

}
