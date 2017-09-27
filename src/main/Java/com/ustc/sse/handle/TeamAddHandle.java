package com.ustc.sse.handle;

import java.sql.SQLException;

import com.ustc.sse.*;
import com.ustc.sse.db.*;

public class TeamAddHandle {
	static String creattime;
	static String teamname;
	static String teamtype;
	static String teamlabel;
	static String teamaffiche;
	static String ganapati;
	public static boolean addInform(Team team){
		creattime = team.getCreattime();
		teamname  = team.getTeamlabel();
		teamlabel = team.getTeamlabel();
		teamtype = team.getTeamtype();
		teamaffiche = team.getTeamaffiche();
		ganapati = team.getGanapati();
		int rs1=0;
		int rs2=0;
		boolean flag;
		String sql_team = "INSERT INTO Team VALUES ('"+teamname+"', '"+teamtype+"','"+teamlabel+"','"+teamaffiche+"', '"+ganapati+"', '"+creattime+"',1);";
		String sql_stu_team="INSERT INTO Stu_Team VALUES ('"+ganapati+"','"+teamname+"',"+"1"+")";
		try {
			rs1=Dbhelper.ExecUpdate(sql_team);
			rs2=Dbhelper.ExecUpdate(sql_stu_team);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(rs1>0&rs2>0){
			flag=true;
			System.out.println("luanma");
		}
		else {
			flag = false;
		}
		return flag;
	}
}
