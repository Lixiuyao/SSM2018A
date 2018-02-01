. ..<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../common/base.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/bootstrap/css/bootstrap.css"/>
<script type="text/javascript">
  function refreshCode(){
	  $("#codeImage").attr("src","${cctv}/checkImg?"+Math.random());
  }

</script>

</head>


    <div class="container">

      <form class="form-signin" action="${cctv}/loginUser?method=login" method="post">
        <h2 class="form-signin-heading">TPG管理系统</h2>
        <label for="inputEmail" class="sr-only">User name</label>
        <input type="text" name="name" class="form-control" placeholder="User?">
        <label for="inputPassword" class="sr-only">Password</label>
        <input type="password" name="password" class="form-control" placeholder="Password" >
        <label for="inputPassword" class="sr-only">验证码</label>
        <input type="text" name="checkCode" placeholder="请输入验证码">
        <img id="codeImage" alt="" src="${cctv}/checkImg" onclick="refreshCode()"><br/>
        <div class="checkbox">
          <label>
            <input type="checkbox" value="remember-me"> Remember me
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> 
   
  

</body>
</html>