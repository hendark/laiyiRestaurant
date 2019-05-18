package com.zy.service;

import java.util.List;

import com.zy.po.Details;
import com.zy.po.DetailsFood;

public interface DetailsService {
	public List<DetailsFood> selectAllByOrderId(int id)throws Exception;
	public void update(Details details)throws Exception;
	public Details selectById(int id)throws Exception;
	public void insert(Details details)throws Exception;
}
