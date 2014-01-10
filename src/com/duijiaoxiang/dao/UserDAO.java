package com.duijiaoxiang.dao;

import com.duijiaoxiang.model.User;

public interface UserDAO {
	//验证用户名是否已经存在
	public boolean isUserRegisted(String username);
	//验证邮箱是否已经被注册
	public boolean isEmailRegisted(String email);
	//保存用户注册信息
	public void saveData(User user);
	//根据用户名获得密码
	public String getPasswordByName(String username);
	//根据用户名获得用户的id
	public int getUserCodeByName(String username);
	//存储用户名和sessionID
	public void saveSessionId(String username,String sessionId);
	//根据cookies的username和sessionId获得自动登录
	public boolean getAutoLoginState(String username,String sessionId);
	//删除用户登陆的sessionId
	public void deleteSessionId(String username);
}
