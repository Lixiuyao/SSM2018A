package com.ssm.dao;

import java.util.List;

import com.ssm.entity.Student;

public interface StudentDao {

	List<Student> findAll();
	
}
