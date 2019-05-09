package com.zy.service;

import java.util.List;

import com.zy.po.EvaluationUser;

public interface EvaluationService {

	public List<EvaluationUser> selectAll() throws Exception;
}
