<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="UTF-8">
		<title>管理员信息修改</title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- Bootstrap CSS -->
		<link href="<%=basePath%>jsp/mayibackstage/css/bootstrap.min.css" rel="stylesheet">
		<!-- index CSS -->
		<link href="<%=basePath%>jsp/mayibackstage/css/index.css" rel="stylesheet">
		<!-- jquery JS -->
		<script src="<%=basePath%>jsp/mayibackstage/js/jquery-3.3.1.js"></script>
		<!-- Bootstrap JS  -->
		<script src="<%=basePath%>jsp/mayibackstage/js/bootstrap.min.js"></script>
		<!-- 导入kindEditor所需插件 -->
		<link rel="stylesheet" href="<%=basePath%>plugins/kindeditor-4.1.10/themes/default/default.css" />
		<script src="<%=basePath%>plugins/kindeditor-4.1.10/kindeditor.js"></script>
		<script src="<%=basePath%>plugins/kindeditor-4.1.10/lang/zh_CN.js"></script>
		<script>
            var massage='${requestScope.massage}';
            //对话框只在服务器传递信息时才弹出
            if(massage!=''){
                alert(massage);
            }
			$(document).ready(function() {


				//当点击“清除图片路径”时，将清除图片路径信息
				$("#clearImagePath1").click(function() {
					$("input[id='url1']").attr('value', '');
				});

			});

			//实现kindeditor弹出图片上传窗口
			KindEditor.ready(function(K) {
				var editor = K.editor({ //图片上传
					//指定上传文件的服务器端程序。
					uploadJson: '<%=basePath%>plugins/kindeditor-4.1.10/jsp/upload_json.jsp',
					//指定浏览远程图片的服务器端程序
					fileManagerJson: '<%=basePath%>plugins/kindeditor-4.1.10/jsp/file_manager_json.jsp',
					//是否允许进行文件管理
					allowFileManager: true
				});
				K('#image1').click(function() {
					editor.loadPlugin('image', function() { //动态加载插件，image为插件名
						editor.plugin.imageDialog({
							showLocal: true, //是否显示本地图片上传窗口
							showRemote: true, //是否显示网络图片窗口	
							fillDescAfterUploadImage: false, //个人建议只在文本编辑器中使用true，true时图片上传成功后切换到图片编辑标签，false时插入图片后关闭弹出框。					 
							imageUrl: K('#url1').val(),
							clickFn: function(url, title, width, height, border, align) {
								K('#url1').val(url); //把上传后的图片路径放到指定的id为url1的对象中
								editor.hideDialog();
							}
						});
					});
				});
			});
		</script>
	</head>

	<body>
		<!--内容开始-->
		<div class="container-fluid">
			<div class="kuang" style="margin-top: 2%; margin-left: 5%;">
				<h5 class="">修改个人信息</h5>
			</div>
			<!--水平线-->
			<hr style="margin-left: 5%;" align="left" width="85%;" color="#FFAC0E" size="" />

			<!--表单开始-->
			<form action="<%=basePath%>mayibackstage/admin/doUpdate" class="form-horizontal" method="post">
				<input name="id" type="hidden" class="dfinput" value="${requestScope.admin.id}" />
				<div class="form-group">
					<label  class="col-sm-2 control-label">昵称</label>
					<div class="col-sm-3">
						<input name="a_name" type="text" class="form-control" value="${requestScope.admin.a_name}">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword3" class="col-sm-2 control-label">密码</label>
					<div class="col-sm-3">
						<input name="a_password" type="password" class="form-control" id="inputPassword3" value="${requestScope.admin.a_password}">
					</div>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">电话</label>
					<div class="col-sm-3">
						<input name="a_phone" type="text" class="form-control"  value="${requestScope.admin.a_phone}">
					</div>
				</div>
				<div class="form-group">
					<label  class="col-sm-2 control-label">年龄</label>
					<div class="col-sm-3">
						<input name="a_age" type="text" class="form-control"  value="${requestScope.admin.a_age}">
					</div>
				</div>
				<div class="form-group">

					<label for="exampleInputFile" class="col-sm-2 control-label">性别</label>
					<div class="col-sm-3">
					<label>
						<c:choose>
							<c:when  test="${requestScope.admin.a_sex==1}">
								<input name="a_sex" type="radio"    id="optionsRadios1" value="0" > 男
								<input name="a_sex" type="radio"  id="optionsRadios2"  value="1" checked>女
							</c:when>
							<c:otherwise>
								<input name="a_sex" type="radio"    id="optionsRadios1" value="0" checked> 男
								<input name="a_sex" type="radio"  id="optionsRadios2"  value="1" >女
							</c:otherwise>
						</c:choose>
					</label>
					</div>
				</div>
				<div class="form-group">

					<label for="exampleInputFile" class="col-sm-2 control-label">头像</label>
					<div class="col-sm-3">
						<input id="url1" name="a_images" type="text" class="dfinput" value="${requestScope.admin.a_images}" readonly="readonly">
						<input type="button" id="image1" class="dfinput" style="width:100px;" value="点我选择图片">
						<a href="#" id="clearImagePath1">清除路径</a>
						<i></i>

					</div>
				</div>

				<div class="form-group">
					<label  class="col-sm-2 control-label">职位</label>
					<div class="col-sm-3">
						<input name="a_position" type="text" class="form-control"  value="${requestScope.admin.a_position}">
					</div>
				</div>


				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-1">
						<button type="submit" style="background-color: #00A1EC;color: #FFFFFF;" class="btn btn-default">修改</button>

					</div>
					<div class="col-sm-offset-1 col-sm-1">
						<button type="reset" style="background-color: #C30202;color: #FFFFFF;" class="btn btn-default">重置</button>

					</div>
				</div>
			</form>

			<!--表单结束-->

			<!--内容结束-->
		</div>

	</body>

</html>