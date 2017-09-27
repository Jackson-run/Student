package com.ustc.sse.handle;

import com.ustc.sse.*;
import com.ustc.sse.db.*;

public class CompleteHandle {
	public static boolean addInform(Students std){
		int rs =0;
		String sql = creatsql(std);
		try {
			rs = Dbhelper.ExecUpdate(sql);
			System.out.println("das das fas fa");
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
	String sql = "UPDATE studentinform SET tname ="+"'"+std.getTname()+"'"+","+"number ="+"'"+std.getNumber()+"'"+","+"idcardnumber="+"'"+std.getIdcardnum()+"'"+
			" where name='"+std.getName()+"'";
	return sql;
	}
}
