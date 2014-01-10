package com.duijiaoxiang.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.duijiaoxiang.service.UserService;
import com.duijiaoxiang.serviceImpl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class LogoutAction extends ActionSupport {
	
	public String logout() throws Exception {
		// TODO Auto-generated method stub
		//HttpServletResponse response = ServletActionContext.getResponse();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");
		PrintWriter out = ServletActionContext.getResponse().getWriter();
		
		HttpServletRequest request = ServletActionContext.getRequest();
		UserService userService=new UserServiceImpl();
		String username=(String)request.getSession().getAttribute("username");
		System.out.println("delete username:"+username);
		userService.deleteSessionId(username);
		
		out.println("1");
		out.close();
		return SUCCESS;
	}
}
