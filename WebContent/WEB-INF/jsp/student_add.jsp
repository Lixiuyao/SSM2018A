<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="../common/base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta charset="UTF-8">
		
		
		
		<title></title>
	<script type="text/javascript">
	$(function(){
	    $("#nameId").blur(function(){
	    	var name = $(this).val(); 
	    	$.post(
	    		    "${cctv}/student?method=checkName",//url
	    			{"name":name},
	    			function(data){
	    				if(data.isExist){
	    					$("#nameInfo").html("用户名已存在");
	    					$("#nameInfo").css("color","red");
	    				}else{
	    					$("#nameInfo").html("用户名可用");
	    					$("#nameInfo").css("color","green");
	    				}		
	    			},
	    			"json"
	    	
	    	
	    	);
	    	
	    	
	    });
	});
	
	
	
	
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
			  	<a href="${cctv}/student?method=pageList" class="list-group-item">学生信息</a>
			  	<a href="${cctv}/student?method=getStudent" class="list-group-item active">添加学生</a>
			  	<a href="#" class="list-group-item">添加学生</a>
			  	<a href="#" class="list-group-item">添加学生</a>
			  	<a href="#" class="list-group-item">添加学生</a>
		 	</div>
		 	</div>
		 	<div class="col-md-8">
		 	
		 		<form action="${cctv}/student?method=addStudents" method="post">
				  <div class="form-group">
				    <label for="exampleInputEmail1">姓名</label>
				    <input type="text" id="nameId" class="form-control" name="name" placeholder="姓名是？">
				 	<span id ="nameInfo"></span>
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">年龄</label>
				    <input type="text" class="form-control" name="age" placeholder="年龄是？">
				  </div>
				  <div class="form-group">
				    <label for="exampleInputPassword1">性别</label>
				    <input type="text" class="form-control" name="gender" placeholder="性别是？">
				  </div>
				 <div class="form-group">
				    <label for="exampleInputPassword1">地址</label>
				    <input type="text" class="form-control" name="address" placeholder="地址是？">
				  </div>
				   <div class="form-group">
				    <label for="exampleInputPassword1">课程</label>
				   <select name="banjiId">
				   	<c:forEach items="${Banji}" var="banji">
		 					<option value="${banji.id}">${banji.name}</option>
		 			</c:forEach>
				   
				   </select>
				  </div>
				  <input type="submit" class="btn btn-default" value="添加信息？"></input>
			
				</form>
						 		
		 	</div>
	 	 </div>
	 	</div>
	</body>
</html>>