<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="../common/base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<title></title>
		<script type="text/javascript">
		    $(function() {
				$("#gender option[value='${sCondition.gender}']").prop("selected", true);
			});
		    function goPage(pageNo){
		    	$("#pageNo").val(pageNo);
		    	$("#searchForm").submit();
		    }
		    function selectAll(){
		    	$("input[name=selectIds]").prop("checked",$("#selectAlls").is(":checked"));
		    }
		    function deleteAll(){
		    	var isConfirmDelete = confirm("确认要删除？");
		    	if(isConfirmDelete){
		    	$("#mainForm").attr("action","${cctv}/student?method=deleteAll");
		    	$("#mainForm").submit();
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
		            <li class="active"><a href="${cctv}/student?method=toDelete"><span class="glyphicon glyphicon-user aria-hidden="true"></span>&nbsp;&nbsp;学生管理</a></li>
		            <li><a href="${cctv}/banji?method=pageFindAll"><span class="glyphicon glyphicon-search aria-hidden="true"></span>&nbsp;&nbsp;班级管理</a></li>
		            <li><a href="${cctv}/manager?method=getManager"><span class="glyphicon glyphicon-heart aria-hidden="true"></span>&nbsp;&nbsp;教务管理</a></li>
		            <li><a href="#"><span class="glyphicon glyphicon-ok aria-hidden="true"></span>&nbsp;&nbsp;biubiu管理</a></li>	
		             <li><a href="${cctv}/user?method=getOnLinePage"><span class="glyphicon glyphicon-tag" aria-hidden="true"></span>&nbsp;&nbsp;在线列表</a></li>
		        </ul>
				<ul class="nav navbar-nav navbar-right"><a>欢迎您：${user.name}</a>
		        <li><a href="${cctv}/loginUser?method=logout"><span class="glyphicon glyphicon-flag aria-hidden="true"></span>&nbsp;&nbsp;退出</a></li>
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
			  	<a href="${cctv}/student?method=pageList" class="list-group-item active">学生信息</a>
			  	<a href="${cctv}/student?method=getStudent" class="list-group-item">添加学生</a>
			  	<a href="#" class="list-group-item">删除学生</a>
			  	<a href="#" class="list-group-item">添加学生</a>
			  	<a href="#" class="list-group-item">添加学生</a>
		 	</div>
		 	</div>
		 	<div class="col-md-8">
		 	
		 		   <form action="${cctv}/student?method=search" method="post"  id="searchForm">
		 				<input type = "hidden" name="pageNo" id="pageNo"></br>
		 				姓名：<input type="text" name="name" value="${sCondition.name}"/>
		 				年龄：<input type="text" name="age" value="${sCondition.age}"/>
		 				性别:<select id="gender" name ="gender">
		 						<option value="">不限</option>
		 						<option value="男">男</option>
		 						<option value="女">女</option>
		 					</select>
		 				<input type ="submit" value="搜索"/>
		 			</form>
		 		    <hr>
		 		<div class="bs-example" data-example-id="simple-table">
		 			
		 			<form action="" id="mainForm"  method="post"> 
				    <table class="table">
				      <a href="#" class="list-group-item active">学生信息如下</a>
				      <thead>
				      <button class="btn btn-success" onclick="deleteAll()">批量删除</button>
				        <tr>
				          <th><input type="checkbox" id="selectAlls" onclick="selectAll()"></th>
				          <th>编号</th>
				          <th>姓名</th>
				          <th>年龄</th>
						  <th>性别</th>
				          <th>地址</th>
				          <th>班级</th>
				        </tr>
				      </thead>
				     <c:forEach items="${pageBean.list}" var="student">
				        <tr>
				          <td>
				            <input type="checkbox" name="selectIds" value ="${student.id}">
				          </td>
				          <td>${student.id}</td>
				          <td>${student.name}</td>
				          <td>${student.age}</td>
				          <td>${student.gender}</td>
				          <td>${student.address}</td>
				        </tr>
				       
				   </c:forEach>
				    </table>
				    </form>
				   	  <nav aria-label="Page navigation">
					  <ul class="pagination">
					    <!-- 上一页 begin -->
					  	<c:if test="${pageBean.pageNo==1}">
						    <li class="disabled">
						      <a href="javascript:void(0)" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						      </a>
						    </li>
					  	</c:if>
					  	<c:if test="${pageBean.pageNo!=1}">
						    <li>
						      <a href="javascript:goPage('${pageBean.pageNo-1}')" aria-label="Previous">
						        <span aria-hidden="true">&laquo;</span>
						      </a>
						    </li>
					  	</c:if>
					  	<!-- 上一页 end -->
					    <c:forEach begin="1" end="${pageBean.totalPage}" var ="page">
					     <c:if test="${pageBean.pageNo != page}">
					    <li><a href="javascript:goPage('${page}')">${page}</a></li>
					    </c:if>
						
					    <!-- 遍历的时候page和pageNo相等，高亮显示  -->
					    <c:if test="${pageBean.pageNo == page}">
					    	<li class="active"><a href="javascript:void(0)')">${page}</a></li>
					    </c:if>
					   </c:forEach>
					   
					     <!-- 下一页 end -->
					  	<c:if test="${pageBean.pageNo==pageBean.totalPage}">
						    <li class="disabled">
						      <a href="javascript:void(0)" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
					  	</c:if>
					  	<c:if test="${pageBean.pageNo!=pageBean.totalPage}">
						    <li>
						      <a href="javascript:goPage('${pageBean.pageNo+1}')" aria-label="Next">
						        <span aria-hidden="true">&raquo;</span>
						      </a>
						    </li>
					  	</c:if>
					  	<!-- 下一页 end -->
					   
						  </ul>
						</nav> 
				  </div>							 		
		 	</div>
	 	 </div>
	 	</div>
	</body>
</html>
