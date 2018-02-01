<%@page import="com.ssm.entity.Student"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="../common/base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		
	</head>
	<body>
		<!--header 头部-->
		<nav class="navbar navbar-default" role="navigation">
		    <div class="container container-fluid">
		    <div class="navbar-header">
		        <a class="navbar-brand" href="#">学生管理系统</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    </div>
		    <div class="collapse navbar-collapse" id="example-navbar-collapse">
		        <ul class="nav navbar-nav">
		            <li class="active"><a href="#"><span class="glyphicon glyphicon-user aria-hidden="true"></span>&nbsp;&nbsp;学生管理</a></li>
		            <li><a href="${cctv}/banji?method=pageFindAll"><span class="glyphicon glyphicon-search aria-hidden="true"></span>&nbsp;&nbsp;班级管理</a></li>
		            <li><a href="#"><span class="glyphicon glyphicon-heart aria-hidden="true"></span>&nbsp;&nbsp;教务管理</a></li>
		            <li><a href="#"><span class="glyphicon glyphicon-ok aria-hidden="true"></span>&nbsp;&nbsp;biubiu管理</a></li>
		          	
		        </ul>
				<ul class="nav navbar-nav navbar-right">
		        <li><a href="end.html"><span class="glyphicon glyphicon-flag aria-hidden="true"></span>&nbsp;&nbsp;退出</a></li>
		        </ul>
		    </div>
		    </div>
		</nav>
		<!--
        	end 头部结尾
        -->
        <!--
        	内容
        -->
       <div class="container">
       	   <div class="row">
       	   	<!--
                  	左边 left
                  -->
			<div class="col-md-2">
			<div class="list-group">
			  	<a href="${cctv}/student?method=findStudents" class="list-group-item">学生信息</a>
			  	<a href="#" class="list-group-item active">添加学生</a>
			  	<a href="#" class="list-group-item">添加学生</a>
			  	<a href="#" class="list-group-item">添加学生</a>
			  	<a href="#" class="list-group-item">添加学生</a>
		 	</div>
		 	</div>
		 	<div class="col-md-8">
		 		
		 		<form action="${cctv}/student?method=update" method="post">
		 			<input type="hidden" name="id" value="${student.id}">
				  <div class="form-group">
				    <label for="exampleInputEmail1">姓名</label>
				    <input type="text" class="form-control" name="name" value="${student.name}">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">年龄</label>
				    <input type="text" class="form-control" name="age" value="${student.age}">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">性别</label>
				    <input type="text" class="form-control" name="gender" value="${student.gender}">
				  </div>
				 <div class="form-group">
				    <label for="exampleInputPassword1">地址</label>
				    <input type="text" class="form-control" name="address" value="${student.address}">
				  </div>
				  <input type="submit" class="btn btn-default" value="更新信息？"></input>
			
				</form>
					 		
		 	</div>
	 	 </div>
	 	</div>
	</body>
</html>>