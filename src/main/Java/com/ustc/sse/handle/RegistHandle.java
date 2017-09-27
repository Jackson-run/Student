package com.ustc.sse.handle;

import com.ustc.sse.*;
import com.ustc.sse.db.*;


public class RegistHandle {
	public static boolean addInform(Students std){
		int rs =0;
		String sql = creatsql(std);
		try {
			rs = Dbhelper.ExecUpdate(sql);
	}
		catch(Exception ex){
			ex.printStackTrace();
		} 
		/*try {
			state.close();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		if(rs>0){
		return true;
		}
		else{
			return false;
		}
		
		
		
	}
	public static String creatsql(Students std){
		String favorite = "";
		for(String ss:std.getFavorite()){
			favorite+=ss+",";
		}
		
	String sql = "INSERT INTO studentinform VALUES ("+std.getId()+", '"+std.getName()+"',"+std.getAge()+", '"+favorite+"', '"+std.getClassroom()+"', '"+std.getSchool()+"','"+std.getPassword()+"','"+std.getGender()+"','"+std.getBirthday()+"','"+std.getEmail()+"','"+std.getIntroduce()+"','"+"preview.jpg"+"','"+""+"','"+""+"','"+""+"');";
	return sql;
	}
}
