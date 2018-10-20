<%--
  Created by IntelliJ IDEA.
  User: 御坂
  Date: 2018/10/15
  Time: 22:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 ><a href="<%=basePath%>jsp/mayibackstage/login.jsp">点我去后台</a></h1>
</body>
</html>
