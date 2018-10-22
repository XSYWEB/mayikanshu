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
    <title>添加用户</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Bootstrap CSS -->
    <link href="<%=basePath%>jsp/mayibackstage/css/bootstrap.min.css" rel="stylesheet">
    <!-- jquery JS -->
    <script src="<%=basePath%>jsp/mayibackstage/js/jquery-3.3.1.js"></script>
    <!-- Bootstrap JS  -->
    <script src="<%=basePath%>jsp/mayibackstage/js/bootstrap.min.js"></script>

    <style>
        .breadcrumb {
            background-color: #FFFFFF;
        }
        .mar {
            margin-top: 1%;
        }
    </style>
    <script>
        var massage='${requestScope.massage}';
        //对话框只在服务器传递信息时才弹出
        if(massage!=''){
            alert(massage);
        }

    </script>
</head>

<body>
<!--内容开始-->
<div class="container-fluid">
    <div class="mar">
        <ol class="breadcrumb">
            <li>
                <a href="#">首页</a>
            </li>
            <li>
                <a href="#">书籍管理</a>
            </li>
            <li class="active">添加章节</li>


        </ol>

    </div>
    <div class="kuang" style="margin-top: 2%; margin-left: 5%;">
        <h5 class="">添加章节</h5>
    </div>
    <!--水平线-->
    <hr style="margin-left: 5%;" align="left" width="85%;" color="#FFAC0E" size="" />
   <div class="row">
       <div class="col-xs-offset-1 col-xs-4">
           <table class="table table-bordered table-hover table-striped">

                   <thead>
                   <tr>
                       <th>id</th>
                       <th>章节</th>
                   </tr>
                   </thead>

                   <tbody>

                   <c:forEach items="${requestScope.chapterList}" var="chapterList">

                   <tr>
                       <td> ${chapterList.id }</td>
                       <td><a href="#">${chapterList.chapters }</a></td>
                   </tr>

                   </c:forEach>

                   </tbody>

           </table>


       </div>

       <div class="col-xs-6">

           <!--表单开始-->
           <form class="form-horizontal" action="<%=basePath%>mayibackstage/chapter/doAddChapter" method="post">
               <div class="form-group">
                   <label class="col-sm-2 control-label">章节</label>
                   <div class="col-sm-10">
                       <input name="chapters" type="text" class="form-control"  placeholder="章节">
                   </div>
               </div>
               <div class="form-group">
                   <label  class="col-sm-2 control-label">章节内容</label>
                   <div class="col-sm-10">
                       <textarea name="content" cols="" rows="" class="form-control" id="description"></textarea><i id="description_message"></i>
                   </div>
               </div>

               <div class="form-group">
                   <div class="col-sm-offset-2 col-sm-1">
                       <button type="submit" style="background-color: #00A1EC;color: #FFFFFF;" class="btn btn-default">添加</button>

                   </div>
                   <div class="col-sm-offset-1 col-sm-1">
                       <button type="reset" style="background-color: #C30202;color: #FFFFFF;" class="btn btn-default">重置</button>

                   </div>
               </div>

           </form>

           <!--表单结束-->


       </div>
   </div>
    <!--内容结束-->
</div>

</body>

</html>