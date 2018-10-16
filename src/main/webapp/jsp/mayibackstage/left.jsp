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
				<img class="img-circle" src="img/admin1.png" width="100px" height="100px" style="margin-top: 20%;" />
				<h4 style="color: #FFFFFF; margin-bottom: 70px;">蚂蚁二号</h4>
			</div>

			<div style="padding: 0px 40px;">

				<!--导航	-->
				<div class="menu-one">
					<a href="<%=basePath%>mayikanshu/booklist" target="mainFrame" class="nav-font">
						<p>书籍管理</p>
					</a>
				</div>
					<!--导航	-->
				<div class="menu">
					<a href="#" class="nav-font">
						<p>书架管理</p>
					</a>
				</div>	
				<!--导航	-->
				<div class="menu">
					<a href="comment.html" target="mainFrame" class="nav-font">
						<p>评论管理</p>
					</a>
				</div>
			
				<!--导航	-->
				<div class="menu">
					<a href="usermanage.html" target="mainFrame" class="nav-font">
						<p>用户管理</p>
					</a>
				</div>
				<!--导航	-->
				<div class="menu">
					<a href="<%=basePath%>mayikanshu/adminlist" target="mainFrame" class="nav-font">
						<p>管理员管理</p>
					</a>
				</div>
			</div>

		</div>
	</body>

</html>