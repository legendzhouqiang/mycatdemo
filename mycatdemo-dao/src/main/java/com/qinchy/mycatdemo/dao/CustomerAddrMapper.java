package com.qinchy.mycatdemo.dao;

import com.qinchy.mycatdemo.model.CustomerAddr;
import com.qinchy.mycatdemo.model.CustomerAddrExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CustomerAddrMapper {
    int countByExample(CustomerAddrExample example);

    int deleteByExample(CustomerAddrExample example);

    int insert(CustomerAddr record);

    int insertSelective(CustomerAddr record);

    List<CustomerAddr> selectByExample(CustomerAddrExample example);

    int updateByExampleSelective(@Param("record") CustomerAddr record, @Param("example") CustomerAddrExample example);

    int updateByExample(@Param("record") CustomerAddr record, @Param("example") CustomerAddrExample example);
}