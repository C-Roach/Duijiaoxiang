<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta property="wb:webmaster" content="69e23ac12c635da9">
		<!--sinaweibo //-->
		<title>对角巷【学生二手交易平台】</title>
		<meta name="Keywords" content="对角巷">
		<meta name="Description" content="对角巷">
		<link rel="stylesheet" href="css/styles.css">
		<script>var _selectwidth = 280,_sedwidth = 265;</script>
		<script src="js/jquery-1.js" type="text/javascript"></script>
		<script src="js/test_kevin.js" type="text/javascript"></script>
		<script src="js/test_ajax.js" type="text/javascript"></script>
		<link rel="stylesheet" href="css/ifnewlogin.css">
		<link rel="stylesheet" href="css/top.css">
		<script src="js/form_check.js" type="text/javascript" ></script>

  </head>
  
  <body style="width: 100%; height: 100%">
    <jsp:include page="log_reg.jsp" flush="true"></jsp:include>
    <div id="con">
    	<jsp:include page="head.jsp" flush="true"></jsp:include>

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
						<h1>物品详细信息</h1>
					</p>
				</div>
				<div id="content">
					
				</div>
			</div>
		</div>
	</div>
    	 
    </div>
    <jsp:include page="foot.jsp" flush="true"></jsp:include>
  </body>
</html>
