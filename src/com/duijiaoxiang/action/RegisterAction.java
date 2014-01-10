package com.duijiaoxiang.action;

import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.duijiaoxiang.Util.DigestUtil;
import com.duijiaoxiang.model.User;
import com.duijiaoxiang.service.UserService;
import com.duijiaoxiang.serviceImpl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class RegisterAction extends ActionSupport{
	private String user_name;
	private String user_email;
	private String user_password;
	private String user_password2;
	private Map<String,Object> jsonContent=new HashMap<String,Object>();
	
	public Map<String, Object> getJsonContent() {
		return jsonContent;
	}

	public void setJsonContent(Map<String, Object> jsonContent) {
		this.jsonContent = jsonContent;
	}

	public String getUser_password2() {
		return user_password2;
	}

	public void setUser_password2(String userPassword2) {
		user_password2 = userPassword2;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String userPassword) {
		user_password = userPassword;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String userName) {
		user_name = userName;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String userEmail) {
		user_email = userEmail;
	}
	
	public String saveData() throws Exception{
		System.out.println("RegisterAction:"+getUser_name());
		System.out.println("RegisterAction:"+getUser_password());
		System.out.println("RegisterAction:"+getUser_email());
		
		//ActionContext actionContext=ActionContext.getContext();
		//Map<String,Object> session=actionContext.getSession();
		HttpServletResponse response = ServletActionContext.getResponse();
		HttpServletRequest request = ServletActionContext.getRequest();
		
		UserService userService=new UserServiceImpl();
		
		String code="11";
		User user=new User();
		user.setUsername(user_name);
		user.setEmail(user_email);
		/**
		 * code��ʾ��
		 * 0	ע��ɹ�
		 * 1	�û���Ϊ��
		 * 2	����Ϊ��
		 * 3	�����������벻һ��
		 * 4	����дע������
		 * 5	�û������Ϸ�
		 * 6	�û��������Ƿ��ʻ�
		 * 7	�û������ѱ�ע��
		 * 8	�����ʽ����
		 * 9	�����䲻����ע��
		 * 10	�����ѱ�ע��
		 * 11	δ�������
		 * 12	���ٴ�ȷ������
		 */
		if("".equals(getUser_name())){
			code="1";
			jsonContent.put("code", code);
			this.setJsonContent(jsonContent);
			return SUCCESS;
		}else{
			if(getUser_name().length()<4||getUser_name().length()>20){
				code="5";
				jsonContent.put("code", code);
				this.setJsonContent(jsonContent);
				return SUCCESS;
			}else{
				if(userService.isUserRegisted(getUser_name())){
					code="7";
					jsonContent.put("code", code);
					this.setJsonContent(jsonContent);
					return SUCCESS;
				}
				if("".equals(getUser_password())){
					code="2";
					jsonContent.put("code", code);
					this.setJsonContent(jsonContent);
					return SUCCESS;
				}
				if("".equals(getUser_password2())){
					code="12";
					jsonContent.put("code", code);
					this.setJsonContent(jsonContent);
					return SUCCESS;
				}
				if(!getUser_password().equals(getUser_password2())){
					code="3";
					jsonContent.put("code", code);
					this.setJsonContent(jsonContent);
					return SUCCESS;
				}
				if("".equals(getUser_email())){
					code="4";
					jsonContent.put("code", code);
					this.setJsonContent(jsonContent);
					return SUCCESS;
				}
				if(!DigestUtil.isEmailValidation(getUser_email())){
					code="8";
					jsonContent.put("code", code);
					this.setJsonContent(jsonContent);
					return SUCCESS;
				}
				if(userService.isEmailRegisted(getUser_email())){
					code="10";
					jsonContent.put("code", code);
					this.setJsonContent(jsonContent);
					return SUCCESS;
				}
			}
		}
		code="0";
		jsonContent.put("code", code);
		this.setJsonContent(jsonContent);
		//��������м���
		user.setPassword(DigestUtil.md5(user_password));
		java.sql.Date date=new java.sql.Date(new java.util.Date().getTime());
		user.setRegister_time(date);
		//�Զ���¼
		Cookie ckUsername=new Cookie("autoLoginUser",URLEncoder.encode(getUser_name(), "UTF-8"));
		ckUsername.setMaxAge(60*60*24*14);
		//ckUsername.setPath("/");
		response.addCookie(ckUsername);
		
		HttpSession session =request.getSession();
		String sessionId=session.getId();
		//System.out.println("sessionId:"+sessionId);
		Cookie ckSessionId=new Cookie("sessionId",sessionId);
		ckSessionId.setMaxAge(60*60*24*14);
		response.addCookie(ckSessionId);
		user.setSession_id(sessionId);
		//�����û���Ϣ�����ݿ�
		userService.saveData(user);
		return SUCCESS;
	}
}
