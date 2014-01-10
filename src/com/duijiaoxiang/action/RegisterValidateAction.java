package com.duijiaoxiang.action;

import java.io.PrintWriter;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;

import com.duijiaoxiang.Util.DigestUtil;
import com.duijiaoxiang.service.UserService;
import com.duijiaoxiang.serviceImpl.UserServiceImpl;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class RegisterValidateAction extends ActionSupport {
	private String user_name;
	private String user_email;
	private String password;
	private String password2;
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	private String back_message="";

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

	public String checkData() throws Exception {
		//System.out.println(getUser_name());
		//System.out.println(getUser_email());
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/html; charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");
		PrintWriter out = ServletActionContext.getResponse().getWriter();
		
		/*back_message״̬��ʾ
		 * 0	�û�����֤�ɹ�
		 * 1	�û�����֤��֤ʧ�ܣ��û��Ѵ��ڣ�
		 * 2	δ��������
		 * 3	δ�ٴ���������
		 * 4	�����������벻һ��
		 * 5	δ��������
		 * 6	�����ַ���Ϸ�
		 * 7	����֤�ɹ�
		 * 8	�����ѱ�ע��
		 */
		UserService userService=new UserServiceImpl();
		if(userService.isUserRegisted(getUser_name())){
			back_message="1";
			out.println(back_message);
			out.close();
			return SUCCESS;
		}else{
			back_message="0";
			if("".equals(getPassword())){
				back_message="2";
				out.println(back_message);
				out.close();
				return SUCCESS;
			}
			if("".equals(getPassword2())){
				back_message="3";
				out.println(back_message);
				out.close();
				return SUCCESS;
			}
			if(!getPassword().equals(getPassword2())){
				back_message="4";
				out.println(back_message);
				out.close();
				return SUCCESS;
			}
			if("".equals(getUser_email())){
				back_message="5";
				out.println(back_message);
				out.close();
				return SUCCESS;
			}
			if(!DigestUtil.isEmailValidation(getUser_email())){
				back_message="6";
				out.println(back_message);
				out.close();
				return SUCCESS;
			}
			if(userService.isEmailRegisted(getUser_email())){
				back_message="8";
				out.println(back_message);
				out.close();
				return SUCCESS;
			}
		}
		back_message="7";
		out.println(back_message);
		out.close();
		return SUCCESS;
	}
}
