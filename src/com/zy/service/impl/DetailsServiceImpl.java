package com.zy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.zy.mapper.DetailsMapper;
import com.zy.mapper.DetailsMapperFood;
import com.zy.po.Details;
import com.zy.po.DetailsFood;
import com.zy.service.DetailsService;

public class DetailsServiceImpl implements DetailsService{
	@Autowired
	private DetailsMapperFood detailsMapperFood;
	@Autowired
	private DetailsMapper detailsMapper;

	public List<DetailsFood> selectAllByOrderId(int id) throws Exception {
		
		return detailsMapperFood.selectAllByOrderId(id);
	}

	public Details selectById(int id) throws Exception {
		
		return detailsMapper.selectByPrimaryKey(id);
	}

	public void update(Details details) throws Exception {
		
		detailsMapper.updateByPrimaryKey(details);
	}

	public void insert(Details details) throws Exception {
		
		detailsMapper.insert(details);
	}

}
