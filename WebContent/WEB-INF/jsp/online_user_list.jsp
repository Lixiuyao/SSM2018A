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
	
       <div class="container">
       	   <div class="row">
       	  
			
		 
		 		<div class="bs-example" data-example-id="simple-table">
		 		
				    <table class="table">
				      <a href="#" class="list-group-item active">学生信息如下</a>
				      <thead>
				        <tr>
				          <th>编号</th>
				          <th>用户名</th>
				          <th>密码</th>
						
				        </tr>
				      </thead>
				     <c:forEach items="${onLineUserList}" var="user">
				     
				        <tr>
				          <td>${user.id}</td>
				          <td>${user.name}</td>
				          <td>${user.password}</td>
				        </tr>
				       
				   </c:forEach>
				    </table>
				   								 		
		 	</div>
		 	
		 	
		 		<div>
		 	<a href="${cctv}/loginUser?method=logout"><span>${user.name}</span> <span class="glyphicon glyphicon-off" aria-hidden="true"></span>&nbsp;&nbsp;退出</a>
		</div>
	 	 </div>
	 	</div>
	</body>
</html>
