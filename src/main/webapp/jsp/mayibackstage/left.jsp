<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<!-- Bootstrap CSS -->
		<link href="<%=basePath%>jsp/mayibackstage/css/bootstrap.min.css" rel="stylesheet">
		<!-- index CSS -->
		<link href="<%=basePath%>jsp/mayibackstage/css/index.css" rel="stylesheet">
		<!-- jquery JS -->
		<script src="<%=basePath%>jsp/mayibackstage/js/jquery-3.3.1.js"></script>
		<!-- Bootstrap JS  -->
		<script src="<%=basePath%>jsp/mayibackstage/js/bootstrap.min.js"></script>
		<!-- index JS -->
		<script src="<%=basePath%>jsp/mayibackstage/js/index.js"></script>
		<style type="text/css">
			html,
			body {
				width: 100%;
				height: 100%;
				margin: 0;
				padding: 0;
				overflow: hidden;
			}
			
			.menu {
				height: 60px;
				line-height: 60px;
				border-top: solid #999999 1px;
			}
			
			.menu-one {
				height: 60px;
				line-height: 60px;
			}
			
			.left-nav {
				height: 100%;
				width: 100%;
				margin: 0 auto;
				background-color: #242329;
				border-top: solid #444444 1px;
			}
			
			.nav-font {
				color: #FFFFFF;
				font-size: 16px;
				text-align: center;
			}
			
			.nav-font:link {
				color: #FFFFFF;
				text-decoration: none;
			}
			
			.nav-font:visited {
				color: #FFFFFF;
				text-decoration: none;
			}
			
			.nav-font:hover {
				color: orangered;
			}
		</style>
	</head>

	<body>
		<div class="left-nav">

			<div class="text-center">
				<img class="img-circle" src="${sessionScope.admin.a_images}"  style="margin-top: 20%; height: 150px;width: 150px" />
				<h4 style="color: #FFFFFF; margin-bottom: 70px;">${sessionScope.admin.a_name}</h4>
			</div>

			<div style="padding: 0px 40px;">

				<!--导航	-->
				<div class="menu-one">
					<a href="<%=basePath%>mayibackstage/book/booklist" target="mainFrame" class="nav-font">
						<p>书籍管理</p>
					</a>
				</div>
				<!--导航	-->
				<div class="menu">
					<a href="<%=basePath%>mayibackstage/comment/commentlist" target="mainFrame" class="nav-font">
						<p>评论管理</p>
					</a>
				</div>
			
				<!--导航	-->
				<div class="menu">
					<a href="<%=basePath%>mayibackstage/user/userlist" target="mainFrame" class="nav-font">
						<p>用户管理</p>
					</a>
				</div>
				<!--导航	-->
				<div class="menu">
					<a href="<%=basePath%>mayibackstage/admin/adminlist" target="mainFrame" class="nav-font">
						<p>管理员管理</p>
					</a>
				</div>
			</div>

		</div>
	</body>

</html>