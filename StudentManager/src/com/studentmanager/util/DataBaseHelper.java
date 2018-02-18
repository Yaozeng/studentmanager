package com.studentmanager.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import sun.jdbc.rowset.CachedRowSet;
public class DataBaseHelper{
	public static Connection getConnection() throws Exception{
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	    return DriverManager.getConnection("jdbc:mysql://localhost:3306/studentmanager?useOldAliasMetadataBehavior=true&characterEncoding=utf-8&useSSL=false","root","yaozwin1115");

	}
	public static void executeUpdate(String s) throws Exception {
		String sql = s;
		Connection conn = getConnection();
		Statement stmt;
		stmt = conn.createStatement();
		stmt.executeUpdate(sql);
		releaseConn(conn);
	}
	public static void releaseConn(Connection conn) throws Exception{ 
			if(conn != null) {
			   conn.close();
			}
	}
    public static ResultSet executeQuery(String sql) throws Exception {
    	Connection conn = getConnection();
		Statement stmt;
		stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		CachedRowSet crs = new CachedRowSet();
		crs.populate(rs);
		releaseConn(conn);
		return crs;
    }
}