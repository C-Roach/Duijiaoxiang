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
    <div class="clearfix" id="wrapper">
				<div id="inner">
					<div id="order">
						<p>
							<a href=""
								class="index_t rel">全部</a>
							<a href=""
								class="index_t">推荐</a>
							<a href=""
								class="index_new">最新</a>
							<a href=""
								class="index_hot">热门</a>
						</p>
						<div style="float: right; padding: 8px 15px; color: #1d384c; font-size: 12px; -moz-border-radius: 3px; -webkit-border-radius: 3px; border-radius: 3px;">
<script type="text/javascript">
$(function(){
        $("#select2").hover(
        	function(){
	            $(".option").toggle();
	            $(this).addClass("hover1");
	            $(this).attr("style","background-image: url(images/menu-hover.png?t=20130805); background-repeat:no-repeat;background-position:right;");
        	},function(){
        		$(".option").hide();
        		$('#select2').removeClass("hover1");
        		$('#select2').attr("style","background-image: url(images/menu1.png?t=20130805); background-repeat:no-repeat;background-position:right;");
        	}
        );
        $(".option").hover(
        	function(){
                $(".option").toggle();
                $('#select2').addClass("hover1");
	            $('#select2').attr("style","background-image: url(images/menu-hover.png?t=20130805?t=20130805); background-repeat:no-repeat;background-position:right;");
        	},function(){
        		$(".option").hide();
        		$('#select2').removeClass("hover1");
        		$('#select2').attr("style","background-image: url(images/menu1.png?t=20130805); background-repeat:no-repeat;background-position:right;");
        	}
        );
        $(".option li").click(function(){
                $("#select2").text($(this).text());
                $(".option").hide();
               	$("#property").val($(this).attr("id"));
              	//alert($("#property").val());
               $("#form2").submit();    
        });
        $(".option li").hover(
        	function(){
                $(this).addClass("hover");
             },function(){
                $(this).removeClass("hover");
         	}
         );
         $("#select1").hover(
         	function(){
	            $(".option1").toggle();
	            $(this).addClass("hover1");
	            $(this).attr("style","background-image: url(images/menu-hover.png?t=20130805); background-repeat:no-repeat;background-position:right;");
        	},function(){
        		$(".option1").hide();
        		$('#select1').removeClass("hover1");
        		$('#select1').attr("style","background-image: url(images/menu1.png?t=20130805); background-repeat:no-repeat;background-position:right;");
        	}
        );
        $(".option1").hover(
        	function(){
                $(".option1").toggle();
                $('#select1').addClass("hover1");
	            $('#select1').attr("style","background-image: url(images/menu-hover.png?t=20130805); background-repeat:no-repeat;background-position:right;");
        	},function(){
        		$(".option1").hide();
        		$('#select1').removeClass("hover1");
        		$('#select1').attr("style","background-image: url(images/menu1.png?t=20130805); background-repeat:no-repeat;background-position:right;");
        	}
        );
        $(".option1 li").click(function(){
                $("#select1").text($(this).text());
                $(".option1").hide();
               $("#classification").val($(this).attr("id"));
                $("#form2").submit();
        });
        $(".option1 li").hover(
        	function(){
                $(this).addClass("hover");
            },function(){
                $(this).removeClass("hover");
         	}
         );
         		 });


</script>
<style>
* {
	margin: 0;
	padding: 0;
}

.hover1 {
	background-color: #AB1F04;
	color: #fff;
	-webkit-border-radius: 3px;
	border-radius: 3px;
	cursor: pointer;
	font-weight: 800;
}

ul,li {
	z-index: 9999;
	list-style: none;
}

#select2,#select1 {
	margin-left: 5px;
	margin-top: -8px;
	float: left;
	position: relative;
	width: 80px;
	height: 33px;
	line-height: 33px;
	padding-left: 23px;
	background-image: url(images/menu1.png?t=20130805);
	background-repeat: no-repeat;
	background-position: right;
}

#select3 {
	margin-left: 5px;
	margin-top: -8px;
	float: left;
	position: relative;
	width: 80px;
	height: 33px;
	line-height: 33px;
	padding-left: 23px;
	background-repeat: no-repeat;
	background-position: right;
}

.option {
	display: none;
	width: 97px;
	font-size: 12px;
	color: #1d384c;
	background: #fff;
	border: #0067b6 solid 3px;
	position: absolute;
	left: 744px;
	top: 29px;
}

.option li {
	background: #fff;
	color: #748089;;
	line-height: 33px;
	padding: 0 23px;
}

.option li.hover {
	background: #E9F7FF;
	color: #1D384C;
	cursor: pointer;
	font-weight: 800;
}

.option1 {
	display: none;
	width: 97px;
	font-size: 12px;
	color: #1d384c;
	background: #fff;
	border: #AB1F04 solid 3px;
	position: absolute;
	left: 852px;
	top: 29px;
}

.option1 li {
	color: #748089;
	line-height: 33px;
	padding: 0 23px;
}

.option1 li.hover {
	background: #f7dad2;
	color: #1D384C;
	cursor: pointer;
	font-weight: 800;
}
</style>
							<div
								style="background-image: url(images/menu1.png?t=20130805); background-repeat: no-repeat; background-position: right;"
								class="" id="select1">
								所有分类
							</div>
							<ul style="display: none;" class="option1">
								<li class="" id="fenleiall">
									男生所属
								</li>
								<li class="" id="fenlei1">
									女生所属
								</li>
							</ul>
						</div>
						<p></p>
					</div>
					<!--show:start //-->
					<div id="show" class="showlist">
						<div class="newcomment"></div>
						<ul>

							<li style="display: block;">
								<div class="showimg">
									<a href=""
										target="_blank"><img
											src="">
									</a>
									<div style="display: none;" class="showinfo">
										<p title="AI trick02-快速绘制放射状规律图案">
											AI trick02-快速绘制放射状规律图案
										</p>
										<span class="viewnum"><a
											href=""
											target="_blank">706</a> </span><span class="goodnum"><a
											href="http://www.iconfans.com/html.php?id=9950"
											target="_blank">7</a> </span>
									</div>
								</div>
								<span class="status-ico status-none"></span>
								<div class="showuser">
									<a class="" href=""
										target="_blank"><img
											src="">
									</a><a class="" href=""
										target="_blank">Gaoyoungor</a>
								</div>
							</li>
							<li style="display: block;">
								<div class="showimg">
									<a href=""
										target="_blank"><img
											src="">
									</a>
									<div style="display: none;" class="showinfo">
										<p title="">
											你应该了解“PHOTOSHOP CC”新特性
										</p>
										<span class="viewnum"><a
											href=""
											target="_blank">2681</a> </span><span class="goodnum"><a
											href=""
											target="_blank">10</a> </span>
									</div>
								</div>
								<span class="status-ico status-none"></span>
								<div class="showuser">
									<a class="" href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank"><img
											src="">
									</a><a class="" href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank">冷云</a>
								</div>
							</li>
							<li style="display: block;">
								<div class="showimg">
									<a href="http://www.iconfans.com/html.php?id=9900"
										target="_blank"><img
											src="">
									</a>
									<div class="showinfo">
										<p title="费茨法则在移动设计中的应用">
											费茨法则在移动设计中的应用
										</p>
										<span class="viewnum"><a
											href="http://www.iconfans.com/html.php?id=9900"
											target="_blank">3897</a> </span><span class="goodnum"><a
											href="http://www.iconfans.com/html.php?id=9900"
											target="_blank">63</a> </span>
									</div>
								</div>
								<span class="status-ico status-none"></span>
								<div class="showuser">
									<a href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank"><img
											src="">
									</a><a href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank">冷云</a>
								</div>
							</li>
							<li style="display: block;">
								<div class="showimg">
									<a href="http://www.iconfans.com/html.php?id=9890"
										target="_blank"><img
											src="">
									</a>
									<div style="display: none;" class="showinfo">
										<p title="UI-小教程1">
											UI-小教程1
										</p>
										<span class="viewnum"><a
											href="http://www.iconfans.com/html.php?id=9890"
											target="_blank">2322</a> </span><span class="goodnum"><a
											href="http://www.iconfans.com/html.php?id=9890"
											target="_blank">33</a> </span>
									</div>
								</div>
								<span class="status-ico status-none"></span>
								<div class="showuser">
									<a class="" href="http://www.iconfans.com/user.php?uid=85711"
										target="_blank"><img
											src="">
									</a><a class="" href="http://www.iconfans.com/user.php?uid=85711"
										target="_blank">designercafe</a>
								</div>
							</li>
							<li style="display: block;">
								<div class="showimg">
									<a href="http://www.iconfans.com/html.php?id=9785"
										target="_blank"><img
											src="">
									</a>
									<div class="showinfo">
										<p title="提高工作效率：给设计师的10条建议">
											提高工作效率：给设计师的10条建议
										</p>
										<span class="viewnum"><a
											href="http://www.iconfans.com/html.php?id=9785"
											target="_blank">3334</a> </span><span class="goodnum"><a
											href="http://www.iconfans.com/html.php?id=9785"
											target="_blank">26</a> </span>
									</div>
								</div>
								<span class="status-ico status-none"></span>
								<div class="showuser">
									<a href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank"><img
											src="">
									</a><a href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank">冷云</a>
								</div>
							</li>
							<li style="display: block;">
								<div class="showimg">
									<a href="http://www.iconfans.com/html.php?id=9684"
										target="_blank"><img
											src="">
									</a>
									<div style="display: none;" class="showinfo">
										<p title="Grids网格扩展 for Fireworks">
											Grids网格扩展 for Fireworks
										</p>
										<span class="viewnum"><a
											href="http://www.iconfans.com/html.php?id=9684"
											target="_blank">6023</a> </span><span class="goodnum"><a
											href="http://www.iconfans.com/html.php?id=9684"
											target="_blank">11</a> </span>
									</div>
								</div>
								<span class="status-ico status-acc"></span>
								<div class="showuser">
									<a class="" href="http://www.iconfans.com/user.php?uid=2041"
										target="_blank"><img
											src="">
									</a><a class="" href="http://www.iconfans.com/user.php?uid=2041"
										target="_blank">WaveF</a>
								</div>
							</li>
							<li style="display: block;">
								<div class="showimg">
									<a href="http://www.iconfans.com/html.php?id=9672"
										target="_blank"><img
										src=""/>
									</a>
									<div style="display: none;" class="showinfo">
										<p title="浅谈扁平化设计—— keep it simple">
											浅谈扁平化设计—— keep it simple
										</p>
										<span class="viewnum"><a
											href="http://www.iconfans.com/html.php?id=9672"
											target="_blank">11754</a> </span><span class="goodnum"><a
											href="http://www.iconfans.com/html.php?id=9672"
											target="_blank">124</a> </span>
									</div>
								</div>
								<span class="status-ico status-none"></span>
								<div class="showuser">
									<a class="" href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank"><img
										src=""/>
									</a><a class="" href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank">冷云</a>
								</div>
							</li>
							<li style="display: block;">
								<div class="showimg">
									<a href="http://www.iconfans.com/html.php?id=9620"
										target="_blank"><img
										src=""/>
									</a>
									<div class="showinfo">
										<p title="10分钟搞定一个质感日历图标">
											10分钟搞定一个质感日历图标
										</p>
										<span class="viewnum"><a
											href="http://www.iconfans.com/html.php?id=9620"
											target="_blank">9829</a> </span><span class="goodnum"><a
											href="http://www.iconfans.com/html.php?id=9620"
											target="_blank">61</a> </span>
									</div>
								</div>
								<span class="status-ico status-none"></span>
								<div class="showuser">
									<a href="http://www.iconfans.com/user.php?uid=86548"
										target="_blank"><img
										src=""/>
									</a><a href="http://www.iconfans.com/user.php?uid=86548"
										target="_blank">十分钟设计</a>
								</div>
							</li>
							<li style="display: block;">
								<div class="showimg">
									<a href="http://www.iconfans.com/html.php?id=9599"
										target="_blank"><img
										src=""/>
									</a>
									<div class="showinfo">
										<p title="色彩浅析">
											色彩浅析
										</p>
										<span class="viewnum"><a
											href="http://www.iconfans.com/html.php?id=9599"
											target="_blank">8289</a> </span><span class="goodnum"><a
											href="http://www.iconfans.com/html.php?id=9599"
											target="_blank">122</a> </span>
									</div>
								</div>
								<span class="status-ico status-none"></span>
								<div class="showuser">
									<a href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank"><img src=""/>
									</a><a href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank">冷云</a>
								</div>
							</li>
							<li style="display: block;">
								<div class="showimg">
									<a href="http://www.iconfans.com/html.php?id=9438"
										target="_blank"><img src=""/>
									</a>
									<div class="showinfo">
										<p title="45个设计师需要熟记的ps快捷键">
											45个设计师需要熟记的ps快捷键
										</p>
										<span class="viewnum"><a
											href="http://www.iconfans.com/html.php?id=9438"
											target="_blank">10603</a> </span><span class="goodnum"><a
											href="http://www.iconfans.com/html.php?id=9438"
											target="_blank">233</a> </span>
									</div>
								</div>
								<span class="status-ico status-none"></span>
								<div class="showuser">
									<a href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank"><img src=""/>
									</a><a href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank">冷云</a>
								</div>
							</li>
							<li style="display: block;">
								<div class="showimg">
									<a href="http://www.iconfans.com/html.php?id=9361"
										target="_blank"><img src=""/>
									</a>
									<div class="showinfo">
										<p title="学点新技能！玩转响应式图标设计">
											学点新技能！玩转响应式图标设计
										</p>
										<span class="viewnum"><a
											href="http://www.iconfans.com/html.php?id=9361"
											target="_blank">12427</a> </span><span class="goodnum"><a
											href="http://www.iconfans.com/html.php?id=9361"
											target="_blank">141</a> </span>
									</div>
								</div>
								<span class="status-ico status-none"></span>
								<div class="showuser">
									<a href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank"><img
											src="">
									</a><a href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank">冷云</a>
								</div>
							</li>
							<li style="display: block;">
								<div class="showimg">
									<a href="http://www.iconfans.com/html.php?id=9205"
										target="_blank"><img
											src="">
									</a>
									<div class="showinfo">
										<p title="PS新手教程：轻松掌握四种扁平化设计风格">
											PS新手教程：轻松掌握四种扁平化设计风格
										</p>
										<span class="viewnum"><a
											href="http://www.iconfans.com/html.php?id=9205"
											target="_blank">5123</a> </span><span class="goodnum"><a
											href="http://www.iconfans.com/html.php?id=9205"
											target="_blank">88</a> </span>
									</div>
								</div>
								<span class="status-ico status-none"></span>
								<div class="showuser">
									<a href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank"><img
											src="">
									</a><a href="http://www.iconfans.com/user.php?uid=29291"
										target="_blank">冷云</a>
								</div>
							</li>
							
						</ul>
						<div class="loadMoreComment">
							<a href="javascript:loadComment()">加载更多</a>
						</div>
					</div>
					<!--show:end //-->
					<!--links:start //-->
					<div id="links">
					</div>
					<!--links:end //-->
				</div>
			</div>
  </body>
</html>
