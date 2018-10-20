<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%><!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title></title>
		<link href="css/bootstrap.css" rel="stylesheet">
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="css/bootstrap-theme.min.css" />
		<link rel="stylesheet" href="css/bootstrap-theme.css" />
		<style type="text/css">
			html,
			body {
				width: 100%;
				height: 100%;
				margin: 0;
				padding: 0;
				overflow: hidden;
			}
			
			.top-nav {
				height: 60px;
				width: 100%;
				margin: 0 auto;
			}
			
			.nav-icon {
				color: #FFFFFF;
				font-size: 15px;
				margin-top: 3%;
			}
			.nav-icon:visited {
				color: #FFFFFF;
				text-decoration: none;
			}
			.nav-icon:hover {
				text-decoration: none;
				color: orangered;
			}
			.p-0{
				padding: 0!important;
			}
		</style>
	</head>

	<body>
		<div class="top-nav">

			<!--右边导航-->
			<div style="width:100%;height: 60px; background-color:  #242329; float: right;">

				<div class="row">

					<div class="col-xs-8">
						<a href="index.jsp" target="_top">
						<img src="img/ht_logo5.png" width="240px" height="60px" />
						</a>
					</div>

					<div class="col-xs-4">
						<a href="<%=basePath%>admin/logout" target="_top" class="nav-icon col-xs-2 p-0 text-center pull-right">
							<span class="glyphicon glyphicon-off"></span>
							<span>退出</span>
						</a>

						<a href="#" class="nav-icon col-xs-3 p-0 text-center pull-right">
							<span class="glyphicon glyphicon-comment"></span>
							<span>&nbsp;系统消息</span>
						</a>
						<a href="#" class="nav-icon col-xs-4 p-0 text-center pull-right">
							<span class="glyphicon glyphicon-user"></span>
							<span>&nbsp;${sessionScope.admin.a_user}</span>
						</a>
						<a href="<%=basePath%>admin/index" target="_top" class="nav-icon col-xs-3 p-0	 text-center  pull-right">
							<span class="glyphicon glyphicon-home"></span>
							<span></span>&nbsp;返回首页</p>
						</a>
					</div>

				</div>
			</div>
			<!--右边导航结束-->
		</div>

	</body>

</html>