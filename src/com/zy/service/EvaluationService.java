package com.zy.service;

import java.util.List;

import com.zy.po.Evaluation;
import com.zy.po.EvaluationUser;

public interface EvaluationService {

	public List<EvaluationUser> selectAll() throws Exception;
	public List<EvaluationUser> selectAllByFoodId(int id) throws Exception;
	public void insert(Evaluation evaluation) throws Exception;
	public void del(int id) throws Exception;
	public List<Evaluation> selectAllByFoodIdAndUserId(int foodid,int userid) throws Exception;
}
