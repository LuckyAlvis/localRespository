<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>TEST</title>

<style type="text/css">
body {
	width: 100%;
	height: 100%;
	font-family: 'Open Sans', sans-serif;
	margin: 0;
	background-color: #b5a789;
}


input {
	width: 280px;
	height: 18px;
	margin-bottom: 10px;
	outline: none;
	padding: 10px;
	font-size: 13px;
	color: #847b6b;
	text-shadow: 1px 1px 1px;
	border-top: 1px solid #312E3D;
	border-left: 1px solid #312E3D;
	border-right: 1px solid #312E3D;
	border-bottom: 1px solid #56536A;
	border-radius: 4px;
	/* background-color: #675c47; */
}

.but {
	width: 300px;
	min-height: 20px;
	background-color: #675c47;
	border: 1px solid #3762bc;
	color: #fff;
	padding: 9px 14px;
	font-size: 15px;
	line-height: normal;
	border-radius: 5px;
	margin: 10px;
}
</style>
</head>


<body>
	<div style="text-align:center">
		<h1>欢迎登录跳蚤市场！</h1>
		<form action="Login.do" method="post">
			<input type="text" required="required" placeholder="用户名" name="userName"></input>
			<br /> 
			<input type="password" required="required" placeholder="密码" name="userPsd"></input> <br />
			<button class="but" type="submit">登录</button>
			<br />
			<button class="but" type="reset">重置</button>
			<br />
		</form>
		<form action="Register.jsp">
		<a href="Register.jsp" ><button class="but" type="submit">注册</button></a>
			<br />
		</form>
	</div>
</body>
<script> 
//取出传回来的参数error并与yes比较
  var error ='<%=request.getParameter("error")%>';
  if(error=='yes'){
   	alert("登录失败!");
  }
  if(error=='success'){
	alert("注册成功!");
  }
</script>
</html>