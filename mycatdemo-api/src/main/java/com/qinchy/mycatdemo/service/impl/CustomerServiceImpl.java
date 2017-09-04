package com.qinchy.mycatdemo.service.impl;

import com.qinchy.mycatdemo.dao.CustomerMapper;
import com.qinchy.mycatdemo.model.Customer;
import com.qinchy.mycatdemo.model.CustomerExample;
import com.qinchy.mycatdemo.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerMapper customerMapper;

    @Override
    public int countByExample(CustomerExample example) {
        return 0;
    }

    @Override
    public int deleteByExample(CustomerExample example) {
        return 0;
    }

    @Override
    public int deleteByPrimaryKey(Integer id) {
        return 0;
    }

    @Override
    public int insert(Customer record) {
        return 0;
    }

    @Override
    public int insertSelective(Customer record) {
        return 0;
    }

    @Override
    public List<Customer> selectByExample(CustomerExample example) {
        return null;
    }

    @Override
    public Customer selectByPrimaryKey(Integer id) {
        return customerMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByExampleSelective(Customer record, CustomerExample example) {
        return 0;
    }

    @Override
    public int updateByExample(Customer record, CustomerExample example) {
        return 0;
    }

    @Override
    public int updateByPrimaryKeySelective(Customer record) {
        return 0;
    }

    @Override
    public int updateByPrimaryKey(Customer record) {
        return 0;
    }
}
