<%@page import="java.sql.ResultSet"%>
<%@page import="com.ustc.sse.db.Dbhelper"%>
<%@page import="com.ustc.sse.db.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/validationEngine.jquery.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-responsive.min.css">
<script src="js/jquery-1.11.1.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.validationEngine-zh_CN.js"></script>
<script src="js/jquery.validationEngine.js"></script>
<script type="text/javascript">
	$(function() {
		$(".thumbs a").click(function() {
			var largePath = $(this).attr("href");
			var largeAlt = $(this).attr("title");
			$("#largeImg").attr({
				src : largePath,
				alt : largeAlt
			});
			return false;
		});

		var la = $("#large");
		la.hide();

		$("#previewImg").mousemove(function(e) {
			la.css({
				top : e.pageY,
				left : e.pageX
			}).html('<img src = "' + this.src + '" />').show();
		}).mouseout(function() {
			la.hide();
		});
	});
	/*  //使用js实现文件上传图片的预览
	function showPreview(obj){
		var str = obj.value;
		document.getElementById("previewImg").innerHTML = 
			"<img src = '" + str + "' />";
	}
	 */
</script>
</head>
<body background="images/001.jpg" style="background-size: auto">
<div>
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
	</div>
	<br><br><br>
	<div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span2">
				<div>
					<%!String images = "preview.jpg";%>
					<%
						try {
							ResultSet rs;
							rs = Dbhelper
									.ExecQuery("SELECT images FroM studentinform where name="
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
					<img class="img-circle" id="previewImg" src=<%=images%> width="90"
						height="90" /> <br> <label><strong><font
							color="blue">&nbsp;&nbsp;&nbsp;用户：&nbsp;<%=request.getSession().getAttribute("Username").toString()%></font></strong></label>
				</div>
				<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu"
					style="display: block; position: static; margin-bottom: 5px; *width: 180px;">
					<li><a tabindex="-1">个人中心</a></li>
					<li class="divider"></li>
					<li class="active"><a tabindex="-1" href="CompleteInform.jsp">完善资料</a></li>
					<li class="divider"></li>
					<li><a tabindex="-1" href="#">修改密码</a></li>
					<li class="divider"></li>
					<li><a tabindex="-1" href="#">我的小组</a></li>
				</ul>
			</div>
			<div class="span7">
				<form class="form-horizontal" action="UplodeUserImagesServlet"
					method="post" id="myform" enctype="multipart/form-data">
					<div class="control-group">
						<label class="control-label"></label>
						<div class="controls">
							 
							<font color="yellow"><strong>上传头像</strong></font>
							<img
								class="img-circle" id="previewImg" src=<%=images%> width="140"
								height="140" /> <br> <br> <input id="myfile"
								name="myfile" type="file" onchange="showPreview(this)"
								class="validate[required]" />
							<button class="btn btn-small" type="submit">确认选择</button>
							<font color="yellow">${result}</font>
						</div>
					</div>
				</form>
				<div>
					<form class="form-horizontal" method="post"
						action="CompleteServlet">
						<fieldset>
							<div class="control-group">
								<label class="control-label" for="nickName"><span
									class="red">*</span><font color="yellow"><strong>昵称</strong></font></label>
								<div class="controls">
									<input type="text" id="nickName" name="nickName"
										value=<%=request.getSession().getAttribute("Username").toString()%>
										placeholder="请输入昵称" disabled>

								</div>
							</div>
							<%!String realname = "";%>
							<%
								realname = DbSelect.getInform("tname", request.getSession()
										.getAttribute("Username").toString());
							%>
							<div class="control-group ">
								<label class="control-label" for="realName"><font
									color="yellow"><strong>真实姓名</strong></font></label>
								<div class="controls">
									<input type="text" id="realName" name="realName"
										placeholder="请输入真实姓名" value=<%=realname%>>

								</div>
							</div>
							<%!String gender = "";%>
							<%
								if (DbSelect.getInform("gender",
										request.getSession().getAttribute("Username").toString())
										.equals("Male")) {
									gender = "男";
								} else if (DbSelect.getInform("gender",
										request.getSession().getAttribute("Username").toString())
										.equals("Female")) {
									gender = "女";
								}
							%>
							<div class="control-group ">
								<label class="control-label" for="gender"><font
									color="yellow"><strong>性别</strong></font></label>
								<div class="controls">
									<input type="text" id="gender" name="gender" value=<%=gender%>
										disabled="disabled">

								</div>
							</div>
							<%!String birth = "";%>
							<%
								birth = DbSelect.getInform("birthday", request.getSession()
										.getAttribute("Username").toString());
							%>
							<div class="control-group ">
								<label class="control-label" for="birthday"><font
									color="yellow"><strong>出生日期</strong></font></label>
								<div class="controls">
									<input type="text" id="birthday" onclick="WdatePicker();"
										name="birthday" value=<%=birth%> placeholder="请输入出生日期"
										disabled>

								</div>
							</div>
							<%!String idnum = "";%>
							<%
								idnum = DbSelect.getInform("idcardnumber", request.getSession()
										.getAttribute("Username").toString());
							%>
							<div class="control-group ">
								<label class="control-label" for="idCardNumber"><font
									color="yellow"><strong>身份证</strong></font><a
									href="javascript:;" class="sudocn-help"
									data-help="usermanage.user.idCardNumber">[?]</a></label>
								<div class="controls">
									<input type="text" id="idCardNumber" name="idCardNumber"
										placeholder="请输入身份证" value=<%=idnum%>>

								</div>
							</div>
							<%!String phonenumber = "";%>
							<%
								phonenumber = DbSelect.getInform("number", request.getSession()
										.getAttribute("Username").toString());
							%>

							<div class="control-group ">
								<label class="control-label" for="cellphone"><font
									color="yellow"><strong>手机号码</strong></font><a
									href="javascript:;" class="sudocn-help"
									data-help="usermanage.user.cellphone">[?]</a></label>
								<div class="controls">
									<div class="input-append">
										<input type="text" id="cellphone" class=" " name="cellphone"
											placeholder="请输入手机号码" value=<%=phonenumber%>>
									</div>

								</div>
							</div>
							<%!String email = "";%>
							<%
								email = DbSelect.getInform("email", request.getSession()
										.getAttribute("Username").toString());
							%>


							<div class="control-group">
								<label class="control-label"><font color="yellow"><strong>邮箱</strong></font></label>
								<div class="controls">

									<input type="text" name="email" value=<%=email%>
										placeholder="请输入邮箱" disabled="disabled">


								</div>
							</div>
							<script
								src="http://cdn.jingkao.me/usermanager/public/common/javascripts/My97DatePicker/WdatePicker.js"
								type="text/javascript" charset="UTF-8"></script>
							<div class="control-group ">
								<div class="controls">
									<button type="submit" class="btn btn-primary">保存</button>
									<br> <font color="yellow"><strong><h1>${complete}</h1></strong></font>
								</div>
							</div>
						</fieldset>
					</form>
				</div>
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
	</div>
</body>
<script>
	$(document).ready(function() {
		// binds form submission and fields to the validation engine
		$('#myform').validationEngine();
	});
</script>
</html>