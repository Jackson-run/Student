<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户主界面</title>
<link rel="stylesheet" href="css/validationEngine.jquery.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
</head>
<body background="images/001.jpg" style="background-size:auto">
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
				<a class="brand" href="#">学生管理系统</a>
				<div class="nav-collapse collapse">
					<ul class="nav">
						<li class="divider-vertical"></li>
						<li class="dropdown">
						<a href="#" class="dropdown-toggle"
							id="dLabel" role="button" data-toggle="dropdown"> 个人中心 </a>
							<ul class="dropdown-menu" role="menu" aria-expanded="false">
								<li><a href="/CompleteInform.jsp">完善资料</a></li>
								<li><a href="/ChangeCode.jsp">修改密码</a></li>
							</ul></li>
						<li class="divider-vertical"></li>
						<li class="dropdown">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							role="button" data-toggle="dropdown">学习助理 </a>
							<ul class="dropdown-menu" role="menu" aria-expanded="false">
								<li><a href="http://www.icourses.cn/home/">爱课程网</a></li>
								<li><a href="http://www.imooc.com/">慕课网</a></li>
								<li><a href="http://hsu.fy.chaoxing.com/portal/">尔雅平台</a></li>
							</ul></li>
						<li class="divider-vertical"></li>
						<li class="dropdown">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							role="button" data-toggle="dropdown">课程资料 </a>
							<ul class="dropdown-menu" role="menu" aria-expanded="false">
								<li><a href="#">实验指导</a></li>
								<li><a href="#">学习资源</a></li>
							</ul></li>
						<li class="divider-vertical"></li>
						<li class="dropdown">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							role="button" data-toggle="dropdown">通知通告 </a>
							<ul class="dropdown-menu" role="menu" aria-expanded="false">
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
							</ul></li>
						<li class="divider-vertical"></li>
						<li class="dropdown">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							role="button" data-toggle="dropdown">班级风采 </a>
							<ul class="dropdown-menu" role="menu" aria-expanded="false">
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
							</ul></li>
						<li class="divider-vertical"></li>
						<li class="dropdown">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							role="button" data-toggle="dropdown">院系风云</a>
							<ul class="dropdown-menu" role="menu" aria-expanded="false">
								<li><a href="http://cie.hsu.edu.cn/">院系官网</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
							</ul></li>
						<li class="divider-vertical"></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							role="button" data-toggle="dropdown">我的群组</a>
							<ul class="dropdown-menu" role="menu" aria-expanded="false">
								<li><a href="#">群组首页</a></li>
								<li><a href="MyTeam.jsp">创建群组</a></li>
								<li><a href="#">我的群组</a></li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery-1.11.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.validationEngine-zh_CN.js"></script>
<script src="js/jquery.validationEngine.js"></script>
</body>
</html>