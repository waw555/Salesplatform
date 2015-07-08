{*<!--
/*********************************************************************************
** The contents of this file are subject to the vtiger CRM Public License Version 1.0
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
*
 ********************************************************************************/
-->*}
{strip}
{*<!DOCTYPE html>
<html>
	 <head>
		<title>ООО "Евролок Проект"</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">*}
		<!-- for Login page we are added -->
		<link href="libraries/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="libraries/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
		<link href="libraries/bootstrap/css/jqueryBxslider.css" rel="stylesheet" />
		<script src="libraries/jquery/jquery.min.js"></script>
		<script src="libraries/jquery/boxslider/jqueryBxslider.js"></script>
		<script src="libraries/jquery/boxslider/respond.min.js"></script>
		<script>
			jQuery(document).ready(function(){
				scrollx = jQuery(window).outerWidth();
				window.scrollTo(scrollx,0);
				slider = jQuery('.bxslider').bxSlider({
				auto: true,
				pause: 4000,
				randomStart : true,
				autoHover: true
			});
			jQuery('.bx-prev, .bx-next, .bx-pager-item').live('click',function(){ slider.startAuto(); });
			}); 
		</script>
	{*</head>
	<body>*}
		<div class="container-fluid login-container">
			<div class="row-fluid">
				<div class="span3">
					<div class="logo"><img src="layouts/vlayout/skins/images/logo.png">
					<br />
					<a target="_blank" href="http://{$COMPANY_DETAILSCOMPANY_DETAILS.website}">{$COMPANY_DETAILS.name}</a>
					</div>
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="content-wrapper">
						<div class="container-fluid">
							<div class="row-fluid">
                                                                {* SalesPlatform.ru begin Center Login form *}
								<div class="span6" id="sp-login-span6">
									<div class="login-area" id="sp-login-area">
								<!-- <div class="span6"> -->
								<!--	<div class="login-area"> -->
                                                                <!-- SalesPlatform.ru end -->
										<div class="login-box" id="loginDiv">
											<div class="">
												<h3 class="login-header">Вход</h3>
											</div>
											<form class="form-horizontal login-form" style="margin:0;" action="index.php?module=Users&action=Login" method="POST">
												{if isset($smarty.request.error)}
													<div class="alert alert-error">
														<p>Неверное имя пользователя или пароль</p>
													</div>
												{/if}
												{if isset($smarty.request.fpError)}
													<div class="alert alert-error">
														<p>Неверное имя пользователя или Email</p>
													</div>
												{/if}
												{if isset($smarty.request.status)}
													<div class="alert alert-success">
														<p>Письмо отправлено на Ваш почтовый ящик</p>
													</div>
												{/if}
												{if isset($smarty.request.statusError)}
													<div class="alert alert-error">
														<p>Сервер исходящнй почты не настроен</p>
													</div>
												{/if}
												<div class="control-group">
													<label class="control-label" for="username"><b>Пользователь</b></label>
													<div class="controls">
														<input type="text" id="username" name="username" placeholder="Username">
													</div>
												</div>

												<div class="control-group">
													<label class="control-label" for="password"><b>Пароль</b></label>
													<div class="controls">
														<input type="password" id="password" name="password" placeholder="Password">
													</div>
												</div>
												<div class="control-group signin-button">
													<div class="controls" id="forgotPassword">
														<button type="submit" class="btn btn-primary sbutton">Вход</button>
														&nbsp;&nbsp;&nbsp;<a>Забыли пароль ?</a>
													</div>
												</div>
											</form>
										</div>
										
										<div class="login-box hide" id="forgotPasswordDiv">
											<form class="form-horizontal login-form" style="margin:0;" action="forgotPassword.php" method="POST">
												<div class="">
													<h3 class="login-header">Напоминание пароля</h3>
												</div>
												<div class="control-group">
													<label class="control-label" for="username"><b>Пользователь</b></label>
													<div class="controls">
														<input type="text" id="username" name="username" placeholder="Username">
													</div>
												</div>
												<div class="control-group">
													<label class="control-label" for="email"><b>Email</b></label>
													<div class="controls">
														<input type="text" id="email" name="email"  placeholder="Email">
													</div>
												</div>
												<div class="control-group signin-button">
													<div class="controls" id="backButton">
														<input type="submit" class="btn btn-primary sbutton" value="Отправить" name="retrievePassword">
														&nbsp;&nbsp;&nbsp;<a>Назад</a>
													</div>
												</div>
											</form>
										</div>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</body>
	<script>
		jQuery(document).ready(function(){
			jQuery("#forgotPassword a").click(function() {
				jQuery("#loginDiv").hide();
				jQuery("#forgotPasswordDiv").show();
			});
			
			jQuery("#backButton a").click(function() {
				jQuery("#loginDiv").show();
				jQuery("#forgotPasswordDiv").hide();
			});
			
			jQuery("input[name='retrievePassword']").click(function (){
				var username = jQuery('#user_name').val();
				var email = jQuery('#emailId').val();
				
				var email1 = email.replace(/^\s+/,'').replace(/\s+$/,'');
				var emailFilter = /^[^@]+@[^@.]+\.[^@]*\w\w$/ ;
				var illegalChars= /[\(\)\<\>\,\;\:\\\"\[\]]/ ;
				
				if(username == ''){
					alert('Пожалуйста, введите корректное имя пользователя');
					return false;
				} else if(!emailFilter.test(email1) || email == ''){
					alert('Пожалуйста, введите корректный Email');
					return false;
				} else if(email.match(illegalChars)){
					alert( "Email содержит некорректные символы");
					return false;
				} else {
					return true;
				}
				
			});
		});
	</script>
{* SalesPlatform.ru begin fixed display *}        
{*</html>*}
{* SalesPlatform.ru end *}  
{/strip}
