<%@page import="java.sql.ResultSet"%>
<%@page import="com.ustc.sse.db.Dbhelper"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head >
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/validationEngine.jquery.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
</head>
<body background="images/001.jpg" style="background-size:auto">
<%!String images = "preview.jpg";%>
					<%
						try {
							ResultSet rs;
							rs = Dbhelper
									.ExecQuery("SELECT images FroM StudentInform where name="
											+ "'"
											+ request.getSession().getAttribute("Username")
													.toString() + "'");
							while (rs.next()) {
								if (rs.getString("images") != null) {
									images = "userimages/" + rs.getString("images").trim();
									System.out.println(images);
								} else {
									images = "userimages/preview.jpg";
								}
							}
							rs.getStatement().getConnection().close();
						} catch (Exception ex) {
							ex.printStackTrace();
						}
					%>
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
								<li><a href="CompleteInform.jsp">完善资料</a></li>
								<li><a href="ChangeCode.jsp">修改密码</a></li>
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
	<br><br><br>
  <div class="container-fluid">
  <div class="row-fluid">
    <div class="span2">
    <img class="img-circle" id="previewImg" src=<%=images%> width="90"
						height="90" /> <br> <label><strong><font
							color="blue">&nbsp;&nbsp;&nbsp;用户：&nbsp;<%=request.getSession().getAttribute("Username").toString()%></font></strong></label>
        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu" style="display: block; position: static; margin-bottom: 5px; *width: 180px;">
                <li><a tabindex="-1">个人中心</a></li>
                 <li class="divider"></li>
                <li><a tabindex="-1" href="CompleteInform.jsp">完善资料</a></li>
                 <li class="divider"></li>
                <li class="active"><a tabindex="-1" href="#">修改密码</a></li>
                <li class="divider"></li>
                <li><a tabindex="-1" href="#">我的小组</a></li>
              </ul>
    </div>
    <div class="span7">
    <br>
    <br>
    <br>
    <br><br><br>
   <form class="form-horizontal" action="ChangeCodeServlet" method="post" id="myform">
  <div class="control-group">
    <label class="control-label"><font color="yellow"><strong>原密码</strong></font></label>
    <div class="controls">
      <input type="password" id="oldpassword" name="oldpassword" style="background-color: #E8E8FF" class="validate[required]" >
    </div>
  </div>
  <br>
  <div class="control-group">
   <label class="control-label"><font color="yellow"><strong>新密码</strong></font></label>
    <div class="controls">
      <input type="password" id="newpassword" name="newpassword" style="background-color: #E8E8FF" class="validate[required]" >
    </div>
  </div>
  <br>
  <div class="control-group">
   <label class="control-label"><font color="yellow"><strong>确认密码</strong></font></label>
    <div class="controls">
      <input type="password" id="surepassword" name="surepassword" style="background-color:#E8E8FF" class="validate[required,equals[newpassword]]">
    </div>
  </div>
  <br>
  <br>
  <br>
  <div>
   <label class="control-label"></label>
   <div>
  <p>
  <button class="btn btn-large btn-primary" type="submit">提交</button>
  &nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;
  <button class="btn btn-large btn-primary" type="reset">取消</button>
</p>
</div>
</div>
</form>
</div>
    	<div class="span3">
			<div>
				<ul class="nav nav-list">
					<li class="active"><i class="icon-white mt4 icon-user"></i><font color="blue">用户信息</font></li>
				</ul>
				</div>
				<div>
				<div>
					<div>
						<a class="avatar-btn" title="更换头像" href="CompleteInform.jsp">
							<img class="middle-avatar pull-left mr10 img-circle"
							src=<%=images%> width="70" height="70">
						</a>
					</div>
					<div>
						<font color="blue"><strong>信息完整度</strong></font>
					</div>
					<div class="mt10 progress progress-success mb10">
						<div class="bar" style="width: 95%">
							<a class="progress-a" href="CompleteInform.jsp" title="信息完整度：95%">95%</a>
						</div>
					</div>
				</div>
				<div>
					<label><strong><font color="blue">&nbsp;&nbsp;&nbsp;用户：&nbsp;<%=request.getSession().getAttribute("Username").toString()%></font></strong></label>
				</div>
				</div>
				<div>
					<ul class="nav nav-list">
						<li class="active"><a href="#"><i
								class="icon-white mt4 icon-volume-up"></i>公告栏</a></li>
					</ul>
				</div>

				<!-- <div id="announcementDialog" class="modal hide fade">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3>公告</h3>
    </div>
    <div class="modal-body">
    </div>
    <div class="modal-footer">
        <button type="button" class="btn" data-dismiss="modal" aria-hidden="true">关闭</button>
    </div>
</div> -->

			</div>
  </div>
  
</div>
<script src="js/jquery-1.11.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.validationEngine-zh_CN.js"></script>
<script src="js/jquery.validationEngine.js"></script>
</body>
<script>
	$(document).ready(function() {
		// binds form submission and fields to the validation engine
		$('#myform').validationEngine();
	});
</script>
</html>