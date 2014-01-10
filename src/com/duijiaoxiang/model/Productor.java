package com.duijiaoxiang.model;

import java.sql.Date;

public class Productor {
	private int pro_code;
	private String pro_name;
	private int pro_belone;
	private int pro_state;
	private int pro_big_code;
	private int pro_small_code;
	private Date pro_release_time;
	private Date pro_buy_time;
	private float pro_buy_price;
	private float pro_present_price;
	private float pro_end_price;
	private String pro_detail;
	private Date pro_start_time;
	private Date pro_end_time;
	public Date getPro_end_time() {
		return pro_end_time;
	}
	public void setPro_end_time(Date proEndTime) {
		pro_end_time = proEndTime;
	}
	private String pro_tag;
	private int customerid;
	public int getCustomerid() {
		return customerid;
	}
	public void setCustomerid(int customerid) {
		this.customerid = customerid;
	}
	public String getPro_tag() {
		return pro_tag;
	}
	public void setPro_tag(String proTag) {
		pro_tag = proTag;
	}
	public int getPro_code() {
		return pro_code;
	}
	public void setPro_code(int proCode) {
		pro_code = proCode;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String proName) {
		pro_name = proName;
	}
	public int getPro_belone() {
		return pro_belone;
	}
	public void setPro_belone(int proBelone) {
		pro_belone = proBelone;
	}
	public int getPro_state() {
		return pro_state;
	}
	public void setPro_state(int proState) {
		pro_state = proState;
	}
	public int getPro_big_code() {
		return pro_big_code;
	}
	public void setPro_big_code(int proBigCode) {
		pro_big_code = proBigCode;
	}
	public int getPro_small_code() {
		return pro_small_code;
	}
	public void setPro_small_code(int proSmallCode) {
		pro_small_code = proSmallCode;
	}
	public Date getPro_release_time() {
		return pro_release_time;
	}
	public void setPro_release_time(Date proReleaseTime) {
		pro_release_time = proReleaseTime;
	}
	public Date getPro_buy_time() {
		return pro_buy_time;
	}
	public void setPro_buy_time(Date proBuyTime) {
		pro_buy_time = proBuyTime;
	}
	public float getPro_buy_price() {
		return pro_buy_price;
	}
	public void setPro_buy_price(float proBuyPrice) {
		pro_buy_price = proBuyPrice;
	}
	public float getPro_present_price() {
		return pro_present_price;
	}
	public void setPro_present_price(float proPresentPrice) {
		pro_present_price = proPresentPrice;
	}
	public float getPro_end_price() {
		return pro_end_price;
	}
	public void setPro_end_price(float proEndPrice) {
		pro_end_price = proEndPrice;
	}
	public String getPro_detail() {
		return pro_detail;
	}
	public void setPro_detail(String proDetail) {
		pro_detail = proDetail;
	}
	public Date getPro_start_time() {
		return pro_start_time;
	}
	public void setPro_start_time(Date proStartTime) {
		pro_start_time = proStartTime;
	}
}
