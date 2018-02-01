package com.ssm.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ssm.dao.StudentDao;
import com.ssm.entity.Student;
import com.ssm.vo.StudentSearchCondition;

//帮助我们创建IOC容器
@RunWith(SpringJUnit4ClassRunner.class)
//加载Spring核心配置文件
@ContextConfiguration("classpath:applicationContext.xml")
public class StudentDaoTest {
	@Autowired
	private StudentDao studentDao;
	@Test
	public void test() {
		Student student = studentDao.findById("张三");
		System.out.println(student);
		
	}
	@Test
	public void test1() {
		List<Student> list = studentDao.findByByName("张");
		for (Student student : list) {
			System.out.println(student);
		}
		
	}
	@Test
	public void test2() {
		StudentSearchCondition searchCondition = new StudentSearchCondition();
		searchCondition.setPageSize(3);
		searchCondition.setPageNo(1);
		
		List<Student> list =studentDao.getPageList(searchCondition);
		for (Student student : list) {
			System.out.println(student);
		}
		
	}
	
	
}
