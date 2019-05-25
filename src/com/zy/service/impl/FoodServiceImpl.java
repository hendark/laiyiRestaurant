package com.zy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zy.mapper.FoodMapper;
import com.zy.mapper.FoodMapperCuisine;
import com.zy.po.Food;
import com.zy.po.FoodCuisine;
import com.zy.po.FoodExample;
import com.zy.service.FoodService;

@Service("FoodService")
public class FoodServiceImpl implements FoodService{
	@Autowired
	private FoodMapper foodMapper;
	@Autowired
	private FoodMapperCuisine foodMapperCuisine;
	
	public void delete(int id) throws Exception {
		
		foodMapper.deleteByPrimaryKey(id);
	}

	public void insert(Food food) throws Exception {
		
		foodMapper.insert(food);
	}

	public List<FoodCuisine> selectAll() throws Exception {
		
		return foodMapperCuisine.selectAll();
	}

	public Food selectById(int id) throws Exception {
		
		return foodMapper.selectByPrimaryKey(id);
	}

	public void update(Food food) throws Exception {
		
		foodMapper.updateByPrimaryKey(food);
	}

	public List<Food> selectByFname(String fname) throws Exception {
		FoodExample fe = new FoodExample();
		FoodExample.Criteria criteria = fe.createCriteria();
		criteria.andFnameLike("%"+fname+"%");
		List<Food> foods = foodMapper.selectByExample(fe);	
		if(foods.size()==0){
			return null;
		}else{
			return foods;
		}
	}

	public List<Food> selectByCuisine(int cuisineId) throws Exception {
		FoodExample fe = new FoodExample();
		FoodExample.Criteria criteria = fe.createCriteria();
		criteria.andCategoryidEqualTo(cuisineId);
		List<Food> foods = foodMapper.selectByExample(fe);	
		if(foods.size()==0){
			return null;
		}else{
			return foods;
		}
	}

}
