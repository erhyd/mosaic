package com.example.emp.service;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import com.example.domain.Emp;

@RunWith(SpringRunner.class)
@SpringBootTest
public class EmpSearchServiceTests {

	@Autowired
	EmpSearchService service;
	
	@Test
	public void test00_confirmService(){
		System.out.println("service = " + service);
	}
	
	@Test
	public void test01_getListAll(){
		List<Emp> list = service.getListAll();
		for (Emp e : list)
			System.out.println(e);
	}
}
