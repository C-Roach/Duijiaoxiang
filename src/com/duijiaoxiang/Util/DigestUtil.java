package com.duijiaoxiang.Util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.sun.org.apache.xerces.internal.impl.dv.util.Base64;

public class DigestUtil {
	@SuppressWarnings("static-access")
	public static String md5(String str) {
		// ����һ��ָ���㷨����ϢժҪ
		try {
			MessageDigest digest = MessageDigest.getInstance("MD5");
			// ͨ������digest������������ֽ����鶼ת����16�ַ���
			byte[] b = digest.digest(str.getBytes());
			// ����basic�����㷨
			Base64 base = new Base64();
			return base.encode(b).toString();

		} catch (NoSuchAlgorithmException e) {
			return "";
		}
	}
	
	//��֤�����Ƿ�Ϸ�
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
