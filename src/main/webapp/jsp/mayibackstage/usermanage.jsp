<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>用户信息管理</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Bootstrap CSS -->
		<link href="<%=basePath%>jsp/mayibackstage/css/bootstrap.min.css" rel="stylesheet">
		<!-- jquery JS -->
		<script src="<%=basePath%>jsp/mayibackstage/js/jquery-3.3.1.js"></script>
		<!-- Bootstrap JS  -->
		<script src="<%=basePath%>jsp/mayibackstage/js/bootstrap.min.js"></script>
		<style>
			/*imgtable*/
			
			.imgtable {
				width: 100%;
				border: solid 1px #cbcbcb;
			}
			
			.imgtable th {
				background: url(../images/th.gif) repeat-x;
				height: 34px;
				line-height: 34px;
				border-bottom: solid 1px #b6cad2;
				text-indent: 21px;
				text-align: left;
			}
			
			.imgtable td {
				line-height: 20px;
				text-indent: 21px;
				border-right: dotted 1px #c7c7c7;
			}
			
			.imgtable td img {
				margin: 10px 20px 10px 0;
			}
			
			.imgtable td p {
				color: #919191;
			}
			
			.imgtable td i {
				font-style: normal;
				color: #ea2020;
			}
			
			.imgtd {
				text-indent: 0;
			}
			
			.imgtable tbody tr.odd {
				background: #f5f8fa;
			}
			
			.imgtable tbody tr:hover {
				background: #e5ebee;
			}
			
			.breadcrumb {
				background-color: #FFFFFF;
			}
			
			.mar {
				margin-top: 1%;
			}
			
			.p-0 {
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
						<a href="#">用户管理</a>
					</li>
					<li class="active">用户列表</li>
					<a href="<%=basePath%>mayibackstage/user/toAddUser" target="mainFrame" style="float: right;margin-right: 7%;font-size: 20px;">
						<span class="glyphicon glyphicon-plus"></span>
						<span style="">添加用户</span>
					</a>
				</ol>

			</div>
			<table class="imgtable">

				<thead style="background-color: #F0F5F7;">
					<tr>
						<th style="width:4%;">id</th>
						<th style="width:10%;">昵称</th>
						<th style="width:6%;">账号</th>
						<th style="width:4%;">性别</th>
						<th style="width:10%;">电话</th>
						<th style="width:10%;">头像</th>
						<th style="width:6%;">书豆</th>
						<th style="width:10%;">个性签名</th>
						<th style="width:10%;">创建时间</th>
						<th style="width:12%;">操作</th>
					</tr>
				</thead>

				<tbody>
				<c:forEach items="${requestScope.userList}" var="userList">
					<tr class="odd">
                        <td>${userList.id }</td>
						<td>${userList.u_name }</td>
						<td>${userList.u_user }</td>
						<td>${userList.u_sex }</td>
						<td>${userList.u_phone }</td>
						<td>${userList.u_images }</td>
						<td>${userList.u_currency }</td>
						<td><p>${userList.u_introduce }</p></td>
						<td><p><fmt:formatDate value="${userList.u_create_time}" pattern="yyyy-MM-dd  HH:mm"/></p></td>

						<td>
							<a href="<%=basePath%>mayibackstage/user/toUpdate?id=${userList.id}" target="mainFrame" class="tablelink">修改</a>
							<a href="<%=basePath%>mayibackstage/user/deleteUser?id=${userList.id}" name="deleteProduct" alt="86" class="tablelink">删除</a>
						</td>
					</tr>
				</c:forEach>
				</tbody>

			</table>
			<!--分页-->
			<div class="row">

				<div class="col-xs-8"></div>
				<div class="col-xs-1 p-0" style="margin-top: 1.7%;">
					共<i class="blue">7</i>条记录,页面<i class="blue">1</i>/<i class="blue">1</i>
				</div>
				<div class="col-xs-3">
					<nav aria-label="Page navigation" class="center-block  pull-left">
						<ul class="pagination">
							<li>
								<a href="#" aria-label="Previous">
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>
							<li>
								<a href="#">1</a>
							</li>
							<li>
								<a href="#">2</a>
							</li>
							<li>
								<a href="#">3</a>
							</li>
							<li>
								<a href="#">4</a>
							</li>
							<li>
								<a href="#">5</a>
							</li>
							<li>
								<a href="#" aria-label="Next">
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