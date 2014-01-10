package com.duijiaoxiang.service;

import com.duijiaoxiang.model.Productor;

public interface ProductorsService {
	//保存物品信息
	public void saveProductor(Productor pro);
	//获得最大pro_code
	public int getMaxProCode();
	//通过pro_code获得物品信息
	public Productor getProductorByCode(int code);
}
