<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>蚂蚁后台管理系统</title>
	</head>
	<frameset rows="60,*" cols="*" frameborder="no" border="0" framespacing="0" style="">

		<frame src="<%=basePath%>jsp/mayibackstage/top.jsp" name="topFrame" scrolling="No" noresize="noresize" id="topFrame" title="topFrame" />
		<frameset cols="12%,*" frameborder="no" border="0" framespacing="0">
			<frame src="<%=basePath%>jsp/mayibackstage/left.jsp" name="leftFrame" scrolling="No" noresize="noresize" id="leftFrame" title="leftFrame" />
			
				<frame src="<%=basePath%>jsp/mayibackstage/main.jsp" name="mainFrame" id="mainFrame" title="mainFrame" />
				
		</frameset>
	</frameset>
	<noframes>

		<body>
		</body>
	</noframes>

</html>