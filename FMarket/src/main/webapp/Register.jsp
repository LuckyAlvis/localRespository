<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎注册</title>
</head>
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
		<h1>欢迎注册!</h1>
		<form name="form1" action="Register.do" method="post">
			
			<input type="text" 		required="required" placeholder="用户名" 								name="userName">				</input><br/>
			<input type="password" 	required="required" placeholder="密码" 								name="userPsd">			</input><br/>
			<input type="password" 	required="required" placeholder="确认密码"	onchange="checkpwd()"	name="userPsd_affirm">	</input><br/>
			<input type="text" 		required="required" placeholder="性别" 								name="userSex">				</input><br/>
			<input type="text" 		required="required" placeholder="电话" 								name="userPhone">			</input><br/>
			
			<button class="but" 	type="submit">注册</button><br/>
			
			<button class="but" 	type="reset">重置</button><br/>
		</form>
	</div>
</body>
<script type="text/javascript">
	function checkpwd(){
		var p1 = document.form1.userPsd.value;//获取密码框的值
		var p2 = document.form1.userPsd_affirm.value;//获取确认密码的值
		if(p1 ==""){
			alert("请输入密码！");//监测到密码为空
			document.for1.password.focus();//焦点放到密码框
			return false;//退出检测函数
		}
		if(p1!=p2){
			alert("两次输入密码不一致！");//监测到密码为空
			return false;
		}else{
			//密码一致
		}
	}
</script>
<script type="text/javascript">
//取出传回来的参数error并与yes比较
  var error ='<%=request.getParameter("error")%>';
  if(error=='yes'){
   alert("用户名已存在!");
  }
</script>
</html>
