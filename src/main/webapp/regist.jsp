<%@ page language="java" import="java.util.*"
	contentType="text/html; charset=utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>用户注册</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link rel="stylesheet" href="css/validationEngine.jquery.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<style type="text/css">
.label {
	width: 20%
}

.controler {
	width: 80%
}
.color {
   font-size: 16px;
   color: blue;
}
</style>
<script src="js/jquery-1.11.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.validationEngine-zh_CN.js"></script>
<script src="js/jquery.validationEngine.js"></script>
</head>

<body background="images/background1.jpg">
<div class="row-fluid">
  <div class="span12">
	<h1 class="text-center"><font color="white">用户注册</font></h1>
	<hr>
      <div class="span3"></div>
      <div class="row-fluid">
      <div class="span6">
	<form id="myform" name="regForm" action="registservlet" method="post">
	 <fieldset>
		<table border="0" width="800" cellspacing="0" cellpadding="0">
			<tr>
				<td class="lalel"><font color="white">用户名：</font></td>
				<td class="controler"><input name="username"
					placeholder="请输入用户名" style="background-color: transparent"
					type="text" class="validate[required]" /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="lalel"><font color="white">学&nbsp;号：</font></td>
				<td class="controler"><input placeholder="请输入学号" name="id"
					style="background-color: transparent" type="text" class="validate[required]" /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td class="lalel"><font color="white">年&nbsp;龄：</font></td>
				<td class="controler"><input name="age"
					style="background-color: transparent" type="text" placeholder="请输入年龄" class="validate[required]"/></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><font color="white">学&nbsp;校：</font></td>
				<td class="controler"><input name="school"
					style="background-color: transparent" type="text" class="validate[required]" placeholder="请输入学校" /></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><font color="white">班&nbsp;级：</font></td>
				<td class="controler"><input name="classroom"
					style="background-color: transparent" type="text" placeholder="请输入班级" class="validate[required]"/></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><font color="white">密&nbsp;码：</font></td>
				<td class="controler"><input type="password" name="password" id="password"
					style="background-color: transparent" class="validate[required]"></td>

			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><font color="white">确认密码：</font></td>
				<td class="controler"><input type="password" name="confirmpass"
					style="background-color: transparent" class="validate[required,equals[password]]"></td>

			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><font color="white">电子邮箱：</font></td>
				<td class="controler"><input class="validate[custom[email],required]" type="text" name="email"
					style="background-color: transparent"></td>

			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><font color="white">性别：</font></td>
				<td class="controler"><input type="radio" name="gender"
					checked="checked" value="Male">男<input type="radio"
					name="gender" value="Female">女</td>

			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><font color="white">出生日期：</font></td>
				<td class="controler"><input type="date" name="birthday"/></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><font color="white">爱好：</font></td>
				<td class="controler"><input type="checkbox" name="favorite"
					value="nba"><font color="white">NBA</font> &nbsp; <input type="checkbox"
					name="favorite" value="music"><font color="white">音乐</font> &nbsp; <input
					type="checkbox" name="favorite" value="movie"><font color="white">电影</font> &nbsp; <input
					type="checkbox" name="favorite" value="internet"><font color="white"> 上网</font> &nbsp;
				</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td><font color="white">自我介绍：</font></td>
				<td class="controler"><textarea name="introduce" rows="10" 
						cols="40" style="background-color: transparent" placeholder="请输入爱好"}"  class="validate[required] color"></textarea></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" class="btn" value="注册" />&nbsp;&nbsp;
					<a href="login.jsp" class="btn btn-primary btn-lg active"
					role="button">返回登陆界面</a>&nbsp;&nbsp;</td>
			</tr>
		</table>
		</fieldset>
	</form>
	</div>
	</div>
      <div class="span3"></div>
	</div>
	</div>
</body>
<script>
	$(document).ready(function() {
		// binds form submission and fields to the validation engine
		$('#myform').validationEngine();
	});
</script>
</html>
