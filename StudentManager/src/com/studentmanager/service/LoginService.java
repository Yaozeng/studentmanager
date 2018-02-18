package com.studentmanager.service;

import com.studentmanager.dao.LoginDao;
import com.studentmanager.pojo.User;

public class LoginService {
	LoginDao Ldao=new LoginDao();

	public boolean check(User user) throws Exception {
		if(Ldao.check(user)){
			return true;
		}
		else
		{
			return false;
		}
	}
	

}
