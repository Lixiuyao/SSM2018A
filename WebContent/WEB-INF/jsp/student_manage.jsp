<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="../common/base.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<title></title>
		
   <script type="text/javascript">
			function delStudent(id){
				var isDel = confirm("您确认要删除吗？");
				if(isDel){
					
					location.href = "${cctv}/student?method=delete&id="+id;
				}
			}

	</script>
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
			  	<a href="${cctv}/student?method=findStudents" class="list-group-item active">学生信息</a>
			  	<a href="${cctv}/student?method=getStudent" class="list-group-item">添加学生</a>
			  	<a href="#" class="list-group-item">删除学生</a>
			  	<a href="#" class="list-group-item">添加学生</a>
			  	<a href="#" class="list-group-item">添加学生</a>
		 	</div>
		 	</div>
		 	<div class="col-md-8">
		 		<div class="bs-example" data-example-id="simple-table">
		 			<from>
		 				姓名：<input type="text" name="name"></input>
		 				年龄：<input type="text" name="age"></input>
		 				性别:<input type="text" name="gender"></input>
		 				<input type ="submit" value="搜索"></input>
		 			</from>
		 			<hr>
				    <table class="table">
				      <a href="#" class="list-group-item active">学生信息如下</a>
				      <thead>
				        <tr>
				          <th>编号</th>
				          <th>姓名</th>
				          <th>年龄</th>
						  <th>性别</th>
				          <th>地址</th>
				          <th>删除</th>
				          <th>修改</th>
				        </tr>
				      </thead>
				     <c:forEach items="${list}" var="student">
				        <tr>
				          <td>${student.id}</td>
				          <td>${student.name}</td>
				          <td>${student.age}</td>
				          <td>${student.gender}</td>
				          <td>${student.address}</td>
				       
				          <td><a href="javascript:delStudent(${student.id})" class="btn btn-warning active">删除</a></td>
				           <th><a href="${cctv}/student?method=toUpdate&id=${student.id}" class="btn btn-info"}">修改</th>
				        </tr>             
				       
				   </c:forEach>
				    </table>
				  </div>
						 		
		 	</div>
	 	 </div>
	 	</div>
	</body>

</html>
