
$(document).click(function(){ 
	$(".logina").removeClass("loginshow");
	$(".logina").find(".loginbox").hide();
	$(".reg").removeClass("regon");
	$(".reg").find(".regbox").hide();
});
$(document).ready(function(){ 
	checkConfirm();
		$(".typepwd, .typeconfirmpwd").keydown(function(){ 
		if(this.value.length<6){
		$(this).removeClass("checkok");
		$(this).addClass("checkerror")
		}
		else
		{
		$(this).removeClass("checkerror");
		$(this).addClass("checkok")
			}
		});
	$('body').on('click','[data-cmd]', function(e){
		var cmd = $(this).data('cmd');

		if(cmd == 'confirmDelete') {
			if(confirm('您确定要删除的作品？删除后将无法恢复！')){
				return true;
			}
		}
		e.preventDefault();
	})
}); 


function checkConfirm(){ 
	$("#uername").keydown(function(){ 
	var gradename = $(this).val(); 
	var changeUrl = "http://www.iconfans.com/check.php?do=check_name&user_name="+gradename; 
	$.get(changeUrl,function(str){ 
	if(str == '1'){ 
	$("#uername").removeClass("checkok");
	$("#uername").addClass("checkerror");
	}else{ 
	$("#uername").removeClass("checkerror");
	$("#uername").addClass("checkok");
	} 
	}) 
	});
	

	
	$("#email").keydown(function(){ 
	var gradename = $(this).val(); 
	var changeUrl = "http://www.iconfans.com/check.php?do=check_email&user_email="+gradename; 
	$.get(changeUrl,function(str){ 
	if(str == '1'){ 
	$("#email").removeClass("checkok");
	$("#email").addClass("checkerror");
	}else{ 
	$("#email").removeClass("checkerror");
	$("#email").addClass("checkok");
	} 
	}) 
	});
}


$(function(){
		$('.commentarea').live("focus",function(){
		if($(this).val() == "说说你的看法..."){
			$(this).val('')	
		}else{
			
			}
		})
		
		$("#con").find("#wrapper").addClass("clearfix");
		
		$('.commentarea').live("blur",function(){
		if($(this).val() == ""){
				$(this).val('说说你的看法...')
		}else{
			
			}
		
		})

		$('.commentarea_re').live("focus",function(){
		if($(this).val() == "说说你的看法..."){
			$(this).val('')	
		}else{
			
			}
		})
		$('.commentarea_re').live("blur",function(){
		if($(this).val() == ""){
				$(this).val('说说你的看法...')
		}else{
			
			}
		
		})
		$('#search_text').live("focus",function(){
		if($(this).val() == "搜索"){
			$(this).val('')	
		}else{
			
			}
		})
		$('#search_text').live("blur",function(){
		if($(this).val() == ""){
				$(this).val('搜索')
		}else{
			
			}
		
		})
			
			$(".userinfotop").hover(function(){
				var userwidth = parseInt($(".userinfotop").width())-6;
				$(this).addClass("on");
				$(this).find("#vv").attr("id","vvb")
				$(this).children("p").show();
				$(this).children("p").css("width",userwidth)
				$(this).find("a.userinfoli").css("width",userwidth)
				},function(){
				$(this).removeClass("on");
				$(this).find("#vvb").attr("id","vv")
				$(this).find("p").hide();
			});
			
			$(".userlgload").focus(function(){
				$(this).hide();
				$(".lguname").show();
				$(".lguname").select();
			});
			
			$(".lguname").blur(function(){
				var t = $(".lguname");
				if(t.val() == ""){
				$(this).hide();
				$(".userlgload").show();
				}
			});
			
			$(".pwdlgload").focus(function(){
				$(this).hide();
				$(".lgpwd").show();
				$(".lgpwd").select();
			});
			
			$(".lgpwd").blur(function(){
				var t = $(".lgpwd");
				if(t.val() == ""){
				$(this).hide();
				$(".pwdlgload").show();
				}
			});
			
			$(".userload").focus(function(){
				$(this).hide();
				$(".userval").show();
				$(".userval").select();
			});
			
			$(".userval").blur(function(){
				var t = $(".userval");
				if(t.val() == ""){
				$(this).hide();
				$(".userload").show();
				}
			});
			
			$(".pwdload").focus(function(){
				$(this).hide();
				$(".typepwd").show();
				$(".typepwd").select();
			});
			
			$(".typepwd").blur(function(){
				var t = $(".typepwd");
				if(t.val() == ""){
				$(this).hide();
				$(".pwdload").show();
				}
			});

			$(".pwdconfirmload").focus(function(){
				$(this).hide();
				$(".typeconfirmpwd").show();
				$(".typeconfirmpwd").select();
			});
			
			$(".typeconfirmpwd").blur(function(){
				var t = $(".typeconfirmpwd");
				if(t.val() == ""){
				$(this).hide();
				$(".pwdconfirmload").show();
				}
			});
			
			$(".emailload").focus(function(){
				$(this).hide();
				$(".emailval").show();
				$(".emailval").select();
			});
			
			$(".emailval").blur(function(){
				var t = $(".emailval");
				if(t.val() == ""){
				$(this).hide();
				$(".emailload").show();
				}
			});
			
			$("#uploadbox ul li").live("mouseenter",function(){
				$(this).find(".addimginfo").slideDown();
			});
			
			$("#uploadbox ul li").live("mouseleave",function(){
				$(this).find(".addimginfo").slideUp();
			});
			
			$(".addimginfo").live("click",function(){
				var _rel=$(this).attr("rel");
				$(".addimginfodiv").hide();
				$(".id"+_rel+"").find(".addimginfodiv").show()
			});
			
			$(".addimginfotitle .right").live("click",function(){
				$(".addimginfodiv").hide();	
			})
			
			$(".addimginfono").live("click",function(){
				$(".addimginfodiv").hide();	
			})
			
			$(".addimginfook").live("click",function(){
				var _rel=$(this).attr("rel");
				var addinfotext = $(".id"+_rel+"").find("textarea").val();
				$(".id"+_rel+"").find(".pictext").val(addinfotext);
				$(".addimginfodiv").hide();
			})
			
			$(".checkimgsize").live("click",function(){
				var imgsize = $("#queue li").size();
				$(".endnumber").val(imgsize)
			})
						
			$("#menu ul li").hover(function(){
				var i=$(this).index();
				$("#menu ul li").removeClass("hover").eq(i).addClass("hover").siblings();
			},function(){
				var i=$(this).index();
				$("#menu ul li").removeClass("hover");
			});

			$(".showuser").hover(function(){
				$(this).find("#v").show();
			},function(){
				$(this).find("#v").hide();
			});
			
			$(".gotoplogin").live("click",function(event){
				$('html,body').animate({scrollTop:$('body').offset().top},500);
//				$(".loginbox").show();
//				$(".logina").addClass("loginshow");
//				$(".reg").removeClass("regon");
//				$(".reg").find(".regbox").hide();
				
				setTimeout(function(){
					$('.logina').trigger('click');
				},800);
				event.stopPropagation();
						
			})
			$(".gotopreg").live("click",function(event){
				$('html,body').animate({scrollTop:$('body').offset().top},500);
//				$(".regbox").show();
//				$(".reg").addClass("regon");
//				$(".logina").removeClass("loginshow");
//				$(".logina").find(".loginbox").hide();
				setTimeout(function(){
					$('.reg').trigger('click');
				},800);
				
				event.stopPropagation();
			})
			
			$(".logina").click(function(event){
				$(".overlay").show();
				$(".ifnewregbox").hide();
				$(".ifnewloginbox").show();
				
			});
			
			$(".reg").click(function(event){
				$(".overlay").show();
				$(".ifnewloginbox").hide();
				$(".ifnewregbox").show();
			});
			
			$(".overlay").click(function(event){
				$(this).hide();
				$(".ifnewregbox").hide();
				$(".ifnewloginbox").hide();
			});
			
			$(".ifnewlogin-closer").click(function(event){
				$(".overlay").hide();
				$(".ifnewregbox").hide();
				$(".ifnewloginbox").hide();
			});
			
			$(".regbarbt").click(function(event){
				$(".regbox").show();
				$(".reg").addClass("regon");
				$(".logina").removeClass("loginshow");
				$(".logina").find(".loginbox").hide();
				 event.stopPropagation();
			});
			
			
			$(".noactive").hover(function(){
				$(".activebox").show();
				$(this).addClass("on");
			},function(){
				$(this).removeClass("on");
				$(this).find(".activebox").hide();
			});
			
			$(".commentul ul li").hover(function(){
				$(this).find(".commentcol").show();
				$(this).find(".goodnum").hide();
			},function(){
				$(this).find(".commentcol").hide();
				$(this).find(".goodnum").show();
			});

			$("a.hideadd").click(function(){
				$(this).hide();
			});
			$(".design").hover(function(){
				$(this).find(".menubox").show();
			},function(){
				$(this).find(".menubox").hide();
			});
			$(".hd").hover(function(){
				$(this).find(".menubox").show();
			},function(){
				$(this).find(".menubox").hide();
			});
			$("#property").hover(function(){
				$(this).find(".menubox").show();
			},function(){
				$(this).find(".menubox").hide();
			});
			$(".likeimg p").hover(function(){
				$(this).find("a.likeimgshow").animate({opacity:"0.8"}, 300);
				},function(){
				$(this).find("a.likeimgshow").animate({opacity:"0"}, 300);
			});

			$(".showlist ul li").live("mouseenter",function(){
				//$(this).find(".showinfo").animate({top: "-60",opacity:"0.85",left:"0"}, 300);
				$(this).find(".showinfo").fadeIn(300);
				$(this).children(".showuser").children("#v").show();
				$(this).find(".showuser > a").addClass("on");
				
			});
			$(".showlist ul li").live("mouseleave",function(){
				//$(this).find(".showinfo").animate({top: "0",opacity:"0",left:"0"}, 300);
				$(this).find(".showinfo").fadeOut(300);
				$(this).children(".showuser").children("#v").hide();
				$(this).find(".showuser a").removeClass("on");
			});
			});

			
			
$(function(){
    var $div_lia = $(".shownum b");
    $div_lia.mousemove(function(){
        $(this).addClass("on").siblings().removeClass("on");
        var index =  $div_lia.index(this);  
        $("#ifshow > p > a").eq(index).fadeIn(200).siblings().fadeOut(0);

		$('#ifshow .slide-title').html($("#ifshow > p > a").eq(index).data('title'));
		$('#ifshow .slide-title').attr('href', $("#ifshow > p > a").eq(index).attr('href'));
    });
	$("#ifshow > p > a").mousemove(function(){
		$(this).addClass("tabin").siblings().removeClass("tabin");
	});
});



$(function(){
    var $div_lib = $(".upimgaddinfo a");
    $div_lib.click(function(){
        $(this).addClass("tabin").siblings().removeClass("tabin");
        var index =  $div_lib.index(this);  
        $(".upimgaddtext textarea").eq(index).fadeIn(0).siblings().fadeOut(0);
    });
	$(".upimgaddtext textarea").mousemove(function(){
		$(this).addClass("tabin").siblings().removeClass("tabin");
	});
});


//ie6 maxwidth hack 
function resizeImage(img,width){
var image=new Image();
image.src=img.src;
var temp = image.width;
//var rate = image.width/image.height;
img.width = temp = (temp>width)?width:temp;
//img.height = Math.round(temp/rate);
img.style.display = "inline";
}

function doResize(){
if($.browser.version==6&&$.browser.msie) $("#content img").each(function(){resizeImage(this,720)});
}
window.onload = doResize;

//jq for select by kevin.
jQuery.fn.extend({
    selectbox: function(options) {
        return this.each(function() {
            new jQuery.SelectBox(this, options);
        });
    }
});

var _SelectBoxRunTimes = 0;



jQuery.SelectBox = function(selectobj, options) {
	
	options = options || {};

    var opt = options;
    
    opt.width = opt.width;
	opt.boxClass = opt.boxClass;
	opt.inputClass = opt.inputClass;
	opt.arrowClass = opt.arrowClass;
    opt.containerClass = opt.containerClass;
    opt.hoverClass = opt.hoverClass || "current";
    opt.currentClass = opt.currentClass || "selected";
	opt.defaultClass = opt.defaultClass || true;

    var elm_id = selectobj.id;
    var active = 0;
    var inFocus = false;
    var hasfocus = 0;	

    var $select = $(selectobj);
	
	if(_SelectBoxRunTimes == 0){
//		$select.before('<style type="text/css">.gg_selectBox{ margin-right:0px; color:#576f81;}.gg_selectBoxHover{}.gg_selectTable{}.gg_selectInput{font-size:16px;color:#7f7f7f; font-weight:normal; padding-left:15px;}.gg_selectArrow{width:10px;font-size:6px;color:#7f7f7f;}.gg_selectInputHover, .gg_selectArrowHover{color:#608AA4;}.gg_selectBox_wrapper{background-color:#fff;border:#dedede solid 1px;text-align:left; width:200px;}.gg_selectBox_wrapper ul{margin:0;padding:0;list-style:none;}.gg_selectBox_wrapper ul li{background-color:#fff;color:#7f7f7f;font-size:12px;padding-left:15px; font-weight:normal;cursor:pointer; color:#576f81;width:'+_sedwidth+'px;font-size: 14px;font-weight: normal;}.gg_selectBox_wrapper ul li.current{background-color:#eae9e9;color:#7f7f7f;} .gg_selectBox_wrapper ul li.selected{background-color:#0068b7;color:#fff;}</style>');
		$select.before('<style type="text/css">.gg_selectBox{ margin-right:0px; color:#576f81;}.gg_selectBoxHover{}.gg_selectTable{}.gg_selectInput{font-size:16px;color:#7f7f7f; font-weight:normal; padding-left:15px;}.gg_selectArrow{width:10px;font-size:6px;color:#7f7f7f;}.gg_selectInputHover, .gg_selectArrowHover{color:#608AA4;}.gg_selectBox_wrapper{background-color:#fff;border:#dedede solid 1px;text-align:left; width:200px;}.gg_selectBox_wrapper ul{margin:0;padding:0;list-style:none;}.gg_selectBox_wrapper ul li{background-color:#fff;color:#7f7f7f;font-size:12px;padding-left:15px; font-weight:normal;cursor:pointer; color:#576f81;width:166px;font-size: 14px;font-weight: normal;}.gg_selectBox_wrapper ul li.current{background-color:#eae9e9;color:#7f7f7f;} .gg_selectBox_wrapper ul li.selected{background-color:#0068b7;color:#fff;}</style>');
	}
	
	_SelectBoxRunTimes++;
    
    //获取select控件的class
    var selectClass = $select.attr("class"); 

	var $selectBox = setupSelectBox(opt); 

	$select.hide().before($selectBox);

	var _selectBoxWidth = $selectBox.width();
	var _selectBoxHeight = $selectBox.height();	

    var $container = setupContainer(opt);
	
   	$selectBox.append($container);

	var InputId = $selectBox.find("td[abbr='gg_selectInput']").attr("id");
	var selectOptions = getSelectOptions(InputId);
	$container.append(selectOptions).hide();
	
	//alert($container.html());

	$selectBox.hover(
	  	function () {
			$(this).addClass("gg_selectBoxHover");
			$(this).find("td[abbr='gg_selectInput']").addClass("gg_selectInputHover");
			$(this).find("td[abbr='gg_selectArrow']").addClass("gg_selectArrowHover");
	  	},function () {
			$(this).removeClass("gg_selectBoxHover");
			$(this).find("td[abbr='gg_selectInput']").removeClass("gg_selectInputHover");
			$(this).find("td[abbr='gg_selectArrow']").removeClass("gg_selectArrowHover");	
			if($container.is(':visible')){
				if(!options.arrowClass){
					$selectBox.find("td[abbr='gg_selectArrow']").html("&gt;");
				}		
				$container.hide();
			}
	  	}
	);
	
	$selectBox.find("table").click(function(){
		if($container.is(':visible')){
			if(!options.arrowClass){
				$selectBox.find("td[abbr='gg_selectArrow']").html("&gt;");
			}
			$container.hide();
		}else{
			if(!options.arrowClass){
				$selectBox.find("td[abbr='gg_selectArrow']").html("&gt;");
			}
			$container.show();	
		}
		
    });

	$selectBox.find("li").hover(
		function(){
			$(this).addClass(opt.hoverClass);
		},function(){
			$(this).removeClass(opt.hoverClass);
	}).click(function(){
			$selectBox.find("li").removeClass(opt.currentClass);
			$(this).addClass(opt.currentClass);
			$selectBox.find("td[abbr='gg_selectInput']").html($(this).html());
			if(!options.arrowClass){
				$selectBox.find("td[abbr='gg_selectArrow']").html("&gt;");
			}
			$select.val($(this).attr("value"));
			$container.hide();
	});

	//生成div和input
    function setupSelectBox(options) {
	
		if(!options.arrowClass){
			var $_div = $('<div><table cellSpacing="0" border="0"><tr><td abbr="gg_selectInput">test</td><td abbr="gg_selectArrow">&gt;</td></tr></table></div>');
		}else{
			var $_div = $('<div><table cellSpacing="0" border="0"><tr><td abbr="gg_selectInput">test</td><td abbr="gg_selectArrow">&nbsp;</td></tr></table></div>');
		}
		

        $_div.find("td[abbr='gg_selectInput']").attr("id", elm_id + "_input");

        //div添加css
		$_div.css({padding:0});

		if(options.defaultClass){
			$_div.addClass("gg_selectBox");
		}
		
		if(selectClass){
			$_div.addClass(selectClass);
		}
		
		if(options.boxClass){
			 $_div.addClass(options.boxClass);
		}

		//table添加css
		$_div.find("table").css({"padding":"0", cursor:"pointer"});

		//input添加css
		$_div.find("td[abbr='gg_selectInput']").css({"text-align":"left"});
		
		if(options.defaultClass){
			$_div.find("td[abbr='gg_selectInput']").addClass("gg_selectInput");
		}
		
		if(options.inputClass){
			$_div.find("td[abbr='gg_selectInput']").addClass(options.inputClass);
		}

		//arrow添加css
		$_div.find("td[abbr='gg_selectArrow']").css({"float":"left"});
		
		if(options.defaultClass){
			$_div.find("td[abbr='gg_selectArrow']").addClass("gg_selectArrow");
		}
		
		if(options.arrowClass){
			$_div.find("td[abbr='gg_selectArrow']").addClass(options.arrowClass);
		}
		
		return $_div;        
    }

    function setupContainer(options){
		
        var $_container = $("<div></div>");
		
        $_container.attr('id', elm_id + '_container');
        
        $_container.css({width:_selectBoxWidth,position:"absolute",margin:"0 0 0 -1px"});
		
//		$_container.css({width:_selectBoxWidth,position:"absolute",margin:"0 0 0 -1px"});
		
		if(options.defaultClass){
			$_container.addClass("gg_selectBox_wrapper");
		}
		
//		$_container.css("width",_selectwidth);
		$_container.css("z-index","9999");
		
		if(options.containerClass){
			$_container.addClass(options.containerClass);
		}
		
        return $_container;
    }	
	
	function getSelectOptions(parentid) {
		var $_ul = $("<ul></ul>");
		$select.children('option').each(function(){
			var $_li = $("<li></li>");
			$_li.html($(this).html());
			$_li.attr("value",$(this).val())
            if ($(this).is(':selected')){
                $selectBox.find("td[abbr='gg_selectInput']").html($(this).html());
                $_li.addClass(opt.currentClass);
            }			
			$_ul.append($_li);		
		});

		return $_ul;
    } 

};

$(function(){
	$("#select").selectbox({width:80});
	$("#selecta").selectbox({width:80});
	$("#ifnewques").selectbox({width:80});
});


$(function(){
	$("body").on('click','.gg_selectBox li', function(e){
		var category = $("#selecta").val();
		if(category == 2) {
			$("#share-good").show();
		} else {
			$("#share-good").hide();
		}
	});

	$("body").on('click','.upintodesc a', function(e){
		e.preventDefault();
		var tag = $(this).text();
		var tags = $('input[name=tag]').val();
		$('input[name=tag]').val(tags + tag + ",");
	});


	$("body").on('click','.user-bio-editable', function(e){
		e.preventDefault();
		$(this).hide();
		$('#user-bio-edit').show();
		if($(this).text() === '点击这里编辑您的个人简介.') {
			$('#user-bio-edit').val('');
		}
		setTimeout(function(){
			$('#user-bio-edit').focus();
		},100);
		
	});

	$("#user-bio-edit").on('blur',function(e){
		e.preventDefault();
		var bio = $(this).val();
		if(bio !== $('.user-bio-editable').text()){
			$.ajax({
				type: "post",
				url :"profile_do.php",
				dataType: "json",
				data :{
					json:1,
					bio: bio
				},
				success: function(res){
					if(res.status === 0) {
						$('.user-bio').text(bio).show();
						$('#user-bio-edit').hide();
						$("#bio_text").text(bio).show();
						alert('修改成功！');
					}
				}
			});
		}
	});
	
	//提交物品
	$("#submit-goods").on('click', function(e){
		var flag = false;

		if(
			$('.picurl').length === 0
		) {
			flag = true;
			alert("您必须上传物品的图片,无图无真相哦！");
			return false;
		}
		
		if($('#select').val() === "0") {
			flag = true;
			alert("请给物品选择正确的大类");
			$('#select').focus();
			return false;
		}
		if($('#selecta').val() === "0") {
			flag = true;
			alert("请给物品选择正确的小类");
			$('#selecta').focus();
			return false;
		}
		
		if(
			$.trim($('input[name=name]').val()) === ""
		) {
			flag = true;
			alert("你的物品的名字呢");
			$('input[name=name]').focus();
			return false;
		}
		if(
			$.trim($('input[name=tag]').val()) === ""
		) {
			flag = true;
			alert("填写一下物品标签吧!");
			$('input[name=tag]').focus();
			return false;
		}
		
		if($.trim($('input[name=buy_date]').val())===""){
			flag=true;
			alert("填写下购买日期");
			$('input[name=buy_date]').focus();
			return false;
		}
		
		if($.trim($('input[name=present_price]').val())===""){
			flag=true;
			alert("填写你的出价");
			$('input[name=present_price]').focus();
			return false;
		}
		
		if(
			$.trim($('textarea[name=detail]').val()) === ""
		) {
			flag = true;
			alert("请填写作品介绍!");
			$('textarea[name=detail]').focus();
			return false;
		}
		
//		var category = $("#selecta").val();
//		if(category == 2) {
//			if(
//				$.trim($('input[name=authors]').val()) === "" ||
//				$.trim($('input[name=come]').val()) === ""
//			) {
//				flag = true;
//				alert("123");
//				$('input[name=authors]').focus();
//				return;
//			}
//		}
		if(flag) {
			e.preventDefault();
		}
	});
	
});

$(function(){
	
	$(".activebox input").select(function(){
	    document.onkeydown = function(e){  
	      var ev = document.all ? window.event : e;
	      if(ev.keyCode==13) {
	          	$('.activesub').trigger("click");
	      }
	    }
	});

		$("#user_login input").keydown(function(e){
			 var e = e || event,
			 keycode = e.which || e.keyCode;
			 if (keycode==13) {
			  $(".ifnew-submit-login").trigger("click");
			 }
		});
	$(".user_reg input").keydown(function(e){
			 var e = e || event,
			 keycode = e.which || e.keyCode;
			 if (keycode==13) {
			  $(".ifnew-submit-reg").trigger("click");
			 }
		});
	

	$(".loginbox input").select(function(){
	    document.onkeydown = function(e){  
	      var ev = document.all ? window.event : e;
	      if(ev.keyCode==13) {
	          	$('.loginsub').trigger("click");
	      }
	    }
	
		
	});
	$(".regbox input").select(function(){
	    document.onkeydown = function(e){  
	      var ev = document.all ? window.event : e;
	      if(ev.keyCode==13) {
	          	$('.regsub').trigger("click");
	      }
	    }
	});
});


(function($){
    $.fn.VMiddleImg = function(options) {
        var defaults={
            "width":null,
            "height":null
        };
        var opts = $.extend({},defaults,options);
        return $(this).each(function() {
            var $this = $(this);
            var objHeight = $this.height(); //图片高度
            var objWidth = $this.width(); //图片宽度
            var parentHeight = opts.height||$this.parent().height(); //图片父容器高度
            var parentWidth = opts.width||$this.parent().width(); //图片父容器宽度
            var ratio = objHeight / objWidth;
            if (objHeight > parentHeight && objWidth > parentWidth) {
                if (objHeight > objWidth) { //赋值宽高
                    $this.width(parentWidth);
                    $this.height(parentWidth * ratio);
                } else {
                    $this.height(parentHeight);
                    $this.width(parentHeight / ratio);
                }
                objHeight = $this.height(); //重新获取宽高
                objWidth = $this.width();
                if (objHeight > objWidth) {
                    $this.css("top", 0);
                } else {
                    $this.css("left", (parentWidth - objWidth) / 2);
                }
            }
            else {
                if (objWidth > parentWidth) {
                    $this.css("left", (parentWidth - objWidth) / 2);
                }
                $this.css("top", 0);
            }
        });
    };
})(jQuery);


