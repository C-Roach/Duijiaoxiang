package com.duijiaoxiang.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.duijiaoxiang.service.UserService;
import com.duijiaoxiang.serviceImpl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class LoginValidateAction extends ActionSupport {
	private String user_name;
	private String password;
	private String back_message = "";

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String userName) {
		user_name = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String execute() throws Exception {
		System.out.println(getUser_name());
		System.out.println(getPassword());
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");
		PrintWriter out = ServletActionContext.getResponse().getWriter();
		
		/*back_message状态表示
		 * 0	用户名验证成功
		 * 1	用户名验证验证失败（用户不存在）
		 * 2	密码错误
		 * 3	密码正确
		 */
		UserService userService=new UserServiceImpl();
		if(!userService.isUserRegisted(getUser_name())){
			back_message="1";
		}else{
			back_message="0";
			if(!"".equals(getPassword())){
				if(!userService.validateLogin(getUser_name(), getPassword())){
					back_message="2";
				}else{
					back_message="3";
				}
			}
		}
		out.println(back_message);
		out.close();
		return SUCCESS;
	}
}
