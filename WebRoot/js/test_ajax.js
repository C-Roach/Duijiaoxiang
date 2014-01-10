$(function(){
			var ctrl = 0;
			$('#commentarea').on('keydown', function(e){
				if(e.keyCode == 17) {
					ctrl = 1;
				}
				if(ctrl && e.keyCode == 13) {
					$("#commentsub").trigger('click');
				}
			});

			$('#commentarea').on('keyup', function(e){
				if(e.keyCode == 17) {
					ctrl = 0;
				}
			});
			$("#commentsub").click(function(){
				if($.trim($('#commentarea').val()) == "" || 
					$.trim($('#commentarea').val()) == '说说你的看法...') {
					alert('请填写评论内容,不能为空哦!');
					return;
				}
				if($.trim($('#needvcode').val()) == "1"){
					if($.trim($('#vcode').val()) != "" && $.trim($('#vcode').val().toUpperCase()) != $.trim($('#checkCode').val

())) {
						alert('请填写正确的验证码!');
						return;
					}else if($.trim($('#vcode').val()) == ""){
						alert('请填写验证码!');
						return;
					}
				}
				   $.ajax({  
					  type: "POST",  
					  url: "html_comment_add_do.php",  
					  data: {  
					  comment:$('.commentarea').val(),
					  //html_comment_check:$('.comment-check').val(),
					  html_comment_wid:$('.comment-wid').val(),
					  vcode:$('#vcode').val()
					  },  
					  datatype: "text",  
					  beforeSend: function() {  
			  
					  },  
					  success: function(data) {  
						if(data == '0'){ 
							$(".commentarea").val("");
							loadComment(true);
						}else{ 
							if(data == '1'){ 
								alert('用户未登录！')
							}
							if(data == '2'){ 
								alert('效验码错误！')
							}
							if(data == '3'){ 
								alert('评论内容为空！')
							}
							if(data == '4'){ 
								alert('未指定作品！')
							}
							if(data == '5'){ 
								alert('帐户未激活！')
							}
							if(data == '6'){ 
								alert('评论的作品已经不存在！')
							}
							if(data == '10'){ 
								alert('未填写验证码！')
							}
						}
					  },  
					  complete: function(XMLHttpRequest, textStatus) {  
						  //alert(XMLHttpRequest.responseText);  
						  //alert(textStatus);  
						  //HideLoading();     
					  },  
					  error: function() {  
						  }  
				  });  
			});
			
			$(".ifnew-submit-login").click(function(){
				$.ajax({
				type:'POST',
				  url:'login.action',
				 data:"user_name="+$('.ifnew-username').val()+"&user_password="+$('.ifnew-password').val()+"&auto_login="+$("input[name='autologin']").val()+"",
				 dataType : 'json',
			success : function(json)
			{
				var data = json.code;
				  
					if(data == '0'){
						$('#password_e').html('');
	              		$('#user_e').html('');
	              		//$("#safe_q_e").html("");
	              		//$("#safe_a_e").html("");
						//document.write("<script type=\"text/javascript\" src=\""+ json.url+"\" reload='1'><\/script><script type=\"text/javascript\" src=\""+ json.url2+"\" reload='1'><\/script><\/script><script type=\"text/javascript\">window.location.href = 'index.php';<\/script>");
						window.location.reload();
						//window.location.href = 'index.php';
					}else{ 
						if(data == '1'){ 
							$('#user_e').html('用户名不存在！');
							$("input[name='username']").focus();
						}
						if(data == '2'){
							$('.ifnew-username').addClass('ifnewcheckok');
							$('#password_e').html('密码错误!');
		              		$('#user_e').html('');
		              		$("input[name='password']").focus();
						}
						if(data == '3'){ 
							$('#user_e').html('用户名空！');
							$("input[name='username']").focus();
						}
						if(data == '4'){
							$('.ifnew-username').addClass('ifnewcheckok');
							$('#password_e').html('请填写密码！');
		              		$('#user_e').html('');
		              		$("input[name='password']").focus();
						}
						if(data == '11'){
							alert('未知错误!');
						}
					} 
				  }});
				
			});
			
			$(".ifnew-submit-reg").click(function(){
				$.ajax({
				type:'POST',
				  url:'register.action',
				 data:"user_name="+$('.ifnew-username-reg').val()+"&user_password="+$('.ifnew-password-reg').val()+"&user_password2="+$('.ifnew-password2-reg').val()+"&user_email="+$('.ifnew-email').val()+"",
				 dataType : 'json',
			success : function(json)
			{
				var data = json.code;
				//alert("json code:"+data);
					if(data == '0'){
						//document.write("<script type=\"text/javascript\" src=\""+ json.url+"\" reload='1'><\/script><script type=\"text/javascript\" src=\""+ json.url2+"\" reload='1'><\/script><script type=\"text/javascript\">window.location.href = 'index.php';<\/script>");
						alert('注册成功!');
						window.location.reload();

					}else{ 
						if(data == '1'){ 
							$('#ue').html('用户名为空！');
							$("input[name='un']").focus();
						}
						if(data == '2'){
							$('.ifnew-username-reg').addClass('ifnewcheckok');
							$('#pe').html('密码为空!');
		              		$('#ue').html('');
		              		$("input[name='ps']").focus();
						}
						if(data == '3'){ 
							$('.ifnew-username-reg').addClass('ifnewcheckok');
							$('.ifnew-password-reg').addClass('ifnewcheckok');
							$('#ue').html('');
							$('#pe').html('');
							$('#p2e').html('两次输入密码不一致!');
							$("input[name='password2']").focus();
						}
						if(data == '12'){ 
							$('.ifnew-username-reg').addClass('ifnewcheckok');
							$('.ifnew-password-reg').addClass('ifnewcheckok');
							$('#ue').html('');
							$('#pe').html('');
							$('#p2e').html('请再次确认密码!');
							$("input[name='password2']").focus();
						}
						if(data == '4' || data == 'p0'){ 
							$('.ifnew-username-reg').addClass('ifnewcheckok');
							$('.ifnew-password-reg').addClass('ifnewcheckok');
							$('.ifnew-password2-reg').addClass('ifnewcheckok');
							$('#ue').html('');
							$('#pe').html('');
							$('#p2e').html('');
							$('#ee').html('请填写注册邮箱!');
							$("input[name='email']").focus();
						}
						if(data == '5'){ 
							$('#ue').html('用户名不合法!');
							$("input[name='un']").focus();
						}
						if(data == '6'){ 
							$('#ue').html('用户名包含非法词汇!');
							$("input[name='un']").focus();
						}
						if(data == '7'){ 
							$('#ue').html('用户名包已被注册!');
							$("input[name='un']").focus();
						}
						if(data == '8'){ 
							$('.ifnew-username-reg').addClass('ifnewcheckok');
							$('.ifnew-password-reg').addClass('ifnewcheckok');
							$('.ifnew-password2-reg').addClass('ifnewcheckok');
							$('#ue').html('');
							$('#pe').html('');
							$('#p2e').html('');
							$('#3e').html('邮箱格式错误!');
							$("input[name='email']").focus();
						}
						if(data == '9'){ 
							$('.ifnew-username-reg').addClass('ifnewcheckok');
							$('.ifnew-password-reg').addClass('ifnewcheckok');
							$('.ifnew-password2-reg').addClass('ifnewcheckok');
							$('#ue').html('');
							$('#pe').html('');
							$('#p2e').html('');
							$('#3e').html('该邮箱不允许注册!');
							$("input[name='email']").focus();
						}
						if(data == '10'){ 
							$('.ifnew-username-reg').addClass('ifnewcheckok');
							$('.ifnew-password-reg').addClass('ifnewcheckok');
							$('.ifnew-password2-reg').addClass('ifnewcheckok');
							$('#ue').html('');
							$('#pe').html('');
							$('#p2e').html('');
							$('#ee').html('邮箱已被注册!');
							$("input[name='email']").focus();
						}
						if(data == '11'){
							alert('未定义错误');
						}
					} 
				  }});
				
			});
			
			$(".quitlogin").click(function(){
				$.get(
				  'logout.action',
				  {
				  },
				  function (data)
				  {
					if(data == 1){ 
						//alert("backmessage:"+data);
						document.location = 'index.jsp';
					}else{
					} 
				  });
			});
});