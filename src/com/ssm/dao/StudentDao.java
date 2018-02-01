package com.ssm.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.ssm.entity.Student;
import com.ssm.vo.StudentSearchCondition;

public interface StudentDao {

	public List<Student> findAll();

	public List<Student> findPageBeanListByCondition(@Param(value="condition")StudentSearchCondition condition,
			@Param(value="offset") Integer offset);

	public int getTotalCount();

	public Student findById(String name);

	public List<Student> findByByName(String name);

	public List<Student> getPageList(StudentSearchCondition searchCondition);

	public Student findByIdd(int id);

	public int deleteById(Integer id);

	public int CreateSt(Student student);
	
}
