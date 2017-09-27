package com.ustc.sse.db;

import java.sql.ResultSet;

import com.ustc.sse.db.*;

public class DbSelect {
	public static String getInform(String name,String value){
		String result="";
		try {
			ResultSet rs;
			rs = Dbhelper.ExecQuery("SELECT "+name+" FroM studentinform where name ="
							+ "'"
							+ value + "'");
			while (rs.next()) {
				if (rs.getString(name) != null) {
					result = rs.getString(name).trim();
				} else {
					result="";
				}
			}
			rs.getStatement().getConnection().close();
			return result;
	}
		catch(Exception ee){
			ee.getStackTrace();
			return "";
		}
	}	
}
