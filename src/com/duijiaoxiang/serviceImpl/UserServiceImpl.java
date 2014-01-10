package com.duijiaoxiang.serviceImpl;

import com.duijiaoxiang.Util.DigestUtil;
import com.duijiaoxiang.dao.UserDAO;
import com.duijiaoxiang.daoImpl.UserDAOImpl;
import com.duijiaoxiang.model.User;
import com.duijiaoxiang.service.UserService;

public class UserServiceImpl implements UserService {
	
	private UserDAO userDAO=new UserDAOImpl();
	public void saveData(User user) {
		userDAO.saveData(user);
	}

	public boolean isEmailRegisted(String email) {
		// TODO Auto-generated method stub
		return userDAO.isEmailRegisted(email);
	}

	public boolean isUserRegisted(String username) {
		// TODO Auto-generated method stub
		return userDAO.isUserRegisted(username);
	}

	public boolean validateLogin(String un, String ps) {
		String pwd1 = DigestUtil.md5(ps);
		String un1=userDAO.getPasswordByName(un);
		if(pwd1.equals(un1)){
			return true;
		}
		return false;
	}

	public void saveSessionId(String username, String sessionId) {
		userDAO.saveSessionId(username, sessionId);
	}

	public boolean getAutoLoginState(String username, String sessionId) {
		return userDAO.getAutoLoginState(username, sessionId);
	}

	public void deleteSessionId(String username) {
		// TODO Auto-generated method stub
		userDAO.deleteSessionId(username);
	}

	public int getUserCodeByName(String name) {
		// TODO Auto-generated method stub
		return userDAO.getUserCodeByName(name);
	}

	

}
