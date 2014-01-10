<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
  </head>
  
  <body>
    <div id="header">
		<div id="wrap">
			<div id="innerhead">
				<div id="logo">
					<a href="http://localhost:8080/duijiaoxiang/index.jsp" title="回到首页">
						<h1>duijiaoxiang.com</h1>
					</a>
				</div>
				<div id="menu" style="width: 400px;">
					<ul style="width: 380px;">
						<li class="design on" style="width: 60px;">
							<a href="" title="商品"
								style="width: 30px; padding: 0 15px;">商品</a>
							<p class="menubox" style="width: 74px; display: none;">
								<a href=""
									style="width: 74px;">今日推荐</a>
								<a href=""
									style="padding-left: 13px; text-align: left; width: 60px;">最新</a>
								<a href=""
									style="padding-left: 13px; text-align: left; width: 60px;">热门</a>
								<a href=""
									style="padding-left: 13px; text-align: left; width: 60px;">关注</a>
							</p>
						</li>
						<li class="hd" style="width: 60px;">
							<a href="" title="分类"
								style="width: 30px; padding: 0 15px;">分类</a>
							<p class="menubox" style="width: 55px; display: none;">
								<a href=""
									style="width: 55px;">全部</a>
								<a href=""
									style="width: 55px;">图书数码</a>
								<a href=""
									style="width: 55px;">鞋帽服饰</a>
								<a href=""
									style="width: 55px;">生活杂物</a>
							</p>
						</li>
						<li class="hd" style="width: 60px;">
							<a href="http://www.iconfans.com/event/" title="活动交流" style="width: 30px; padding: 0 15px;">活动</a>
							<p class="menubox" style="width: 74px; display: none;">
								<a href="" style="width: 74px;">全部活动</a>
								<a href="" target="_blank" style="width: 74px;">降价处理</a>
								<a href="" target="_blank" style="width: 74px;">物物交换</a>
							</p>
						</li>
					</ul>
				</div>
				<div id="nologin" style="width: 380px;">
					<div id="search">
								<form id="searchForm" action="search.action" method="GET">
									<input name="keywords" class="search1" id="search_text"
										title="关键词可以是物品标题、物品标签、卖家" value="搜索" type="text">
								</form>
					</div>
					<%
						boolean islogin=(Boolean)session.getAttribute("islogin");
					%>
					
					<%
						if(!islogin){
							%>
							<div class="login guest">
								<div class="logina">登录</div>
								<a class="reg">注册</a>
							</div>
							<%
						}else{
							%>
							<div class="login">
							<script type="text/javascript" src="/uc_002.htm" reload="1"></script>
							<script type="text/javascript" src="/uc.htm" reload="1"></script>
							<div class="userinfotop">
								<div id="topavatar">
									<a href=""><img src="../images/avatar.gif"> </a>
								</div>
								<a class="topusername" href="user_info.action"><%=(String)session.getAttribute("username")%></a>
								<p style="display: none; width: 74px;">
									<a style="width: 74px;" class="userinfoli" href="deit_info.action">修改资料</a>
									<a style="width: 74px;" class="userinfoli quitlogin">退出登录</a>
								</p>
							</div>
							<div class="usercoltop">
								<a href="" title="个人收藏" class="fav"></a>
								<a href="./productor/upproductor.jsp" title="发布物品" class="upload"></a>
								<a href="" title="站内消息" class="msg"></a>
							</div>
						</div> 
					<%} %>
				</div>
			</div>
		</div>
	</div>
	<!--header:end //-->
	<!--register:start //-->
	<!--register:end //-->
  </body>
</html>
