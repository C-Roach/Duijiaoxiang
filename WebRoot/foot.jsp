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
    <a style="position: fixed; z-index: 2147483647; display: none;"id="scrollUp" href="#con" title="回到顶部"></a>
	<script src="js/top.js" type="text/javascript"></script>
	<div id="footer">
		<div id="wrap">
			<div id="ft_left">
				<div class="ft_left_top" title="Hi,iconfans!"></div>
				<div class="sgid clearfix">
					<a class="sina" href="" target="_blank"
						title="iconfans新浪官方微博"></a>
					<a class="douban" href=""
						target="_blank" title="iconfans豆瓣"></a>
					<a class="qq" href=""
						title="iconfans腾讯官方微博"></a>
					<a class="da" href=""
						target="_blank" title="iconfans \\DA专区"></a>
				</div>
				<p>
					对角巷是一个专注于大学生二手物品交易的平台。		
				</p>
			</div>
			<div id="ft_right">
				<div class="ft_right_top" title="首页">
					<a href="http://www.iconfans.com/" target="_blank"></a>
				</div>
				<p class="ft_menu">
					<a href="" target="_blank"
						title="问题反馈">问题反馈</a> |
					<a href="" target="_blank"
						title="关于我们">关于我们</a>
				</p>
				<div class="desc">
					<span title="小圈子，大份量"></span>
					<p>
						Powered by &#169; Roach(xijiepc@sina.com)
					</p>
				</div>
			</div>
		</div>
	</div>
	<div style="display: none;">
		<script src="" charset="UTF-8"></script>
	</div>
  </body>
</html>
