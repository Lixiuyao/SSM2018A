package com.ssm.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class Banji implements Serializable{
	private Integer id;
	private String name;
	private List<Student> list = new ArrayList<Student>();
	private List<Course> courseList = new ArrayList<Course>();
	
	public Integer getId() {
		return id;
	}
	
	public List<Course> getCourseList() {
		return courseList;
	}

	public void setCourseList(List<Course> courseList) {
		this.courseList = courseList;
	}

	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Student> getList() {
		return list;
	}
	public void setList(List<Student> list) {
		this.list = list;
	}

	@Override
	public String toString() {
		return "Banji [id=" + id + ", name=" + name + ", list=" + list + ", courseList=" + courseList + "]";
	}
	
	
	
}
