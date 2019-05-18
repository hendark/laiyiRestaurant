package com.zy.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.zy.mapper.EvaluationMapper;
import com.zy.mapper.EvaluationMapperUser;
import com.zy.po.Evaluation;
import com.zy.po.EvaluationExample;
import com.zy.po.EvaluationUser;
import com.zy.po.User;
import com.zy.po.UserExample;
import com.zy.service.EvaluationService;

public class EvaluationServiceImpl implements EvaluationService{
	@Autowired
	private EvaluationMapperUser evaluationMapperUser;
	@Autowired
	private EvaluationMapper evaluationMapper;
	
	public List<EvaluationUser> selectAll() throws Exception {
		
		return evaluationMapperUser.selectAll();
	}

	public List<EvaluationUser> selectAllByFoodId(int id) throws Exception {
		
		return evaluationMapperUser.selectAllByFoodId(id);
	}

	public void del(int id) throws Exception {
		
		evaluationMapper.deleteByPrimaryKey(id);
	}

	public void insert(Evaluation evaluation) throws Exception {
		
		evaluationMapper.insert(evaluation);
	}

	public List<Evaluation> selectAllByFoodIdAndUserId(int foodid,
			int userid) throws Exception {
		EvaluationExample ee = new EvaluationExample();
		EvaluationExample.Criteria Criteria = ee.createCriteria();
		Criteria.andFoodidEqualTo(foodid);
		Criteria.andUseridEqualTo(userid);
		List<Evaluation> evaluations = evaluationMapper.selectByExample(ee);
		if(evaluations.size()==0){
			return null;
		}else{
			return evaluations;
		}
	}

}
