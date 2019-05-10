package com.zy.mapper;

import java.util.List;

import com.zy.po.EvaluationUser;


public interface EvaluationMapperUser {
	public List<EvaluationUser> selectAll() throws Exception;
	public List<EvaluationUser> selectAllByFoodId(int id) throws Exception;
}
