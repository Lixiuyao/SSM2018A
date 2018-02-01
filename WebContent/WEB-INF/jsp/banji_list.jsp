<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@include file="../common/base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<title></title>
		<script type="text/javascript">
		    function delBanji(id){
				var isDel = confirm("您确认要删除吗？");
				if(isDel){
					location.href = "${cctv}/banji?method=delete&id="+id;
				}
			}
		    function goPage(pageNo){
		    	$("#pageNo").val(pageNo);
		    	$("#searchForm").submit();
		    }
		    
		</script>
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
		            <li class="active"><a href="${cctv}/banji?method=findAll"><span class="glyphicon glyphicon-search aria-hidden="true"></span>&nbsp;&nbsp;班级管理</a></li>
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
			  	<a href="#" class="list-group-item active">班级信息</a>
			  	<a href="${cctv}/banji?method=getBanji" class="list-group-item">添加班级</a>
			  	<a href="#" class="list-group-item">XXXX</a>
			  	<a href="#" class="list-group-item">XXXX</a>
			  	<a href="#" class="list-group-item">XXXX</a>
		 	</div>
		 	</div>
		 	<div class="col-md-8">
		 		   <form action="${cctv}/banji?method=search" method="post">
		 				班级名称：<input type="text" name="name" value="${sCondition.name}"/>
		 				班级人数：<input type="text" name="age" value="${sCondition.age}"/>
		 				<input type ="submit" value="搜索"/>
		 			</form>
		 		    <hr>
		 		<div class="bs-example" data-example-id="simple-table">
		 			
				    <table class="table">
				      <a href="#" class="list-group-item active">班级信息如下</a>
				      <thead>
				        <tr>
				          <th>班级编号</th>
				          <th>班级姓名</th>
				          <th>班级课程</th>
						  <th>删除</th>
						  <th>修改</th>
				          
				          <th></th>
				        </tr>
				      </thead>
				     <c:forEach items="${pageBean.list}" var="banji">
				        <tr>
				          <td>${banji.id}</td>
				          <td>${banji.name}</td>
				          <td>${banji.number}</td>
				     	  <td><a href="javascript:delBanji(${banji.id})" class="btn btn-warning active"">删除</a></td>
				     	  <td><a href="${cctv}/banji?method=toUpdate&id=${banji.id}&name=${banji.name}&number=${banji.number}">修改</a></td>
				        </tr>
				   </c:forEach>
				    </table>
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
					    <li><a href="${cctv}/banji?method=pageBanjiList&pageNo=${page}">${page}</a></li>
					    </c:if>
		
					    <!-- 遍历的时候page和pageNo相等，高亮显示  -->
					    <c:if test="${pageBean.pageNo == page}">
					    	<li class="active"><a href="javascript:void(0)">${page}</a></li>
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
