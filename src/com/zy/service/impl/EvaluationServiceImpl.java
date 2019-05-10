package com.zy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.zy.mapper.EvaluationMapperUser;
import com.zy.po.EvaluationUser;
import com.zy.service.EvaluationService;

public class EvaluationServiceImpl implements EvaluationService{
	@Autowired
	private EvaluationMapperUser evaluationMapperUser;
	
	public List<EvaluationUser> selectAll() throws Exception {
		
		return evaluationMapperUser.selectAll();
	}

	public List<EvaluationUser> selectAllByFoodId(int id) throws Exception {
		
		return evaluationMapperUser.selectAllByFoodId(id);
	}

}
