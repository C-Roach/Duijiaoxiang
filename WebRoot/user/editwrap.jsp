<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 
   <body>
    <div class="clearfix" id="wrapper">
		<div id="inner">
			<div class="left imgside">
				<div class="imgsidebox">
					<span class="useravatar">
						<a href="">
							<img src="http://www.iconfans.org/uc_server/avatar.php?uid=83882"/>
						</a>
						<a class="follow"></a>
					</span>
					<span class="userinfo">
						<a class="usernm" href=""></a>
						<div class="lev"></div>						
					</span>
				</div>
				<div class="imgsidebox">
					<span class="favnum" style="width:119px;" title="收藏">6</span>
					<span class="othernum" style="height: 50px;">
						<p class="viewnum" style="padding-top: 3px;" title="访问">967</p>
						<p class="ftnum" style="padding-top: 3px;" title="饭团">113</p>
						<p class="goodsnum" style="padding-top: 3px;" title="赞">7</p>
					</span>
				</div>
				<div class="imgsidebox">
					<div class="followingd">
						<h3>
							<span>
							关注
							<a href="">28</a>
							</span>
						</h3>
						<ul></ul>
					</div>
					<div class="followingd follower">
						<h3>
							<span>
							粉丝
							<a>199999</a>
							</span>
						</h3>
						<ul></ul>
					</div>
				</div>
			</div>
			
			<div class="right imgcon">
				<div id="order">
					<p>
						<a class="index_t rel" href="">修改资料</a>
						<a class="index_t" href="">更改密码</a>
					</p>
				</div>
				<div id="profile">
					<div class="proform left">
						<form id="form2" action="" method="post" name="form2">
							<div class="form-section">
								<div class="form-row">
									<div class="row-header">用户名:</div>
									<div class="row-content"><%=(String)session.getAttribute("username")%></div>
								</div>
								<div class="form-row">
									<div class="row-header">性别:</div>
									<div class="row-content">
										<input type="radio" value="male" checked="checked" name="sex"/>男 &nbsp&nbsp
										<input type="radio" value="female" name="sex"/>女 &nbsp&nbsp
										<input type="radio" value="other" name="sex"/>其他
									</div>
								</div>
								<div class="form-row">
									<div class="row-header">学校:</div>
									<div class="row-content">江苏理工学院</div>
								</div>
								<div class="form-row">
									<div class="row-header">Email:</div>
									<div class="row-content">
										<input class="protext" type="text" name="email" value="xijiepc@sina.com">
										<b>●</b>
									</div>
								</div>
								<div class="form-row">
									<div class="row-header">介绍:</div>
									<div class="row-content">
										<textarea id="bio_text" style="width:400px; height:60px;" name="bio">.</textarea>
										<div class="ps">这段简介将会显示在个人空间的右上角，其他会员访问你的空间时将会看到。</div>
									</div>
								</div>
								<div class="form-row">
									<div class="row-header"></div>
									<div class="row-content">
										<input type="submit" value="修改资料">
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
  </body>
</html>
