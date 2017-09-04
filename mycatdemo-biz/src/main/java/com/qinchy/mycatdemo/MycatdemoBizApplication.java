package com.qinchy.mycatdemo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(value ="com.qinchy.mycatdemo.dao")
public class MycatdemoBizApplication {

	public static void main(String[] args) {
		SpringApplication.run(MycatdemoBizApplication.class, args);
	}
}
