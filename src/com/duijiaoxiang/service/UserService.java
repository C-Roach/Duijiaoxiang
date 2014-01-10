package com.duijiaoxiang.service;

import com.duijiaoxiang.model.User;

public interface UserService {
	public void saveData(User user);
	public boolean isUserRegisted(String username);
	public boolean isEmailRegisted(String email);
	public boolean validateLogin(String un,String ps);
	public void saveSessionId(String username,String sessionId);
	public boolean getAutoLoginState(String username,String sessionId);
	public void deleteSessionId(String username);
	public int getUserCodeByName(String name);
}
