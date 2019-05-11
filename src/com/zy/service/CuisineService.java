package com.zy.service;

import java.util.List;

import com.zy.po.Cuisine;

public interface CuisineService {
	public List<Cuisine> selectAll() throws Exception;
}
