package com.duijiaoxiang.service;

import com.duijiaoxiang.model.Productor;

public interface ProductorsService {
	//������Ʒ��Ϣ
	public void saveProductor(Productor pro);
	//������pro_code
	public int getMaxProCode();
	//ͨ��pro_code�����Ʒ��Ϣ
	public Productor getProductorByCode(int code);
}
