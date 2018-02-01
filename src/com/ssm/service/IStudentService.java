package com.ssm.service;

import java.util.List;

import com.ssm.entity.Student;
import com.ssm.vo.PageBean;
import com.ssm.vo.StudentSearchCondition;

public interface IStudentService {

	List<Student> findAll();

	PageBean<Student> searchByCondition(StudentSearchCondition condition);

	Student findByIdd(int i);

	int deleteById(Integer id);

	int Add(Student student);

	

}
