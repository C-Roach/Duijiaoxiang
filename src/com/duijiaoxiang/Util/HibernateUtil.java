package com.duijiaoxiang.Util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
/**
 * Hibernate工具类用来打开和关闭Session对象
 * @author Rui
 *
 */
public class HibernateUtil {
	private static SessionFactory sessionFactory;

	static {
		try {
			sessionFactory = new Configuration().configure().buildSessionFactory();
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static Session openSession() {
		Session session = sessionFactory.openSession();
		return session;
	}

	public static void close(Session session) {
		if (null != session) {
			session.close();
		}
	}
}
