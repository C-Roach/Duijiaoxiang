package com.duijiaoxiang.dao;

import com.duijiaoxiang.model.Productor;

public interface ProductorsDAO {
	//������Ʒ��Ϣ
	public void saveProductor(Productor pro);
	//������productors���
	public int getMaxProCode();
	//������Ʒid�����Ʒȫ����Ϣ
	public Productor getProductorByCode(int code);
}
