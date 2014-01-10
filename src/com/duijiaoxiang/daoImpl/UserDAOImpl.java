package com.duijiaoxiang.daoImpl;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.duijiaoxiang.Util.HibernateUtil;
import com.duijiaoxiang.dao.UserDAO;
import com.duijiaoxiang.model.User;

public class UserDAOImpl implements UserDAO {

	public void saveData(User user) {
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		try{
			session.save(user);
			tx.commit();
			
		}catch(Exception ex){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
	}
	
	public boolean isEmailRegisted(String email) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		try{
			Query query=session.createQuery("from User users where users.email=:email");
			query.setString("email",email);
			Object obj=query.uniqueResult();
			tx.commit();
			if(null==obj){
				return false;
			}
		}catch(Exception e){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
		return true;
	}

	public boolean isUserRegisted(String username) {
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		try{ 
			Query query=session.createQuery("from User as u where u.username=:username");
			query.setString("username",username);
			Object obj=query.uniqueResult();
			tx.commit();
			if(null==obj){
				return false;
			}
		}catch(Exception e){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
		return true;
	}

	public String getPasswordByName(String username) {
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		try{
			Query query=session.createQuery("select u.password from User as u where u.username=:username");
			query.setString("username",username);
			String ps=(String)query.uniqueResult();
			tx.commit();
			System.out.println("username:"+username+"  password:"+ps);
			return ps;
		}catch(Exception ex){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
		return null;
	}
	
	public void saveSessionId(String username, String sessionId) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		try{
			Query query=session.createQuery("update User u set u.session_id=:sessionId where u.username=:username");
			query.setString("sessionId", sessionId);
			query.setString("username", username);
			query.executeUpdate();
			tx.commit();
		}catch(Exception ex){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
	}

	public boolean getAutoLoginState(String username, String sessionId) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		boolean state=false;
		try{
			Query query=session.createQuery("select u.session_id from User as u where u.username=:username");
			query.setString("username",username);
			String ss=(String)query.uniqueResult();
			System.out.println("DAOgetSession:-----"+ss);
			tx.commit();
			if(sessionId.equals(ss)){
				state=true;
			}
		}catch(Exception ex){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
		return state;
	}

	public void deleteSessionId(String username) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		try{
			Query query=session.createQuery("update User u set u.session_id=:sessionid where u.username=:username");
			query.setString("sessionid", "");
			query.setString("username", username);
			query.executeUpdate();
			tx.commit();
		}catch(Exception ex){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
	}

	public int getUserCodeByName(String username) {
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		try{
			Query query=session.createQuery("select u.ucode from User as u where u.username=:username");
			query.setString("username",username);
			int ucode=(Integer)query.uniqueResult();
			tx.commit();
			System.out.println("username:"+username+"  ucode:"+ucode);
			return ucode;
		}catch(Exception ex){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
		return -1;
	}

}
