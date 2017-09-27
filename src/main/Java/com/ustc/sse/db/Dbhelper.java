package com.ustc.sse.db;
import java.sql.*;
public class Dbhelper {

	private static final String url = "jdbc:mysql://127.0.0.1:3306/student?useUnicode=true&characterEncoding=utf-8&useSSL=false&serverTimezone=UTC";
	private static final String username="root";
	private static final String password="123456";
	//private static final String Driver="";
	
	static{
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
		}
		catch(ClassNotFoundException e){
			System.out.println(e);
		}
	}
	
	private static Connection getconnection() throws SQLException{
		if(DriverManager.getConnection(url,username,password)!=null){
			System.out.println("连接成功");
		}
		return DriverManager.getConnection(url,username,password);
	}
	
	
	public static int ExecUpdate(String sql) throws SQLException
	{
		System.out.println("Update:\n" +sql + "\n on " + System.currentTimeMillis());
		Connection con = getconnection();
		PreparedStatement state = con.prepareStatement(sql);
		int res=0;
		try{
		res = state.executeUpdate();
		System.out.println("Update Compelete!");
		con.close();
		return res;
		}
		catch(Exception ww){	
			return 0;
		}
	}

	public static ResultSet ExecQuery(String sql) throws SQLException
	{
		System.out.println("Query:\n" +sql + "\n on " + System.currentTimeMillis());
		Connection con = getconnection();
		PreparedStatement state = con.prepareStatement(sql);
		ResultSet res = state.executeQuery();
		System.out.println("Query Compelete!");
		return res;
	}

	public static void main(String[] args) {
		try {
			getconnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}

