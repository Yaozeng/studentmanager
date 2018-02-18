package com.studentmanager.action;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studentmanager.pojo.User;
import com.sun.net.httpserver.HttpExchange;

public class RightFilter extends HttpServlet implements Filter{

	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,  
            FilterChain filterChain) throws IOException, ServletException{
		 HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;  
	        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
	        
	        if (!httpServletRequest.getRequestURI().endsWith("Login.jsp")) { 
	        String username = (String) httpServletRequest.getSession().getAttribute("loginSession");
	        	 if (username == null) { 
	                httpServletResponse.sendRedirect("/StudentManager/Login.jsp");  
	        	 }
	        }  
	        filterChain.doFilter(servletRequest, servletResponse);  
	    }

		public void init(FilterConfig arg0) throws ServletException {
			// TODO Auto-generated method stub
			
		}

		
		// TODO Auto-generated method stub


}
