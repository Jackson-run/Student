<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!-- saved from url=(0037)http://2school.wygk.cn/admin/main.asp -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>黄山学院科研处系统</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312"><LINK 
href="images/style.css" type=text/css 
rel=stylesheet>
<STYLE>.main_left {
	TABLE-LAYOUT: auto; BACKGROUND: url(images/left_bg.gif)
}
.main_left_top {
	BACKGROUND: url(images/left_menu_bg.gif); PADDING-TOP: 5px
}
.main_left_title {
	PADDING-LEFT: 15px; FONT-WEIGHT: bold; FONT-SIZE: 14px; COLOR: #fff; TEXT-ALIGN: left
}
.left_iframe {
	BACKGROUND: none transparent scroll repeat 0% 0%; VISIBILITY: inherit; WIDTH: 180px; HEIGHT: 92%
}
.main_iframe {
	Z-INDEX: 1; VISIBILITY: inherit; WIDTH: 100%; HEIGHT: 92%
}
TABLE {
	FONT-SIZE: 12px; FONT-FAMILY: tahoma, 宋体, fantasy
}
TD {
	FONT-SIZE: 12px; FONT-FAMILY: tahoma, 宋体, fantasy
}
</STYLE>

<SCRIPT language=javaScript src="images/admin.js" 
type=text/javascript></SCRIPT>

<SCRIPT language=javascript 
src="images\Admin(1).js"></SCRIPT>

<SCRIPT>
var status = 1;
var Menus = new DvMenuCls;
document.onclick=Menus.Clear;
function switchSysBar(){
     if (1 == window.status){
		  window.status = 0;
          switchPoint.innerHTML = '<img src="images/left.gif">';
          document.all("frmTitle").style.display="none"
     }
     else{
		  window.status = 1;
          switchPoint.innerHTML = '<img src="images/right.gif">';
          document.all("frmTitle").style.display=""
     }
}
</SCRIPT>

<META content="MSHTML 6.00.2900.5726" name=GENERATOR></HEAD>
<BODY style="MARGIN: 0px"><!--导航部分-->
<DIV class=top_table>
<DIV class=top_table_leftbg>
<DIV class=system_logo><IMG 
src="images/logo2.gif"></DIV>
<DIV class=menu>
<UL>
  <LI id=menu_0 onmouseover=Menus.Show(this,0) onclick=getleftbar(this);><A 
  href="#">学校概况/荣誉</A> 
  <DIV class=menu_childs onmouseout=Menus.Hide(0);>
  <UL>
    <LI><A href="#" 
    target=frmright>学校概况列表</A> </LI>
    <LI><A href="#" 
    target=frmright>添加学校概况</A> </LI>
    <LI><A href="#" 
    target=frmright>生成学校概况列表</A> </LI></UL></DIV>
  <DIV class=menu_div><IMG style="VERTICAL-ALIGN: bottom" 
  src="images/menu01_right.gif"></DIV></LI>
  <LI id=menu_1 onmouseover=Menus.Show(this,0) onclick=getleftbar(this);><A 
  href="#">新闻资讯</A> 
  <DIV class=menu_childs onmouseout=Menus.Hide(0);>
  <UL>
    <LI><A 
    href="#" 
    target=frmright>新闻类别</A> </LI>
    <LI><A href="#" 
    target=frmright>新闻列表</A> </LI>
    <LI><A href="#" 
    target=frmright>添加新闻</A> </LI>
    <LI><A href="#" 
    target=frmright>生成新闻分类页面</A> </LI>
    <LI><A href="#" 
    target=frmright>生成新闻详细页面</A> </LI></UL></DIV>
  <DIV class=menu_div><IMG style="VERTICAL-ALIGN: bottom" 
  src="images/menu01_right.gif"></DIV></LI>
  <LI id=menu_2 onmouseover=Menus.Show(this,0) onclick=getleftbar(this);><A 
  href="#">教师风采/学生之星</A> 
  <DIV class=menu_childs onmouseout=Menus.Hide(0);>
  <UL>
    <LI><A 
    href="#" 
    target=frmright>教师风采/学生之星类别</A> </LI>
    <LI><A href="#" 
    target=frmright>教师风采/学生之星列表</A> </LI>
    <LI><A href="#" 
    target=frmright>添加教师风采/学生之星</A> </LI>
    <LI><A href="#" 
    target=frmright>生成教师风采/学生之星分类页面</A> </LI>
    <LI><A href="#" 
    target=frmright>生成所有教师风采/学生之星详细页面</A> </LI></UL></DIV>
  <DIV class=menu_div><IMG style="VERTICAL-ALIGN: bottom" 
  src="images/menu01_right.gif"></DIV></LI>
  <LI id=menu_3 onmouseover=Menus.Show(this,0) onclick=getleftbar(this);><A 
  href="#">下载管理</A> 
  <DIV class=menu_childs onmouseout=Menus.Hide(0);>
  <UL>
    <LI><A 
    href="#" 
    target=frmright>下载类别</A> </LI>
    <LI><A href="#" 
    target=frmright>下载列表</A> </LI>
    <LI><A href="#" 
    target=frmright>添加下载</A> </LI>
    <LI><A href="#" 
    target=frmright>生成下载分类页面</A> </LI>
    <LI><A href="#" 
    target=frmright>生成下载详细页面</A> </LI></UL></DIV>
  <DIV class=menu_div><IMG style="VERTICAL-ALIGN: bottom" 
  src="images/menu01_right.gif"></DIV></LI>
  <LI id=menu_4 onmouseover=Menus.Show(this,0) onclick=getleftbar(this);><A 
  href="#">人才招聘</A> 
  <DIV class=menu_childs onmouseout=Menus.Hide(0);>
  <UL>
    <LI><A href="#" 
    target=frmright>招聘列表</A> </LI>
    <LI><A href="#" 
    target=frmright>添加招聘</A> </LI>
    <LI><A href="#" 
    target=frmright>生成招聘列表</A> </LI>
    <LI><A href="#" 
    target=frmright>生成招聘详细页面</A> </LI></UL></DIV>
  <DIV class=menu_div><IMG style="VERTICAL-ALIGN: bottom" 
  src="images/menu01_right.gif"></DIV></LI>
  <LI id=menu_5 onmouseover=Menus.Show(this,0) onclick=getleftbar(this);><A 
  href="#">其他信息</A> 
  <DIV class=menu_childs onmouseout=Menus.Hide(0);>
  <UL>
    <LI><A 
    href="#" 
    target=frmright>信息类别</A> </LI>
    <LI><A href="#" 
    target=frmright>信息列表</A> </LI>
    <LI><A href="#" 
    target=frmright>添加信息</A> </LI>
    <LI><A href="#" 
    target=frmright>生成其他信息分类页面</A> </LI>
    <LI><A href="#" 
    target=frmright>生成其他信息详细页面</A> </LI></UL></DIV>
  <DIV class=menu_div><IMG style="VERTICAL-ALIGN: bottom" 
  src="images/menu01_right.gif"></DIV></LI>
  <LI id=menu_7 onmouseover=Menus.Show(this,0) onclick=getleftbar(this);><A 
  href="#">访客反馈</A> 
  <DIV class=menu_childs onmouseout=Menus.Hide(0);>
  <UL>
    <LI><A href="#" 
    target=frmright>留言信息</A> </LI>
    <LI><A href="#" 
    target=frmright>订单信息</A> </LI>
    <LI><A href="#" 
    target=frmright>人才信息</A> </LI></UL></DIV>
  <DIV class=menu_div><IMG style="VERTICAL-ALIGN: bottom" 
  src="images/menu01_right.gif"></DIV></LI>
  <LI id=menu_8 onmouseover=Menus.Show(this,0) onclick=getleftbar(this);><A 
  href="#">用户管理</A> 
  <DIV class=menu_childs onmouseout=Menus.Hide(0);>
  <UL>
    <LI><A href="#" 
    target=frmright>网站管理员</A> </LI>
    <LI><A href="#" 
    target=frmright>前台会员</A> </LI>
    <LI><A href="#" 
    target=frmright>会员组别</A></LI></UL></DIV>
  <DIV class=menu_div><IMG style="VERTICAL-ALIGN: bottom" 
  src="images/menu01_right.gif"></DIV></LI>
  <LI id=menu_10 onmouseover=Menus.Show(this,0) onclick=getleftbar(this);><A 
  href="#">系统管理</A> 
  <DIV class=menu_childs onmouseout=Menus.Hide(0);>
  <UL>
    <LI><A href="#" 
    target=frmright>修改密码</A> </LI>
    <LI><A href="#" 
    target=frmright>网站信息设置</A> </LI>
    <LI><A href="#" 
    target=frmright>导航栏目</A> </LI>
    <LI><A href="#" 
    target=frmright>在线客服</A> </LI>
    <LI><A href="#" 
    target=frmright>网站公告</A> </LI>
    <LI><A href="#" 
    target=frmright>数据库操作</A> </LI>
    <LI><A href="#" 
    target=frmright>空间统计</A> </LI>
    <LI><A href="#" 
    target=frmright>访问统计</A> </LI>
    <LI><A href="#" 
    target=frmright>友情链接</A> </LI>
    <LI><A href="#" 
    target=frmright>阻止SQL注入记录</A> </LI>
    <LI><A href="#" 
    target=frmright>幻灯设置</A> </LI>
    <LI><A href="#" target=frmright>使用帮助</A></LI></UL></DIV>
  <DIV class=menu_div><IMG style="VERTICAL-ALIGN: bottom" 
  src="images/menu01_right.gif"></DIV></LI>
  <LI id=menu_6 onmouseover=Menus.Show(this,0) onclick=getleftbar(this);><A 
  href="#">静态生成</A> 
  <DIV class=menu_childs onmouseout=Menus.Hide(0);>
  <UL>
    <LI><A href="#" 
    target=frmright>生成教师学生分类页面</A> </LI>
    <LI><A href="#" 
    target=frmright>生成所有教师学生详细页面</A></LI>
    <LI><A href="#" 
    target=frmright>生成新闻分类页面</A></LI>
    <LI><A href="#" 
    target=frmright>生成新闻详细页面</A></LI>
    <LI><A href="#" 
    target=frmright>生成学校信息列表</A></LI>
    <LI><A href="#" 
    target=frmright>生成下载分类页面</A></LI>
    <LI><A href="#" 
    target=frmright>生成下载详细页面</A></LI>
    <LI><A href="#" 
    target=frmright>生成招聘列表</A></LI>
    <LI><A href="#" 
    target=frmright>生成招聘详细页面</A></LI>
    <LI><A href="#" 
    target=frmright>生成其他信息分类页面</A></LI>
    <LI><A href="#" 
    target=frmright>生成其他信息详细页面</A></LI>
    <LI><A href="#" 
    target=frmright>生成首页及其他主页面</A></LI></UL></DIV>
  <DIV class=menu_div><IMG style="VERTICAL-ALIGN: bottom" 
  src="images/menu01_right.gif"></DIV></LI>
  <LI id=menu_9 onmouseover=Menus.Show(this,0) onclick=getleftbar(this);><A 
  href="#">网站推广</A> 
  <DIV class=menu_childs onmouseout=Menus.Hide(0);>
  <UL>
    <LI><A href="http://www.baidu.com/search/url_submit.html" 
    target=_blank>百度登录入口</A> </LI>
    <LI><A href="http://www.google.com/intl/zh-CN/add_url.html" 
    target=_blank>Google登录入口</A> </LI>
    <LI><A href="http://search.help.cn.yahoo.com/h4_4.html" 
    target=_blank>Yahoo登录入口</A> </LI>
    <LI><A href="http://search.msn.com/docs/submit.aspx" 
    target=_blank>Live登录入口</A> </LI>
    <LI><A href="http://www.dmoz.org/World/Chinese_Simplified/" 
    target=_blank>Dmoz登录入口</A> </LI>
    <LI><A href="http://www.alexa.com/site/help/webmasters" 
    target=_blank>Alexa登录入口</A> </LI>
    <LI><A href="http://ads.zhongsou.com/register/page.jsp" 
    target=_blank>中搜登录入口</A> </LI>
    <LI><A href="http://iask.com/guest/add_url.php" target=_blank>爱问登录入口</A> 
    </LI></UL></DIV>
  <DIV class=menu_div><IMG style="VERTICAL-ALIGN: bottom" 
  src="images/menu01_right.gif"></DIV></LI></UL></DIV></DIV></DIV>
<DIV style="BACKGROUND: #337abb; HEIGHT: 24px"></DIV><!--导航部分结束-->
<TABLE style="BACKGROUND: #337abb" height="92%" cellSpacing=0 cellPadding=0 
width="100%" border=0>
  <TBODY>
  <TR>
    <TD class=main_left id=frmTitle vAlign=top align=middle name="fmTitle">
      <TABLE class=main_left_top cellSpacing=0 cellPadding=0 width="100%" 
      border=0>
        <TBODY>
        <TR height=32>
          <TD vAlign=top></TD>
          <TD class=main_left_title id=leftmenu_title>常用快捷功能</TD>
          <TD vAlign=top align=right></TD></TR></TBODY></TABLE><IFRAME 
      class=left_iframe id=frmleft name=frmleft 
      src="images/left.htm" frameBorder=0 
      allowTransparency></IFRAME>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR height=32>
          <TD vAlign=top></TD>
          <TD vAlign=bottom align=middle></TD>
          <TD vAlign=top align=right></TD></TR></TBODY></TABLE></TD>
    <TD style="WIDTH: 10px" bgColor=#337abb>
      <TABLE height="100%" cellSpacing=0 cellPadding=0 border=0>
        <TBODY>
        <TR>
          <TD style="HEIGHT: 100%" onclick=switchSysBar()><SPAN class=navPoint 
            id=switchPoint title=关闭/打开左栏><IMG 
            src="images/right.gif"></SPAN> 
        </TD></TR></TBODY></TABLE></TD>
    <TD vAlign=top width="100%" bgColor=#337abb>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" bgColor=#c4d8ed 
        border=0><TBODY>
        <TR height=32>
          <TD vAlign=top width=10 
          background=images/bg2.gif><IMG alt="" 
            src="images/teble_top_left.gif"></TD>
          <TD width=28 
          background=images/bg2.gif></TD>
          <TD background=images/bg2.gif><SPAN 
            style="FLOAT: left">网域高科学校网站管理系统中英繁生成静态网页html</SPAN><SPAN 
            id=dvbbsannounce 
            style="FONT-WEIGHT: bold; FLOAT: left; WIDTH: 300px; COLOR: #c00"></SPAN></TD>
          <TD style="COLOR: #135294; TEXT-ALIGN: right" 
          background=images/bg2.gif>| <A 
            href="#" target=_top>后台首页</A> 
            | <A href="#" target=_top>首页</A> | <A 
            href="javascript:AdminOut()" target=_top>退出</A> </TD>
          <TD vAlign=top align=right width=28 
          background=images/bg2.gif><IMG alt="" 
            src="images/teble_top_right.gif"></TD>
          <TD align=right width=16 bgColor=#337abb></TD></TR></TBODY></TABLE><IFRAME 
      class=main_iframe id=frmright name=frmright 
      src="images/syscome.htm" frameBorder=0 
      scrolling=yes></IFRAME>
      <TABLE style="BACKGROUND: #c4d8ed" cellSpacing=0 cellPadding=0 
      width="100%" border=0>
        <TBODY>
        <TR>
          <TD><IMG height=6 alt="" 
            src="images/teble_bottom_left.gif" 
            width=5></TD>
          <TD align=right><IMG height=6 alt="" 
            src="images/teble_bottom_right.gif" 
            width=5></TD>
          <TD align=right width=16 
  bgColor=#337abb></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
<DIV id=dvbbsannounce_true style="DISPLAY: none"></DIV>
<SCRIPT language=JavaScript>
<!--
document.getElementById("dvbbsannounce").innerHTML = document.getElementById("dvbbsannounce_true").innerHTML;
//-->
</SCRIPT>
</BODY></HTML>
