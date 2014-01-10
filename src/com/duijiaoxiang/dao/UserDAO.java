package com.duijiaoxiang.dao;

import com.duijiaoxiang.model.User;

public interface UserDAO {
	//��֤�û����Ƿ��Ѿ�����
	public boolean isUserRegisted(String username);
	//��֤�����Ƿ��Ѿ���ע��
	public boolean isEmailRegisted(String email);
	//�����û�ע����Ϣ
	public void saveData(User user);
	//�����û����������
	public String getPasswordByName(String username);
	//�����û�������û���id
	public int getUserCodeByName(String username);
	//�洢�û�����sessionID
	public void saveSessionId(String username,String sessionId);
	//����cookies��username��sessionId����Զ���¼
	public boolean getAutoLoginState(String username,String sessionId);
	//ɾ���û���½��sessionId
	public void deleteSessionId(String username);
}
