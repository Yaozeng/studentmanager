package com.studentmanager.action;


import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.studentmanager.pojo.User;
import com.studentmanager.service.LoginService;
public class LoginAction {
	public User user=new User();
	LoginService service=new LoginService();
	public String execute(){
		try {
			if(service.check(user))
			{
				ActionContext ctx = ActionContext.getContext();   
		        Map<String, Object> session = ctx.getSession();   

		       session.put("loginSession", user.getUsername()+"");
				return "T";
			}
			else
				return "F";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			return "error";
		}
		
	}

}
