package com.qinchy.mycatdemo.dao;

import com.qinchy.mycatdemo.model.Hotnews;
import com.qinchy.mycatdemo.model.HotnewsExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface HotnewsMapper {
    int countByExample(HotnewsExample example);

    int deleteByExample(HotnewsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Hotnews record);

    int insertSelective(Hotnews record);

    List<Hotnews> selectByExample(HotnewsExample example);

    Hotnews selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Hotnews record, @Param("example") HotnewsExample example);

    int updateByExample(@Param("record") Hotnews record, @Param("example") HotnewsExample example);

    int updateByPrimaryKeySelective(Hotnews record);

    int updateByPrimaryKey(Hotnews record);
}