package com.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ssm.dao.StudentDao;
import com.ssm.entity.Student;
import com.ssm.service.IStudentService;
import com.ssm.vo.PageBean;
import com.ssm.vo.StudentSearchCondition;
@Service
public class StudentServiceImpl implements IStudentService {
	@Autowired
	private StudentDao studentDao;
	@Override
	public List<Student> findAll() {
		
		return studentDao.findAll();
	}
	@Override
	public PageBean<Student> searchByCondition(StudentSearchCondition condition) {
		PageBean<Student> pageBean = new PageBean<Student>();
		pageBean.setPageNo(condition.getPageNo());
		pageBean.setPageSize(condition.getPageSize());
		// 总记录数
		int totalCount = studentDao.getTotalCount();
		System.out.println(totalCount);
		pageBean.setTotalCount(totalCount);
		// 一共有多少页
		int totalPage = (int) Math.ceil((double)totalCount / condition.getPageSize());
		pageBean.setTotalPage(totalPage);
		// 当前页的数据
		int offset = (condition.getPageNo() - 1) * condition.getPageSize();
		List<Student> list = studentDao.findPageBeanListByCondition(condition,offset);
		pageBean.setList(list);
		return pageBean;
		
	}
	@Override
	public Student findByIdd(int id) {
		
		return studentDao.findByIdd(id);
	}
	@Override
	public int deleteById(Integer id) {
		
		return studentDao.deleteById(id);
	}
	@Override
	public int Add(Student student) {
		
		return studentDao.CreateSt(student);
	}

}
