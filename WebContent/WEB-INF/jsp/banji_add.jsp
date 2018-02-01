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
		        <a class="navbar-brand" href="#">班级管理系统</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    </div>
		    <div class="collapse navbar-collapse" id="example-navbar-collapse">
		        <ul class="nav navbar-nav">
		            <li ><a href="${cctv}/student?method=toDelete"><span class="glyphicon glyphicon-user aria-hidden="true"></span>&nbsp;&nbsp;学生管理</a></li>
		            <li class="active"><a href="${cctv}/banji?method=getBanji"><span class="glyphicon glyphicon-search aria-hidden="true"></span>&nbsp;&nbsp;班级管理</a></li>
		            <li><a href="${cctv}/manager?method=getManager"><span class="glyphicon glyphicon-heart aria-hidden="true"></span>&nbsp;&nbsp;教务管理</a></li>
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
			  	<a href="${cctv}/banji?method=pageBanjiList" class="list-group-item">班级信息</a>
			  	<a href="#" class="list-group-item active">添加班级</a>
			  	<a href="#" class="list-group-item">XXXX</a>
			  	<a href="#" class="list-group-item">XXXX</a>
			  	<a href="#" class="list-group-item">XXXX</a>
		 	</div>
		 	</div>
		 	<div class="col-md-8">
		 		<form action="${cctv}/banji?method=addBanji" method="post">
		 		 <div class="form-group">
				    <label for="exampleInputPassword1">班级名称</label>
				    <input type="text" class="form-control" name="id" placeholder="班级编号是？">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">班级名称</label>
				    <input type="text" class="form-control" name="name" placeholder="班级名称是？">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">班级人数</label>
				    <input type="text" class="form-control" name="number" placeholder="班级人数是？">
				  </div>
				  <input type="submit" class="btn btn-default" value="添加信息？"></input>
				</form>		 		
		 	</div>
	 	 </div>
	 	</div>
	</body>
</html>>