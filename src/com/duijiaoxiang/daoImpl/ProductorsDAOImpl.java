package com.duijiaoxiang.daoImpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.duijiaoxiang.Util.HibernateUtil;
import com.duijiaoxiang.dao.ProductorsDAO;
import com.duijiaoxiang.model.Productor;

public class ProductorsDAOImpl implements ProductorsDAO {

	public void saveProductor(Productor pro) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		try{
			session.save(pro);
			tx.commit();
			
		}catch(Exception ex){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
	}

	public int getMaxProCode() {
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		try{
			Query query=session.createQuery("select max(pro_code) from Productor");
			Integer code=(Integer)query.uniqueResult();
			code++;
			tx.commit();
			return code;
		}catch(Exception ex){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
		return 0;
	}

	@SuppressWarnings("unchecked")
	public Productor getProductorByCode(int code) {
		// TODO Auto-generated method stub
		Session session=HibernateUtil.openSession();
		Transaction tx=session.beginTransaction();
		try{
			Query query=session.createQuery("from Productor as pro where pro.pro_code=:code");
			query.setInteger("code",code);
			List<Productor> list=query.list();
			Productor pro=list.get(0);
			if(null==pro){
				return null;
			}
			return pro;
		}catch(Exception ex){
			if(null!=tx){
				tx.rollback();
			}
		}finally{
			HibernateUtil.close(session);
		}
		return null;
	}
}
