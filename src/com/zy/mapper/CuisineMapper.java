package com.zy.mapper;

import com.zy.po.Cuisine;
import com.zy.po.CuisineExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CuisineMapper {
    int countByExample(CuisineExample example);

    int deleteByExample(CuisineExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Cuisine record);

    int insertSelective(Cuisine record);

    List<Cuisine> selectByExample(CuisineExample example);

    Cuisine selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Cuisine record, @Param("example") CuisineExample example);

    int updateByExample(@Param("record") Cuisine record, @Param("example") CuisineExample example);

    int updateByPrimaryKeySelective(Cuisine record);

    int updateByPrimaryKey(Cuisine record);
}