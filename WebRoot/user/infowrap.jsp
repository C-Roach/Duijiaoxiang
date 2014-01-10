<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
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
						<a class="index_t rel" href="">我的商品</a>
						<a class="index_t" href="">我的交易</a>
						<a class="index_new" href="">我的收藏</a>
						<a class="index_hot" href="">通知消息</a>
					</p>
				</div>
				<div id="content">
					
				</div>
			</div>
		</div>
	</div>
  </body>
</html>
