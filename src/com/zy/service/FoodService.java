package com.zy.service;

import java.util.List;


import com.zy.po.Food;
import com.zy.po.FoodCuisine;

public interface FoodService {
	public void insert(Food food) throws Exception;
	public void update(Food food) throws Exception;
	public void delete(int id) throws Exception;
	public Food selectById(int id) throws Exception;
	public List<FoodCuisine> selectAll() throws Exception;
	public List<Food> selectByFname(String fname)throws Exception;
	public List<Food> selectByCuisine(int cuisineId)throws Exception;
}
