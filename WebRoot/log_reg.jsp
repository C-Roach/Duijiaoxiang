<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>
  
  <body>
  		<div id="jscode" style="display: none;"></div>
		<div style="height: 1847px;" class="overlay"></div>
		<div class="ifnewlogin ifnewloginbox">
			<div class="ifnewlogin-inner " id="user_login">
				<span class="ifnewlogin-closer" title="关闭">关闭</span>
				<h4>
					欢迎登录
					<i>对角巷</i>！
				</h4>
				<label class="ifnewlabel">
					<p>
						<b>用户名:</b><i id="user_e"></i>
					</p>
					<p>
						<input name="username" onchange="checkform();" placeholder="论坛昵称"
							class="ifnewinput ifnew-username" type="text">
					</p>
				</label>
				<label class="ifnewlabel">
					<p>
						<b>密码:</b><i id="password_e"></i>
					</p>
					<p>
						<input placeholder="密码" value="" name="password"
							class="ifnewinput ifnew-password" onchange="checkform();"
							type="password">
					</p>
				</label>
				
						<style type="text/css">
.gg_selectBox {
	margin-right: 0px;
	color: #576f81;
}

.gg_selectBoxHover {
	
}

.gg_selectTable {
	
}

.gg_selectInput {
	font-size: 16px;
	color: #7f7f7f;
	font-weight: normal;
	padding-left: 15px;
}

.gg_selectArrow {
	width: 10px;
	font-size: 6px;
	color: #7f7f7f;
}

.gg_selectInputHover,.gg_selectArrowHover {
	color: #608AA4;
}

.gg_selectBox_wrapper {
	background-color: #fff;
	border: #dedede solid 1px;
	text-align: left;
	width: 200px;
}

.gg_selectBox_wrapper ul {
	margin: 0;
	padding: 0;
	list-style: none;
}

.gg_selectBox_wrapper ul li {
	background-color: #fff;
	color: #7f7f7f;
	font-size: 12px;
	padding-left: 15px;
	font-weight: normal;
	cursor: pointer;
	color: #576f81;
	width: 166px;
	font-size: 14px;
	font-weight: normal;
}

.gg_selectBox_wrapper ul li.current {
	background-color: #eae9e9;
	color: #7f7f7f;
}

.gg_selectBox_wrapper ul li.selected {
	background-color: #0068b7;
	color: #fff;
}
</style>
						
				<label class="ifnewlabel">
					<input value="登&nbsp;录" class="ifnew-submit-login loginsubmit"
						type="button">
				</label>
				<span class="ifnewloginbottom"><label class="left">
						<input type="checkbox" checked="true" name="autologin">
						2周内自动登录
					</label><a
					href="http://www.iconfans.org/member.php?mod=logging&amp;action=login&amp;viewlostpw=1"
					class="right">忘记密码?</a> </span>
			</div>

		</div>

		<div class="ifnewlogin ifnewregbox">
			<div class="ifnewlogin-inner user_reg">
				<span class="ifnewlogin-closer" title="关闭">关闭</span>
				<h4>
					注册加入
					<i>对角巷</i>！
				</h4>
				<label class="ifnewlabel">
					<p>
						<b>用户名:</b><i id="ue"></i>
					</p>
					<p>
						<input name="un" onchange="checkform1();" placeholder="你的昵称"
							class="ifnewinput ifnew-username-reg" type="text">
					</p>
				</label>
				<label class="ifnewlabel">
					<p>
						<b>密码:</b><i id="pe"></i>
					</p>
					<p>
						<input name="ps" onchange="checkform1();" placeholder="密码"
							value="" class="ifnewinput ifnew-password-reg" type="password">
					</p>
				</label>
				<label class="ifnewlabel">
					<p>
						<b>确认密码:</b><i id="p2e"></i>
					</p>
					<p>
						<input name="password2" onchange="checkform1();" value=""
							placeholder="再次输入密码" class="ifnewinput ifnew-password2-reg"
							type="password">
					</p>
				</label>
				<label class="ifnewlabel">
					<p>
						<b>Email:</b><i id="ee"></i>
					</p>
					<p>
						<input onfocus="pschange();" name="email" onchange="checkform1();"
							placeholder="yourmail@mail.com" class="ifnewinput ifnew-email"
							type="email">
					</p>
				</label>
				<label class="ifnewlabel">
					<input value="立即注册" class="ifnew-submit-reg loginsubmit"
						type="button">
				</label>
			</div>
		</div>
  </body>
</html>
