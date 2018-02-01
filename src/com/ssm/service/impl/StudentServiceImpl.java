package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.StudentDao;
import com.ssm.entity.Student;
import com.ssm.service.IStudentService;
@Service
public class StudentServiceImpl implements IStudentService {
	@Autowired
	private StudentDao studentDao;
	@Override
	public List<Student> findAll() {
		
		return studentDao.findAll();
	}

}
