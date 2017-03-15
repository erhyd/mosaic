package com.example.emp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.Emp;
import com.example.mapper.EmpMapper;

@Service
public class EmpSearchService {
	
	@Autowired
	EmpMapper empMapper;
	
	public List<Emp> getListAll(){
		return getListAll(false);
	}
	public List<Emp> getListAll(boolean withDept){
		List<Emp> list = null;
		if(withDept)
			list = empMapper.selectAllWithDept();
		else
			list = empMapper.selectAll();
		return list;
	}
}
