package com.zy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.zy.mapper.TableMapper;
import com.zy.po.Table;
import com.zy.po.TableExample;
import com.zy.service.TableService;

public class TableServiceImpl implements TableService{
	@Autowired
	private TableMapper tableMapper;

	public List<Table> selectAll() throws Exception {
		
		TableExample te = new TableExample();
		return tableMapper.selectByExample(te);
	}

	public List<Table> selectByState(int id) throws Exception {
		
		TableExample te = new TableExample();
		TableExample.Criteria Criteria = te.createCriteria();
		Criteria.andStateEqualTo(id);
		List<Table> tables = tableMapper.selectByExample(te);
		if(tables.size()==0){
		return null;
		}else{
			return tables;
		}
	}

	public void update(Table table) throws Exception {
		
		tableMapper.updateByPrimaryKey(table);
	}

	public Table selectById(int id) throws Exception {
		
		return tableMapper.selectByPrimaryKey(id);
	}

}
