package com.studentmanager.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import com.studentmanager.pojo.User;
import com.studentmanager.util.DataBaseHelper;

public class LoginDao {

	public boolean check(User user) throws Exception {
		// TODO Auto-generated method stub
		String sql = "select * from user where username='"+user.getUsername()+"' and pwd='"+user.getPwd()+"'";
		ResultSet rs = DataBaseHelper.executeQuery(sql);
			if (rs.next()){
				return true;
			}
    	return false;
	}

}
