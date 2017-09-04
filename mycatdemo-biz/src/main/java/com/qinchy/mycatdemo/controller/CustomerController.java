package com.qinchy.mycatdemo.controller;

import com.qinchy.mycatdemo.model.Customer;
import com.qinchy.mycatdemo.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(path = "/customer")
public class CustomerController {
    @Autowired
    private CustomerService customerService;

    @RequestMapping(path="/selectByPrimaryKey/{id}",method= RequestMethod.GET)
    public Customer selectByPrimaryKey(@PathVariable Integer id){
        return customerService.selectByPrimaryKey(id);
    }
}
