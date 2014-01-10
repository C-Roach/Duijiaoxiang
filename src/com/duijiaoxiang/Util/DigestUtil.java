package com.duijiaoxiang.Util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

public class DigestUtil {
	@SuppressWarnings("static-access")
	public static String md5(String str) {
		// 创建一个指定算法的信息摘要
		try {
			MessageDigest digest = MessageDigest.getInstance("MD5");
			// 通过调用digest方法将传入的字节数组都转换成16字符串
			byte[] b = digest.digest(str.getBytes());
			// 进行basic加密算法
			Base64 base = new Base64();
			return base.encode(b).toString();

		} catch (NoSuchAlgorithmException e) {
			return "";
		}
	}
	
	//验证邮箱是否合法
	public static boolean isEmailValidation(String email){
		boolean tag = true; 
	     final String pattern1 = "^([a-z0-9A-Z]+[-|\\.]?)+[a-z0-9A-Z]@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-zA-Z]{2,}$"; 
	     final Pattern pattern = Pattern.compile(pattern1); 
	     final Matcher mat = pattern.matcher(email); 
	     if (!mat.find()) { 
	         tag = false; 
	     } 
	     return tag; 
	 }
}
