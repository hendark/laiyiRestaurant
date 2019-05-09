package com.zy.mapper;

import java.util.List;

import com.zy.po.DetailsFood;

public interface DetailsMapperFood {
	public List<DetailsFood> selectAllByOrderId(int id)throws Exception;
}
