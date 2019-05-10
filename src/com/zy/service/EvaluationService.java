package com.zy.service;

import java.util.List;

import com.zy.po.EvaluationUser;

public interface EvaluationService {

	public List<EvaluationUser> selectAll() throws Exception;
	public List<EvaluationUser> selectAllByFoodId(int id) throws Exception;}
