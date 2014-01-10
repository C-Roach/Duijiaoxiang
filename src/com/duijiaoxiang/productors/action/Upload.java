package com.duijiaoxiang.productors.action;

import java.text.SimpleDateFormat;
import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.duijiaoxiang.model.Productor;
import com.duijiaoxiang.service.ProductorsService;
import com.duijiaoxiang.serviceImpl.ProductorsServiceImp;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class Upload extends ActionSupport {
	private String big_class;
	private String small_class;
	private String name;
	private String tag;
	private String buy_date;
	private String buy_price;
	private String present_price;
	private String detail;
	private int pro_code;
	
	public int getPro_code() {
		return pro_code;
	}

	public void setPro_code(int proCode) {
		pro_code = proCode;
	}

	public String getBig_class() {
		return big_class;
	}

	public void setBig_class(String bigClass) {
		big_class = bigClass;
	}

	public String getSmall_class() {
		return small_class;
	}

	public void setSmall_class(String smallClass) {
		small_class = smallClass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public String getBuy_date() {
		return buy_date;
	}

	public void setBuy_date(String buyDate) {
		buy_date = buyDate;
	}

	public String getBuy_price() {
		return buy_price;
	}

	public void setBuy_price(String buyPrice) {
		buy_price = buyPrice;
	}

	public String getPresent_price() {
		return present_price;
	}

	public void setPresent_price(String presentPrice) {
		present_price = presentPrice;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	@Override
	public String execute() throws Exception {
		//类型转化
		int bc=Integer.parseInt(big_class);
		int sc=Integer.parseInt(small_class);
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date bdate=new java.sql.Date(sdf.parse(buy_date).getTime());
		java.sql.Date pdate=new java.sql.Date(new java.util.Date().getTime());
		float pprice=Float.parseFloat(present_price);
		//获得session
		HttpSession session=ServletActionContext.getRequest().getSession();
		int userid=(Integer) session.getAttribute("userId");
		//数据整合模型
		Productor pro=new Productor();
		if(!("".equals(buy_price))){
			pro.setPro_buy_price(Float.parseFloat(buy_price));
		}
		pro.setPro_big_code(bc);
		pro.setPro_small_code(sc);
		pro.setPro_name(name);
		pro.setPro_tag(tag);
		pro.setPro_buy_time(bdate);
		pro.setPro_start_time(pdate);
		pro.setPro_present_price(pprice);
		pro.setPro_detail(detail);
		pro.setPro_belone(userid);
		pro.setPro_state(1);
		//加入数据库
		
		ProductorsService proService=new ProductorsServiceImp();
		pro_code=proService.getMaxProCode();
		proService.saveProductor(pro);
		return SUCCESS;
	}
}
