package com.ustc.sse.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ustc.sse.Students;
import com.ustc.sse.handle.*;
@WebServlet("/registservlet")
public class registservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String name;
	private String id;
	private  int age;
	private String[] favorite;
	private String classroom;
	private String school;
	private String password;
	private String gender;
	private String birthday;
	private String email;
	private String introduce;
	Students std = new Students();
	/**
	 * Default constructor.
	 */
	public registservlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		getInformation(request, response);
		boolean res = RegistHandle.addInform(std);
		if(res){
			response.sendRedirect("registsuccess.jsp");
		}
		else{
			response.setContentType("text/html charset=utf-8");
			PrintWriter out = response.getWriter();
			out.println("<h1><font color='red'>用户名或账号已存在,请重新注册</font></h1>");
			out.println("<a href='regist.jsp'>返回注册界面</a>");
		}
	}
	public void getInformation(HttpServletRequest request, HttpServletResponse response){
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=utf-8");
		if(request.getParameter("username")!=null){
			name = request.getParameter("username").trim();
			//System.out.println(name);
		}
		else{
			name = "";
		}
		std.setName(name);
		if(request.getParameter("id")!=null){
			id = request.getParameter("id").trim();
		}
		else{
			id = "";
		}
		std.setId(id);
		if(request.getParameter("age")!=null){
			age =Integer.parseInt(request.getParameter("age").trim());
		}
		else{
			age = 0;
		}
		std.setAge(age);
		if(request.getParameter("school")!=null){
			school = request.getParameter("school").trim();
		}
		else{
			school="";
		}
		std.setSchool(school);
		if(request.getParameter("classroom")!=null){
			classroom = request.getParameter("classroom").trim();
		}
		else{
			classroom = "";
		}
		std.setClassroom(classroom);
		if(request.getParameter("password")!=null){
			password = request.getParameter("password").trim();
		}
		else{
			password = "";
		}
		std.setPassword(password);
		if(request.getParameter("email")!=null){
			email = request.getParameter("email").trim();
		}
		else{
			email = "";
		}
		std.setEmail(email);
		if(request.getParameter("gender")!=null){
			gender = request.getParameter("gender").trim();
		}
		else{
			gender= "";
		}
		std.setGender(gender);
		if(request.getParameter("birthday")!=null){
			birthday = request.getParameter("birthday").trim();
		}
		else{
			birthday="";
		}
		std.setBirthday(birthday);
		if(request.getParameterValues("favorite").length>0){
			favorite =request.getParameterValues("favorite");
		}
		else{
			favorite=null;
		}
		std.setFavorite(favorite);
		if(request.getParameter("introduce")!=null){
			introduce = request.getParameter("introduce").trim();
		}
		else{
			introduce="";
		}
		std.setIntroduce(introduce);
	}

}
