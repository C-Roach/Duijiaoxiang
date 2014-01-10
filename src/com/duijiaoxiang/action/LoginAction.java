package com.duijiaoxiang.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.duijiaoxiang.service.UserService;
import com.duijiaoxiang.serviceImpl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class LoginAction extends ActionSupport {
	private String user_name;
	private String user_password;
	private String auto_login;
	public String getAuto_login() {
		return auto_login;
	}
	public void setAuto_login(String autoLogin) {
		auto_login = autoLogin;
	}

	private Map<String,Object> jsonContent=new HashMap<String,Object>();
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String userName) {
		user_name = userName;
	}
	
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String userPassword) {
		user_password = userPassword;
	}
	public Map<String, Object> getJsonContent() {
		return jsonContent;
	}
	public void setJsonContent(Map<String, Object> jsonContent) {
		this.jsonContent = jsonContent;
	}
	
	public String login()throws Exception{
		System.out.println("LoginAction:"+getUser_name());
		System.out.println("LoginAction:"+getUser_password());
		System.out.println("LoginAction:"+getAuto_login());
		
		//ActionContext actionContext=ActionContext.getContext();
		//Map<String,Object> session=actionContext.getSession();
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpServletRequest request = ServletActionContext.getRequest();
		
		UserService userService=new UserServiceImpl();
		/**
		 * code  返回json标示
		 * 0	登陆成功
		 * 1	用户名不存在
		 * 2	密码错误
		 * 3	用户名为空
		 * 4	密码为空
		 * 11	未知错误
		 */
		String code="11";
		if("".equals(getUser_name())){
			code="3";
			jsonContent.put("code", code);
			this.setJsonContent(jsonContent);
			return SUCCESS;
		}else{
			if(!userService.isUserRegisted(getUser_name())){
				code="1";
				jsonContent.put("code", code);
				this.setJsonContent(jsonContent);
				return SUCCESS;
			}
			if("".equals(getUser_password())){
				code="4";
				jsonContent.put("code", code);
				this.setJsonContent(jsonContent);
				return SUCCESS;
			}
			if(!userService.validateLogin(getUser_name(), getUser_password())){
				code="2";
				jsonContent.put("code", code);
				this.setJsonContent(jsonContent);
				return SUCCESS;
			}
		}
		code="0";
		jsonContent.put("code", code);
		this.setJsonContent(jsonContent);
		//处理自动登录
		if("on".equals(auto_login)){
			Cookie ckUsername=new Cookie("autoLoginUser",getUser_name());
			ckUsername.setMaxAge(60*60*24*14);
			//ckUsername.setPath("/");
			response.addCookie(ckUsername);
			//Cookie ckuserid=new Cookie("userId",String.valueOf(userService.getUserCodeByName(getUser_name())));
			//response.addCookie(ckuserid);
			
			HttpSession session =request.getSession();
			String sessionId=session.getId();
			System.out.println("sessionId:"+sessionId);
			Cookie ckSessionId=new Cookie("sessionId",sessionId);
			ckSessionId.setMaxAge(60*60*24*14);
			response.addCookie(ckSessionId);
			userService.saveSessionId(getUser_name(), sessionId);//将sessionId保存进数据库
		}
		return SUCCESS;
	}
}
