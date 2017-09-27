package com.ustc.sse.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ustc.sse.*;
import com.ustc.sse.handle.*;

/**
 * Servlet implementation class MyTeamservlet
 */
@WebServlet("/MyTeamservlet")
public class MyTeamservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public MyTeamservlet() {
		super();

	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html charset=utf-8");
		String  ganapati = request.getSession().getAttribute("Username").toString().trim();
		Team team = new Team();
		java.util.Date sys_time = new java.util.Date();
		SimpleDateFormat ft = new SimpleDateFormat ("yyyy.MM.dd");
		String creattime = ft.format(sys_time);
		String teamname = request.getParameter("teamaname");
		String teamtype = request.getParameter("teamtype");
		String teamlabel = request.getParameter("teamlabel");
		String teamaffiche = request.getParameter("teamaffiche");
		team.setCreattime(creattime);
		team.setGanapati(ganapati);
		team.setTeamaffiche(teamaffiche);
		team.setTeamlabel(teamlabel);
		team.setTeamname(teamname);
		team.setTeamtype(teamtype);
		TeamAddHandle.addInform(team);
	}

}
