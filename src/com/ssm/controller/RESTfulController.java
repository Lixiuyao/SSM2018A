package com.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssm.entity.Student;
import com.ssm.service.IStudentService;

@Controller
public class RESTfulController {
	
	@Autowired
	private IStudentService studentService;
	
	@RequestMapping(value="/students",method=RequestMethod.GET)
	@ResponseBody
	public List<Student> list(){
		List<Student> list = studentService.findAll();
		return list;
	}
	
	@RequestMapping(value="/students/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Student ssStudent(@PathVariable("id")int id){
		Student student =studentService.findByIdd(id);
		return student;
	}
	
	@RequestMapping(value="/students/{id}",method=RequestMethod.DELETE)
	@ResponseBody
	public Integer deleteById(@PathVariable("id")Integer id){
		int count = studentService.deleteById(id);
		return count;
	}
	@RequestMapping(value="/students/{id}",method=RequestMethod.POST)
	@ResponseBody
	public Integer Create(@PathVariable("id")Integer id){
		Student student = new Student();
		student.setId(id);
		student.setName("嘀嘀");
		student.setAge(110);
		student.setGender("男");
		student.setAddress("南宁");
		//int count = ((IStudentService) studentService).Add(student);
		return null;
		
	}
	@RequestMapping(value="/students/{id}",method=RequestMethod.POST)
	@ResponseBody
	public Integer Uodate(@PathVariable("id")Integer id){
		Student student = new Student();
		student.setId(id);
		student.setName("嘀嘀");
		student.setAge(110);
		student.setGender("男");
		student.setAddress("南宁");
		//int count = ((IStudentService) studentService).Add(student);
		return null;
		
	}
	@RequestMapping(value="/students/{id}",method=RequestMethod.POST)
	@ResponseBody
	public Integer Uodate1(@PathVariable("id")Integer id){
		Student student = new Student();
		student.setId(id);
		student.setName("嘀嘀");
		student.setAge(110);
		student.setGender("男");
		student.setAddress("南宁");
		//int count = ((IStudentService) studentService).Add(student);
		return null;
		
	}
	@RequestMapping(value="/students/{id}",method=RequestMethod.POST)
	@ResponseBody
	public Integer Uodate2(@PathVariable("id")Integer id){
		Student student = new Student();
		student.setId(id);
		student.setName("嘀嘀");
		student.setAge(110);
		student.setGender("男");
		student.setAddress("南宁");
		//int count = ((IStudentService) studentService).Add(student);
		return null;
		
	}
	
	
}
