package com.duijiaoxiang.dao;

import com.duijiaoxiang.model.Productor;

public interface ProductorsDAO {
	//保存物品信息
	public void saveProductor(Productor pro);
	//获得最大productors编号
	public int getMaxProCode();
	//根据商品id获得物品全部信息
	public Productor getProductorByCode(int code);
}
