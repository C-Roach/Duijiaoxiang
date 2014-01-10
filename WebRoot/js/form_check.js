function change_style() {
	document.getElementById('register').style.display = "none";
	var name = 'register';
	var value = 'is_show';
	document.cookie = name + "=" + escape(value);
}
function showSelect(hld, id) {
	var ele = document.getElementById(id);
	ele.style.display = 'block';
	var timer = null;
	ele.onmouseover = function() {
		if (timer) {
			clearTimeout(timer);
		}
		ele.style.display = 'block';
	}
	ele.onmouseout = function() {
		timer = setTimeout(function() {
			ele.style.display = 'none'
		}, 500);
	}
	hld.onmouseover = function() {
		if (timer) {
			clearTimeout(timer);
		}
	}
	hld.onmouseout = function() {
		timer = setTimeout(function() {
			ele.style.display = 'none'
		}, 500);
	}
}
//用户登录表单验证
function checkform() {
	var username = $.trim($('.ifnew-username').val());
	var password = $.trim($('.ifnew-password').val());
	
	if (username == "") {
		$('#user_e').html('请填写用户名');
		$("input[name='username']").focus();
		return false;
	} else {
		$.post("login_validate.action", {
			user_name : username,
			password : password,
		}, function(data) {
			if (data == 0) {
				$('.ifnew-username').addClass('ifnewcheckok');
				$('#user_e').html('');
				$("input[name='password']").focus();
				return false;
			} else if (data == 1) {
				$('#user_e').html('用户名不存在');
				$("input[name='username']").focus();
				return false;
			} else if (data == 2) {
				$('#password_e').html('密码错误');
				$('#user_e').html('');
				$("input[name='password']").focus();
				return false;
			} 
			else if (data == 3) {
				$('#password_e').html('');
				$('#user_e').html('');
				$('.ifnew-answ').addClass('ifnewcheckok');
				return true;
			}
			return true;
		}, 'text');
	}
	return true;
}
//用户注册表单验证
function checkform1() {
	var username = $.trim($('.ifnew-username-reg').val());
	var password = $.trim($('.ifnew-password-reg').val());
	var password2 = $.trim($('.ifnew-password2-reg').val());
	var email = $.trim($('.ifnew-email').val());
	if (username == "") {
		$('#ue').html('用户名名为4-20个英文数字或中文字符');
		$("input[name='un']").focus();
		return false;
	} else {
		if (username.length < 4 || username.length > 20) {
			$('#ue').html('用户名名为4-20个英文数字或中文字符');
			$("input[name='un']").focus();
			return false;
		}else{
			$.post("reg_validate.action",{
				user_name : username,
				password : password,
				password2 : password2,
				user_email : email
			},function(data){
				if(data == 0){
					$('#ue').html('');
					$("input[name='ps']").focus();
					$('.ifnew-username-reg').addClass('ifnewcheckok');
					return false;
				}
				if(data == 1){
					$('#ue').html('用户已存在');
					$('.ifnew-username-reg').removeClass('ifnewcheckok');
					$("input[name='un']").focus();
					return false;
				}
				if(data == 2){
					$('#pe').html('请输入密码');
					$('#ue').html('');
					$("input[name='ps']").focus();
					$('.ifnew-username-reg').addClass('ifnewcheckok');
					return false;
				}
				if(data == 3){
					$('#p2e').html('请再次输入密码');
					$('#ue').html('');
					$('#pe').html('');
					$("input[name='password2']").focus();
					$('.ifnew-username-reg').addClass('ifnewcheckok');
					$('.ifnew-password-reg').addClass('ifnewcheckok');
					return false;
				}
				if(data == 4){
					$('#p2e').html('两次密码不一致');
					$('#ue').html('');
					$('#pe').html('');
					$("input[name='password2']").focus();
					$('.ifnew-username-reg').addClass('ifnewcheckok');
					$('.ifnew-password-reg').addClass('ifnewcheckok');
					return false;
				}
				if(data == 5){
					$('#ee').html('请输入注册邮箱');
					$('#ue').html('');
					$('#pe').html('');
					$('#p2e').html('');
					$("input[name='email']").focus();
					$('.ifnew-username-reg').addClass('ifnewcheckok');
					$('.ifnew-password-reg').addClass('ifnewcheckok');
					$('.ifnew-password2-reg').addClass('ifnewcheckok');
					return false;
				}
				if(data == 6){
					$('#ee').html('请输入合法的邮箱地址');
					$('#ue').html('');
					$('#pe').html('');
					$('#p2e').html('');
					$("input[name='email']").focus();
					$('.ifnew-username-reg').addClass('ifnewcheckok');
					$('.ifnew-password-reg').addClass('ifnewcheckok');
					$('.ifnew-password2-reg').addClass('ifnewcheckok');
					return false;
				}
				if(data == 8){
					//alert("该邮箱已被注册");
					$('#ee').html('该邮箱已被注册');
					$('#ue').html('');
					$('#pe').html('');
					$('#p2e').html('');
					$("input[name='email']").focus();
					$('.ifnew-username-reg').addClass('ifnewcheckok');
					$('.ifnew-password-reg').addClass('ifnewcheckok');
					$('.ifnew-password2-reg').addClass('ifnewcheckok');
					return false;
				}
				if(data == 7){
					$('#ee').html('');
					$('#ue').html('');
					$('#pe').html('');
					$('#p2e').html('');
					$("input[name='email']").focus();
					$('.ifnew-username-reg').addClass('ifnewcheckok');
					$('.ifnew-password-reg').addClass('ifnewcheckok');
					$('.ifnew-password2-reg').addClass('ifnewcheckok');
					$('.ifnew-email').addClass('ifnewcheckok');
					return true;
				}
				return true;
			},'text');
		}
	}
	return true;
	
}
function selectchange() {
	$("#safe_q_e").html("");
}
function pschange() {
	$("#p2e").html("");
	$("#pe").html("");
}
$(function() {
	$(".bbs").hover(function() {
		$(this).find(".menubox").show();
	}, function() {
		$(this).find(".menubox").hide();
	});
});
// window.onload = function(){
// toTop('top',false);
// }