package com.duijiaoxiang.productors.action;

import com.duijiaoxiang.model.Productor;
import com.duijiaoxiang.service.ProductorsService;
import com.duijiaoxiang.serviceImpl.ProductorsServiceImp;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class ProductorDetailAction extends ActionSupport {
	private int productorId;
	private Productor pro;
	public int getProductorId() {
		return productorId;
	}
	public void setProductorId(int productorId) {
		this.productorId = productorId;
	}
	public Productor getPro() {
		return pro;
	}
	public void setPro(Productor pro) {
		this.pro = pro;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println("productorid:::"+getProductorId());
		ProductorsService proService=new ProductorsServiceImp();
		Productor pro=proService.getProductorByCode(productorId);
		System.out.println("pro.name:"+pro.getPro_name());
		return SUCCESS;
	}
}
