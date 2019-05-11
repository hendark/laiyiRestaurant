package com.zy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.zy.mapper.CuisineMapper;
import com.zy.po.Cuisine;
import com.zy.po.CuisineExample;
import com.zy.service.CuisineService;

public class CuisineServiceImpl implements CuisineService{
	@Autowired
	private CuisineMapper cuisineMapper;
	
	public List<Cuisine> selectAll() throws Exception {
		CuisineExample ce = new CuisineExample();
		return cuisineMapper.selectByExample(ce);
	}

}
