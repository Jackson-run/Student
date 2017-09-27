package com.ustc.sse.handle;

import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import com.ustc.sse.db.*;

public class ChangeHandle {
	static String oldpassword;
	static String newpassword;

	public static boolean isChange(HttpServletRequest request) {
		ResultSet rs;
		int rr=0;
		oldpassword = request.getParameter("oldpassword").trim();
		newpassword = request.getParameter("newpassword").trim();
		String sql;
		try {
			sql = "SELECT password FroM studentinform where name=" + "'"
					+ request.getSession().getAttribute("Username").toString().trim()+"'";
			rs = Dbhelper.ExecQuery(sql);
			while (rs.next()) {
				if (rs.getString("password").trim().equals(oldpassword)) {
					sql="update studentinform set password="+"'"+newpassword+"'"+"where name="+"'"+request.getSession().getAttribute("Username").toString().trim()+"'";
					rr=Dbhelper.ExecUpdate(sql);
				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(rr>0){
			return true;
			}
			else{
				return false;
			}
	}
}
