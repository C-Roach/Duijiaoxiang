package com.duijiaoxiang.serviceImpl;

import com.duijiaoxiang.dao.ProductorsDAO;
import com.duijiaoxiang.daoImpl.ProductorsDAOImpl;
import com.duijiaoxiang.model.Productor;
import com.duijiaoxiang.service.ProductorsService;

public class ProductorsServiceImp implements ProductorsService {

	private ProductorsDAO proDAO=new ProductorsDAOImpl();
	public void saveProductor(Productor pro) {
		// TODO Auto-generated method stub
		proDAO.saveProductor(pro);
	}
	public int getMaxProCode() {
		return proDAO.getMaxProCode();
	}
	public Productor getProductorByCode(int code) {
		// TODO Auto-generated method stub
		return proDAO.getProductorByCode(code);
	}

}
