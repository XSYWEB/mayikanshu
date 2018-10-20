<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>

	<head>
		<meta charset="UTF-8">
		<title>管理员管理</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Bootstrap CSS -->
		<link href="<%=basePath%>jsp/mayibackstage/css/bootstrap.min.css" rel="stylesheet">
		<!-- index CSS -->
		<link href="<%=basePath%>jsp/mayibackstage/css/index.css" rel="stylesheet">
		<!-- jquery JS -->
		<script src="<%=basePath%>jsp/mayibackstage/js/jquery-3.3.1.js"></script>
		<!-- Bootstrap JS  -->
		<script src="<%=basePath%>jsp/mayibackstage/js/bootstrap.min.js"></script>
		<style type="text/css">
			.breadcrumb {
				background-color: #FFFFFF;
			}
			.portrait{
				border-radius: 50px;
			}
			.thumbnail{
				height: 322px;		
			}
			.mar{
				margin-top: 1%;
			}
			.p-0{
				padding: 0!important;
			}
		</style>

	</head>

	<body>
		
		<div class="container-fluid">
			<div class="mar">
				<ol class="breadcrumb">
					<li>
						<a href="#">首页</a>
					</li>
					<li>
						<a href="#">管理员管理</a>
					</li>
					<li class="active">管理员列表</li>	
					<a href="<%=basePath%>jsp/mayibackstage/adminadd.jsp" target="mainFrame" style="float: right;margin-right: 7%;font-size: 20px;">
						<span class="glyphicon glyphicon-plus"></span>
						<span style="">添加管理员</span>
					</a>
				</ol>
				
		    </div>

			<div class="row">

				<c:forEach var="adminList" items="${requestScope.adminList}">
			 <a href="<%=basePath%>jsp/mayibackstage/adminupdate.html" target="mainFrame">
				<div class="col-md-3">
				
					<div class="thumbnail">	
						<img class="img-circle" src="${adminList.a_images}"  style="width: 180px;height: 190px" alt="... ">
						<div class="caption font-weight-bold text-center ">
							<h3 class=" ">${adminList.a_name}</h3>
							<p>职务：${adminList.a_position}</p>
							<p>
								电话：${adminList.a_phone}
							</p>
						</div>	
					</div>
				
					</div>
			  </a>
				</c:forEach>




				</div>
						<!--分页-->
			<div class="row">
				
				<div class="col-xs-8"></div>
				<div class="col-xs-1 p-0" style="margin-top: 1.7%;">
					共<i class="blue">${pageUtil.pageNumber}</i>条记录,页面<i class="blue">${pageUtil.pageIndex}</i>/<i class="blue">1</i>
				</div>
				<div class="col-xs-3">
					<nav aria-label="Page navigation" class="center-block  pull-left">
						<ul class="pagination">
							<li>
								<a href="page?pageIndex=${pageUtil.pageIndex>1?pageUtil.pageIndex-1:1}" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>
							<li>
								<a href="page?pageIndex=1">1</a>
							</li>
							<li>
								<a href="page?pageIndex=2">2</a>
							</li>
							<li>
								<a href="page?pageIndex=3">3</a>
							</li>
							<li>
								<a href="page?pageIndex=4">4</a>
							</li>
							<li>
								<a href="test/page?pageIndex=5">5</a>
							</li>
							<li>
								<a href="page?pageIndex=${pageUtil.pageIndex<pageUtil.pageCount?pageUtil.pageIndex+1:pageUtil.pageCount}" aria-label="Next">
									<span aria-hidden="true">&raquo;</span>
								</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
			
		</div>
	</body>

</html>