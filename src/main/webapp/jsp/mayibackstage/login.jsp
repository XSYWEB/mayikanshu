<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">

	<head>
		<meta charset="UTF-8">
		<title>login</title>
		<link href="<%=basePath%>jsp/mayibackstage/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="<%=basePath%>jsp/mayibackstage/css/login.css" />
		<style>

		</style>

	</head>

	<body>
		<div class="container">
			<div class="form row">
				<div class="form-horizontal col-md-offset-3">
					<h3 class="form-title" style="color: #FFFFFF;">LOGIN</h3>
					<div class="col-md-9">
						<form action="<%=basePath%>admin/login" method="post">
							<div class="form-group">
								<i class="fa fa-user fa-lg"></i>
								<input class="form-control required" type="text" name="a_user" placeholder="User" autofocus="autofocus" />
							</div>
							<div class="form-group">
								<i class="fa fa-lock fa-lg"></i>
								<input class="form-control required" name="a_password" type="Password" placeholder="Password" />
							</div>
							<div class="form-group" style="color: #FFFFFF;">
								<label class="checkbox">
                            <input type="checkbox"/>记住我
                        </label>
							</div>
							<div class="form-group col-md-offset-9">
								<button type="submit" class="btn btn-success pull-right" name="submit" style="background-color: #242329;">登录</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!--底部-->
		<div class="foot">
			<span>蚂蚁窝@2018 蚂蚁看书后台管理系统</span>
		</div>

	</body>

</html>