<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>监控系统</title>
<%@include file="/header.jspf"%>
<link href="${path}/css/login.css" rel="stylesheet">
<script>
	if (top != self) {
		top.location.href = self.location.href;
	}
</script>
</head>
<body>
	<div class="header">
		<h1>监控系统</h1>
	</div>
	<div>
		<div class="row">
			<div class="span9">
				<form class="form-horizontal login_form">
					<div class="row">
						<div class="control-group span9">
							<div class="controls">
								<input type="text" id="username" placeholder="用户名"
									class="input-large control-text"
									onkeypress="if(event.keyCode==13){login();}">
							</div>
						</div>

					</div>
					<div class="row">
						<div class="control-group span9">
							<div class="controls">
								<input type="password" id="password" placeholder="登陆密码"
									class="input-large control-text"
									onkeypress="if(event.keyCode==13){login();}">
							</div>
						</div>
					</div>

					<div class="row">
						<div class="control-group span9">
							<div class="controls">
								<button type="button"
									class="button-large button button-info login_btn">登陆</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>


	<script src="${path}/js/login.js"></script>
</body>
</html>
