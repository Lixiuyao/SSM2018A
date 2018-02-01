package com.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.entity.Student;
import com.ssm.service.IStudentService;

@Controller
@RequestMapping(value="/student")
public class StudentController {
	@Autowired
	private IStudentService studentService;
	
	@RequestMapping(value="/list")
	@ResponseBody
	public List<Student> list(){
		List<Student> list = studentService.findAll();
		return list;
		
	}
	
}
