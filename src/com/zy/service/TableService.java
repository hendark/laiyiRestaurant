package com.zy.service;

import java.util.List;

import com.zy.po.Table;


public interface TableService {
	
	public void update(Table table) throws Exception;
	public List<Table> selectByState(int id)throws Exception;
	public List<Table> selectAll() throws Exception;
	public Table selectById(int id)throws Exception;
}
