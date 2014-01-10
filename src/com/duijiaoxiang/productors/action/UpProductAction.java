package com.duijiaoxiang.productors.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.duijiaoxiang.service.ProductorsService;
import com.duijiaoxiang.serviceImpl.ProductorsServiceImp;
import com.opensymphony.xwork2.ActionSupport;

@SuppressWarnings("serial")
public class UpProductAction extends ActionSupport {
	
	private List<File> uploadify;
	private List<String> uploadifyFileName;
	private List<String> uploadifyContentType;
	private String duijiao;//用户的id
	
	public String getDuijiao() {
		return duijiao;
	}
	public void setDuijiao(String duijiao) {
		this.duijiao = duijiao;
	}
	public List<File> getUploadify() {
		return uploadify;
	}
	public void setUploadify(List<File> uploadify) {
		this.uploadify = uploadify;
	}
	public List<String> getUploadifyFileName() {
		return uploadifyFileName;
	}
	public void setUploadifyFileName(List<String> uploadifyFileName) {
		this.uploadifyFileName = uploadifyFileName;
	}

	public List<String> getUploadifyContentType() {
		return uploadifyContentType;
	}
	public void setUploadifyContentType(List<String> uploadifyContentType) {
		this.uploadifyContentType = uploadifyContentType;
	}

	@Override
	public String execute() throws Exception {
		try{
			//System.out.println("userid"+getDuijiao());
			ProductorsService proService=new ProductorsServiceImp();
			int nextProcode=proService.getMaxProCode();
			//System.out.println("productorsCode:"+nextProcode);
			String path=ServletActionContext.getServletContext().getRealPath("/userPictures/"+nextProcode+"/");
			File dir=new File(path);
			if(!dir.isDirectory()&&!dir.exists()){
				dir.mkdir();
			}
			InputStream is=new FileInputStream(getUploadify().get(0));
			System.out.println("fileName:"+getUploadifyFileName().get(0));
			long picName=(new java.util.Date().getTime());//以当前时间来给图片命名
			//File pic=new File(path,getUploadifyFileName().get(0));
			String filename=getUploadifyFileName().get(0);
			filename=String.valueOf(picName)+filename.substring(filename.lastIndexOf("."));
			File pic=new File(path,filename);
			OutputStream os=new FileOutputStream(pic);
			int length=0;
			byte[] buffer=new byte[1024];
			while(-1!=(length=is.read(buffer))){
				os.write(buffer, 0, length);
			}
			is.close();
			os.close();
			
			HttpServletResponse response = ServletActionContext.getResponse();
			response.setContentType("text/html; charset=UTF-8");
			response.setHeader("Cache-Control", "no-cache");
			PrintWriter out = ServletActionContext.getResponse().getWriter();
			out.println("userPictures/"+nextProcode+"/"+filename);
		}catch(Exception ex){
			ex.printStackTrace();
		}
		return null;
	}
}
