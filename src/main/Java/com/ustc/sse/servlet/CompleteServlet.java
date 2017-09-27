package com.ustc.sse.servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ustc.sse.*;
import com.ustc.sse.handle.*;

/**
 * Servlet implementation class CompleteServlet
 */
@WebServlet("/CompleteServlet")
public class CompleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String name;
	private String tname;
	private String idcardnum;
	private String number;
	Students std = new Students();

	public CompleteServlet() {
		super();

	}

	protected void doGet(HttpServletRequest request,
						 HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request,
						  HttpServletResponse response) throws ServletException, IOException {
		getInformation(request,response);
		boolean res= CompleteHandle.addInform(std);
		if(res){
			request.setAttribute("complete","完善成功");
		}
		else{
			request.setAttribute("complete","完善失败，请重试");
		}
		request.getRequestDispatcher("CompleteInform.jsp").forward(request,response);
	}

	public void getInformation(HttpServletRequest request,
							   HttpServletResponse response) {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.setContentType("text/html;charset=utf-8");
		if (request.getParameter("realName") != null) {
			tname = request.getParameter("realName").trim();
			// System.out.println(name);
		} else {
			tname = "";
		}
		std.setTname(tname);
		if(request.getParameter("idCardNumber")!=null){
			idcardnum = request.getParameter("idCardNumber").trim();
		}
		else{
			idcardnum = "";
		}
		std.setIdcardnum(idcardnum);
		if(request.getParameter("cellphone")!=null){
			number = request.getParameter("cellphone").trim();
		}
		else{
			number = "";
		}
		std.setNumber(number);

		std.setName(request.getSession().getAttribute("Username").toString());
	}

}
