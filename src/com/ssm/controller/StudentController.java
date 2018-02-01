package com.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.entity.Student;
import com.ssm.service.IStudentService;
import com.ssm.vo.PageBean;
import com.ssm.vo.StudentSearchCondition;

@Controller
@RequestMapping(value="/student")
public class StudentController {
	@Autowired
	private IStudentService studentService;
	
	@RequestMapping(value="/findAll")
	public String list(Model model){
		List<Student> list = studentService.findAll();
		model.addAttribute("list", list);
		return "student_list";
	}
	//学生表搜索加分页
		@RequestMapping(value="/pageList")
		public String searchByCondition(StudentSearchCondition condition,Model model){
			System.out.println(condition);
			if (condition.getPageNo() == null || "".equals(condition.getPageNo())) {
				condition.setPageNo(1);
			}
			if (condition.getPageSize() == null || "".equals(condition.getPageSize())) {
				condition.setPageSize(5);
			}
			PageBean<Student> pageBean = studentService.searchByCondition(condition);
			model.addAttribute("pageBean", pageBean);
			model.addAttribute("searchCondition", condition);
			System.out.println(pageBean);
			return "student_list";
		}
		
}
