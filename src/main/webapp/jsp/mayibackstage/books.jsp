<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>电子书管理</title>
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
			.p-0{
				padding: 0!important;
			}
			.m-0{
				margin: 0!important;
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
						<a href="#">书籍管理</a>
					</li>
					<li class="active">书籍列表</li>
					<a href="#" style="float: right;margin-right: 7%;font-size: 20px;">
						<span class="glyphicon glyphicon-plus"></span>
						<span style="">添加书籍</span>
					</a>

				</ol>

			</div>
			<table class="imgtable">

				<thead style="background-color: #F0F5F7;">
					<tr>
						<th width="100px;">图片</th>
						<th style="width:10%;">书名</th>
						<th style="width:10%;">所属分类</th>
						<th style="width:10%;">作者</th>
						<th style="width:10%;">字数</th>
						<th style="width:10%;">点击数</th>
						<th style="width:10%;">简介</th>
						<th style="width:20%;">收录时间</th>
						<th style="width:12%;">操作</th>
					</tr>
				</thead>

				<tbody>

				<c:forEach var="booklist" items="${requestScope.booklist}">

					<tr>
						<td class="imgtd">

							<img src="<%=basePath%>jsp/mayibackstage/img/dldl.jpg" style="width: 60px;height: 80px;">

						</td>
						<td>
								${booklist.b_name}
						</td>
						<td>科幻
						</td>
						<td>
								${booklist.b_writer}
						</td>
						<td>${booklist.b_num}万字</td>
						<td>

								${booklist.b_click}

						</td>

						<td>${booklist.b_describe}</td>
						<td><p><fmt:formatDate value="${booklist.b_time}" pattern="yyyy-MM-dd  HH:mm"/></p></td>
						<td>
							<a href="" class="tablelink">修改</a>
							<a href="" name="deleteProduct" alt="86" class="tablelink">删除</a>
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