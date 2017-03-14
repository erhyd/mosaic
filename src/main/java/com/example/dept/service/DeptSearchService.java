package com.example.dept.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.domain.Dept;
import com.example.mapper.DeptMapper;

@Service
public class DeptSearchService {
	
	@Autowired
	DeptMapper deptMapper;
	
	public List<Dept> getListAll(){
		return getListAll(false);
	}
	public List<Dept> getListAll(boolean withEmp){
		List<Dept> list = null;
		if(withEmp)
			list = deptMapper.selectAllWithEmp();
		else
			list = deptMapper.selectAll();
		return list;
	}
}
