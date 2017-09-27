package com.ustc.sse.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ustc.sse.loginInform;
import com.ustc.sse.handle.*;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	loginInform logininform = new loginInform();
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public loginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		if(request.getParameter("username")!=null){
			username = request.getParameter("username");
		}
		else{
			username = "";
		}
		logininform.setUsername(username);
		if(request.getParameter("password")!=null){
			password = request.getParameter("password");
		}
		else{
			password="";
		}
		logininform.setPassword(password);
		if(LoginHandle.verifyLogin(logininform)){
			request.getSession().setAttribute("Username",username);
			//System.out.println(username);
			response.sendRedirect("/UI.jsp");
		}
		else{
			request.getSession().setAttribute("sure","false");
			response.sendRedirect("/login.jsp");
		}
	}

}
