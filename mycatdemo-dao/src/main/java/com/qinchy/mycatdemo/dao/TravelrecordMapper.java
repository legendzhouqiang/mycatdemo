package com.qinchy.mycatdemo.dao;

import com.qinchy.mycatdemo.model.Travelrecord;
import com.qinchy.mycatdemo.model.TravelrecordExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TravelrecordMapper {
    int countByExample(TravelrecordExample example);

    int deleteByExample(TravelrecordExample example);

    int deleteByPrimaryKey(Long id);

    int insert(Travelrecord record);

    int insertSelective(Travelrecord record);

    List<Travelrecord> selectByExample(TravelrecordExample example);

    Travelrecord selectByPrimaryKey(Long id);

    int updateByExampleSelective(@Param("record") Travelrecord record, @Param("example") TravelrecordExample example);

    int updateByExample(@Param("record") Travelrecord record, @Param("example") TravelrecordExample example);

    int updateByPrimaryKeySelective(Travelrecord record);

    int updateByPrimaryKey(Travelrecord record);
}