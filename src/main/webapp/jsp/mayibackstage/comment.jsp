<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>

	<head>
		<meta charset="UTF-8">
		<title>评论管理</title>
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
						<a href="#">评论管理</a>
					</li>
					<li class="active">评论列表</li>

				</ol>

			</div>
			<table class="imgtable">

				<thead style="background-color: #F0F5F7;">
					<tr>
						<th style="width:10%;">图片</th>
						<th style="width:20%;">书名</th>
						<th style="width:10%;">评价人</th>
						<th style="width:20%;">评价时间</th>
						<th style="width:10%;">评价内容</th>
						<th style="width:12%;">操作</th>
					</tr>
				</thead>

				<tbody>
<c:forEach items="${requestScope.commentList}" var="commentList">
					<tr>
						<td class="imgtd">

							<img src="img/b-zetian.jpg" style="width: 60px;height: 80px;">

						</td>
						<td>
							<p>书名：<a href="#">${commentList.c_b_name }</a></p>
							<p>类型：${commentList.c_b_type }</p>
							<p>作者：${commentList.c_b_writer }</p>
						</td>
						<td>${commentList.c_u_name }</td>
						<td><p><fmt:formatDate value="${commentList.c_create_time}" pattern="yyyy-MM-dd  HH:mm"/></p></td>
						<td>${commentList.c_comm}</td>

						<td>

							<a href="<%=basePath%>mayibackstage/comment/deletecomment?id=${commentList.id}" name="" alt="" class="tablelink">删除</a>
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