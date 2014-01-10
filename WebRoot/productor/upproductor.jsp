<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
	<head>
		<base href="<%=basePath%>">

		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta property="wb:webmaster" content="69e23ac12c635da9">
		<!--sinaweibo //-->
		<title>对角巷【学生二手交易平台】用户物品上传</title>
		<meta name="Keywords" content="对角巷">
		<meta name="Description" content="对角巷">
		<link rel="stylesheet" href="css/styles.css">
		<link rel="stylesheet" href="js/calendae/kalendae.css" type="text/css" charset="utf-8">
		<script src="js/calendae/kalendae.standalone.js" type="text/javascript" charset="utf-8"></script>
		<script>
	var _selectwidth = 280, _sedwidth = 265;
</script>
		<script src="js/jquery-1.js" type="text/javascript"></script>
		<script src="js/jquery.uploadify.min.js" type="text/javascript"></script>
		<script src="js/test_kevin.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/test_ajax.js" type="text/javascript" charset="utf-8"></script>
		<link rel="stylesheet" href="css/ifnewlogin.css">
		<link rel="stylesheet" href="css/top.css">

		<script src="js/form_check.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">
		var token="<%=session.getAttribute("sessionId")%>";
			var duijiaoxiang="<%=session.getAttribute("userId")%>";
			//alert("token:"+token);
			$(document).ready(function(){
			$("#uploadify").uploadify({
				'formData':{'duijiao':'<%=session.getAttribute("userId")%>'},
				'debug':false,
				'swf' : 'productor/uploadify.swf',//指定flash动画
				'uploader' : 'upproductor.action',//处理文件上传的action
				'cancelImage':"images/uploadify-cancel.png",
				'queueID' : 'process',
				'width' :170,//flash宽 由于设置的背景图片的宽是60 高是22 所以这里和下面设置60 22
				'height' :50,//flash高
				'transparent': true,
				'fileTypeExts' : '*.jpg;*.gif;*.bmp;*.png',//允许文件上传类型,和fileDesc一起使用.
				'fileDes' : '*.jpg;*.gif;*.bmp;*.png',
				'progressData ':'speed',//在文件上传时以速度显示进度条
				'auto' : true,//自动上传
				'multi' : true,//允许多文件选择上传
				'buttonText':'',
				'hidebutton':true,
				'fileObjName':'uploadify',//指定struts2中action file的字段名，没有这个就会显示空指针
				'onSelect' : function(file){
				$('.' + file.id).html(parseInt(file.index)+1);
				},
				'onSelectError' : function() {
				alert(file.name + '文件返回错误，没有添加到上传队列中.');
				},
				'onUploadError' : function(file, errorCode, errorMsg, errorString) {
					alert(file.name + ' 上传失败。服务器或网络异常请稍后再试' + errorMsg);
				},
				'onUploadSuccess' : function(file,data,swfuploadifyQueue){//文件上传成功后
					//$('#info').text($('#info').text() + '<img src="'+response+'">\r');//在页面上显示文件相对路径
					$("#uploadbox").removeClass('upload-tip');
					$('#upload-btn-tip').val('继续上传图片');
					//$('#upload-more-info').show();
					$('#upform').show();
					var uploadnum = $("#queue li").size();
					var fn = file.name;
					if (fn.length > 25) {
						fn = fn.substr(0,25) + '...';
					}
					$('#queue').append('<li class="id'+(parseInt(file.index)+1)+'"><a class="thumb-upload"><img src="'+data+'" /><span rel="'+(parseInt(file.index)+1)+'" class="delme">删除</span><span rel="'+(parseInt(file.index)+1)+'" class="addimginfo">添加注释</span></a><div class="addimginfodiv"><div class="addimginfotitle"><span class="left">添加图片的注释说明</span><span class="right">关闭</span></div><textarea></textarea><div class="addimginfocol"><a class="addimginfook" rel="'+(parseInt(file.index)+1)+'">确定</a><a class="addimginfono">取消</a></div></div><p><i>'+(parseInt(file.index)+1)+'</i>'+fn+'</p><input type="hidden" class="picurl" name="pic'+(parseInt(file.index)+1)+'" value="'+data+'" /><input type="hidden" class="pictext" name="pictext'+(parseInt(file.index)+1)+'" value="" /></li>');
					var fkimg = $('#queue li img:first').attr('src');
					$('.thumb img').attr('src',fkimg);
					$('.thumb img').addClass('loadok');
					var imgWidth,imgHeight;
					$(".loadok").one("load",function(){
						imgWidth = 210;
						imgHeight = 180;
						//imgWidth = $(this).width;
						//imgHeight = $(this).height;
						$('.thumb img').attr('width',imgWidth);
						$('.thumb img').attr('height',imgHeight);
						$(".thumb img").VMiddleImg({"width":210,"height":180});
					});
				$(".delme").click(function(){
					var _rel=$(this).attr("rel");
					$(".id"+_rel+"").remove();
					var fkimg = $('#queue li img:first').attr('src');
					$('.thumb img').attr('src',fkimg);
					$('.thumb img').removeAttr('width');
					$('.thumb img').removeAttr('height');
					$('.thumb img').removeAttr('style');
					var imgWidth,imgHeight;
					$(".loadok").load(function(){
						imgWidth = 210;
						imgHeight = 180;
						//imgWidth = $(this).width;
						//imgHeight = $(this).height;
						$('.thumb img').attr('width',imgWidth);
						$('.thumb img').attr('height',imgHeight);
						$(".thumb img").VMiddleImg({"width":210,"height":180});
					});
					$.each($('#queue li'), function(index, event) {
						$(this).find('i').html(parseInt(index, 10)+1);
						var namenum = parseInt(index, 10)+1;
						$(this).find('.picurl').attr('name','pic'+namenum);
						$(this).find('.pictext').attr('name','pictext'+namenum);
					});
				});
				}
			});
		});
		</script>
	</head>

	<body style="width: 100%; height: 100%">
		<jsp:include page="../log_reg.jsp" flush="true"></jsp:include>
		<form enctype="multipart/form-data" action="upload.action" method="post">
		<div id="con">
			<jsp:include page="../head.jsp" flush="true"></jsp:include>
			<div id="wrapper" class="clearfix">
				<div id="inner">
					<div class="upcon">
						
							<div class="upside">
								<div class="thumb">
									<img src="">
								</div>
								<div class="showuser up1">
									<div class="left">
										<a href="/user.php?uid=83882">
											<img src="http://www.iconfans.org/uc_server/avatar.php?uid=83882&size=small">
										</a>
										<a>Roach</a>
									</div>
									<div class="right">
										<a>编辑封面</a>
										<div id="topic" class="uploadify" style="height: 30px; width: 60px;">
										</div>
										<input class="topic" type="hidden" name="top_pic" value="">
										<div id="loadtopic" style=""></div>
									</div>
								</div>
									<div class="upsideinfo">
										<b>温馨提示：</b>
										<br>
										<p>
											1、请尽量上传清晰的物品图片，并尽量上传物品多角度视图，这样小伙伴们才可以看清你的物品。
											<br>
											<br>
											2、请在物品描述时给物品分好类，便于小伙伴搜多到你的物品。
										</p>
									</div>
								</div>
							<div class="upcontent">
								<div id="uploadbox" class="upload-tip">
									<ul id="queue" class="ui-sortable"></ul>
								</div>
								<div id="upcol">
									<div class="left">
										<input type="hidden" value="" name="check"/>
										<input id="upload-btn-tip" class="upimg" type="button" value="上传物品图片"/>
										<input type="file" id="uploadify" name="uploadify"/>
									</div>
									<div class="right">
										<ul id="process"></ul>
									</div>
								</div>
							</div>
					</div>
				</div>
			</div>
			<div id="upform" style="display:none;">
				<div id="wrapper">
					<div id="inner">
						<div class="left upinto">
							<p>
								<span class="left">类型:</span>
								<span class="left upintocol">
									<select id="select" style="display:none;" name="big_class">
										<option value="0">请选择物品大类</option>
										<option value="1">图书数码</option>
										<option value="2">鞋帽服饰</option>
										<option value="3">生活杂物</option>
									</select>
									<b>●</b>
									<select id="selecta" style="display:none;" name="small_class">
										<option value="0">请选择小类</option>
										<option value="1">图书</option>
										<option value="2">数码</option>
										<option value="3">电脑外设</option>
										<option value="4">虚拟道具</option>
										<option value="5">鞋子</option>
										<option value="6">衣服</option>
										<option value="7">交通道具</option>
										<option value="8">体育用品</option>
										<option value="9">门票影票</option>
										<option value="10">其他</option>
									</select>
									<b>●</b>
								</span>
								<span class="left upintodesc">选择类别能让其他小伙伴跟快的找到你的物品。</span>
							</p>
							<p>
								<span class="left">名称：</span>
								<span class="left upintocol">
								<input class="uptext" type="text" placeholder="请填写物品名称,必填(40个字以内)" name="name">
								<b>●</b>
								</span>
							</p>
							<p>
								<span class="left">标签：</span>
								<span class="left upintocol">
								<input class="uptext" type="text" placeholder="请填写物品标签,用逗号分隔,必填" name="tag">
								<b>●</b>
								</span>
								<span class="left upintodesc">
								热门标签：
								<a>九成新</a>
								<a>电子产品</a>
								<a>生活娱乐</a>
								</span>
							</p>
							<p>
								<span class="left">买入：</span>
								<span class="left upintocol">
								<input type="text" class="auto-kal uptext" placeholder="填写物品购买日期" name="buy_date" >
								<b>●</b>
								</span>
							</p>
						</div>
						<div id="upload-more-info" class="right upaddinfo">
							<p>
								<span class="left">原价：</span>
								<span class="left upintocol">
								<input class="uptext" type="text" placeholder="填写物品买入时的价格" name="buy_price" onkeypress="return IsNum(event)">
								</span>
							</p>
							<p>
								<span class="left">出价：</span>
								<span class="left upintocol">
								<input class="uptext" type="text" placeholder="填写你对物品出价" name="present_price" onkeypress="return IsNum(event)">
								</span>
								<b>●</b>
							</p>
							<script language="javascript" type="text/javascript">
						        function IsNum(e) {
						            var k = window.event ? e.keyCode : e.which;
						            if (((k >= 48) && (k <= 57)) || k == 8 || k == 0) {
						            } else {
						                if (window.event) {
						                    window.event.returnValue = false;
						                }
						                else {
						                    e.preventDefault(); //for firefox 
						                }
						            }
						        } 
						    </script>
							<p>
								<span class="left">介绍：</span>
								<span class="left upintocol">
								<textarea class="uptext uptextarea" placeholder="填写物品介绍" name="detail"></textarea>
								</span>
							</p>
							<p>
								<span class="left upintodesc">
								<input id="submit-goods" class="upimg checkimgsize" type="submit" value="提交物品">
								</span>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		</form>
		<jsp:include page="../foot.jsp" flush="true"></jsp:include>
	</body>
</html>