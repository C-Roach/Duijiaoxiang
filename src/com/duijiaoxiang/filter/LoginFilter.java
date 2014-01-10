package com.duijiaoxiang.filter;

import java.io.IOException;
import java.net.URLDecoder;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.duijiaoxiang.service.UserService;
import com.duijiaoxiang.serviceImpl.UserServiceImpl;

public class LoginFilter implements Filter {

	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest servletrequest,
			ServletResponse servletresponse, FilterChain filterchain)
			throws IOException, ServletException {
		
		System.out.println("loginfilter...");
		HttpServletRequest request=(HttpServletRequest)servletrequest;
		//HttpServletResponse response=(HttpServletResponse)servletresponse;
		UserService userService=new UserServiceImpl();
		
		String username="";
		String sessionId="";
		int userId=-1;
		boolean isAutoLogin=false;
		HttpSession session=request.getSession(true);
		Cookie[] cookies=request.getCookies();
		if(cookies!=null){
			for(Cookie ck:cookies){
				if("autoLoginUser".equals(ck.getName())){
					username=URLDecoder.decode(ck.getValue(), "UTF-8"); 
				}
				if("sessionId".equals(ck.getName())){
					sessionId=ck.getValue();
				}
			}
			isAutoLogin=userService.getAutoLoginState(username, sessionId);
			userId=userService.getUserCodeByName(username);
			System.out.println("filter:username::::::::"+username);
			System.out.println("filter:sessionId::::::::"+sessionId);
			System.out.println("filter:userId:::::::"+userId);
			if(isAutoLogin){//可以自动登录
				System.out.println("已登录");
				session.setAttribute("username", username);
				session.setAttribute("userId", userId);
				session.setAttribute("islogin", true);
			}else{
				System.out.println("不可登陆");
				session.setAttribute("islogin", false);
			}
		}
		
		filterchain.doFilter(servletrequest, servletresponse);
	}

	public void init(FilterConfig filterconfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

}
