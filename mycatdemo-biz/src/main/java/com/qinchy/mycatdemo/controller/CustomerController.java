package com.qinchy.mycatdemo.controller;

import com.qinchy.mycatdemo.model.Customer;
import com.qinchy.mycatdemo.model.CustomerExample;
import com.qinchy.mycatdemo.service.CustomerService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "/customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @RequestMapping(path = "/selectByPrimaryKey/{id}", method = RequestMethod.GET)
    public Customer selectByPrimaryKey(@PathVariable Integer id) {
        return customerService.selectByPrimaryKey(id);
    }

    //postman测试Content-Type=application/json，Body是Raw的json数据
    @RequestMapping(path = "/countByExample", method = RequestMethod.POST)
    public int countByExample(@RequestBody Customer customer) {
        CustomerExample example = new CustomerExample();

        CustomerExample.Criteria criteria = example.createCriteria();
        if (null != customer.getCompanyId()) {
            criteria.andCompanyIdEqualTo(customer.getCompanyId());
        }

        if (null != customer.getId()) {
            criteria.andIdEqualTo(customer.getId());
        }

        if (StringUtils.isNotBlank(customer.getName())) {
            criteria.andNameLike("%" + customer.getName() + "%");
        }

        return customerService.countByExample(example);
    }

    @RequestMapping(path = "/selectByExample", method = RequestMethod.POST)
    public List<Customer> selectByExample(@RequestBody Customer customer) {
        CustomerExample example = new CustomerExample();

        CustomerExample.Criteria criteria = example.createCriteria();
        if (null != customer.getCompanyId()) {
            criteria.andCompanyIdEqualTo(customer.getCompanyId());
        }

        if (null != customer.getId()) {
            criteria.andIdEqualTo(customer.getId());
        }

        if (StringUtils.isNotBlank(customer.getName())) {
            criteria.andNameLike("%" + customer.getName() + "%");
        }

        return customerService.selectByExample(example);
    }
}
