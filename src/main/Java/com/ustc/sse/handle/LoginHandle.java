package com.ustc.sse.handle;

import java.sql.ResultSet;

import com.ustc.sse.db.*;
import com.ustc.sse.*;

public class LoginHandle {
	// loginInform logininform = new loginInform();
	public static boolean verifyLogin(loginInform logininform) {
		// Connection con = null;
		// Statement state = null;
		ResultSet rs = null;
		boolean flag = false;
		String sql = "SELECT password FroM studentinform where name=" + "'"
				+ logininform.getUsername() + "'";
		try {
			rs = Dbhelper.ExecQuery(sql);
			while (rs.next()) {
				if (rs.getString("password").equals(logininform.getPassword())) {
					flag = true;
				} else {
					flag = false;
				}
			}
			rs.getStatement().getConnection().close();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return flag;

	}
}
