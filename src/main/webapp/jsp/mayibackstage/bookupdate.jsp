<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%><!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>添加管理员</title>
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
    <link rel="stylesheet" href="<%=basePath%>plugins/kindeditor-4.1.10/themes/default/default.css"/>
    <script src="<%=basePath%>plugins/kindeditor-4.1.10/kindeditor.js"></script>
    <script src="<%=basePath%>plugins/kindeditor-4.1.10/lang/zh_CN.js"></script>
    <script>
        //用于弹出窗口，将服务器返回的数据提交，本处用于账户提交后的状态
        function alert_myMessage() {
            var message = "${requestScope.myMessage}";
            if (message != "") {
                alert(message);
            }
        }
    </script>
    <style>
        .breadcrumb {
            background-color: #FFFFFF;
        }

        .mar {
            margin-top: 1%;
        }
    </style>
    <script>
        var massage = '${requestScope.massage}';
        //对话框只在服务器传递信息时才弹出
        if (massage != '') {
            alert(massage);
        }
        $(document).ready(function () {

            //当点击“清除图片路径”时，将清除图片路径信息
            $("#clearImagePath1").click(function () {
                $("input[id='url1']").attr('value', '');
            });

        });

        //实现kindeditor弹出图片上传窗口
        KindEditor.ready(function (K) {
            var editor = K.editor({ //图片上传
                //指定上传文件的服务器端程序。
                uploadJson: '<%=basePath%>plugins/kindeditor-4.1.10/jsp/upload_json.jsp',
                //指定浏览远程图片的服务器端程序
                fileManagerJson: '<%=basePath%>plugins/kindeditor-4.1.10/jsp/file_manager_json.jsp',
                //是否允许进行文件管理
                allowFileManager: true
            });
            K('#image1').click(function () {
                editor.loadPlugin('image', function () { //动态加载插件，image为插件名
                    editor.plugin.imageDialog({
                        showLocal: true, //是否显示本地图片上传窗口
                        showRemote: true, //是否显示网络图片窗口
                        fillDescAfterUploadImage: false, //个人建议只在文本编辑器中使用true，true时图片上传成功后切换到图片编辑标签，false时插入图片后关闭弹出框。
                        imageUrl: K('#url1').val(),
                        clickFn: function (url, title, width, height, border, align) {
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
        <h5 class="">添加管理员</h5>
    </div>
    <!--水平线-->
    <hr style="margin-left: 5%;" align="left" width="85%;" color="#FFAC0E" size=""/>

    <!--表单开始-->
    <form class="form-horizontal" action="<%=basePath%>mayibackstage/book/doUpdateBook" method="post">
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">产品分类</label>
            <div style="position:relative;height: 30px; " class="col-xs-3 ">

                <select id="_select" name="t_id.id" class="form-control" onchange="setRuleContent();"> 

                    <c:forEach var="bookTypeslist" items="${requestScope.bookTypeslist}">

                        <c:choose>
                            <c:when
                                    test="${bookTypeslist.id==requestScope.book.t_id.id}">
                                <option value="${bookTypeslist.id}" selected="selected">${bookTypeslist.t_name}</option>
                            </c:when>
                            <c:otherwise>
                                <option value="${bookTypeslist.id}">${bookTypeslist.t_name}</option>
                            </c:otherwise>
                        </c:choose>

                    </c:forEach>

                </select>


            </div>
        </div>
        <div class="form-group">
            <label for="inputEmail3" class="col-sm-2 control-label">书名</label>
            <input name="id" type="hidden" value="${requestScope.book.id}" >
            <div class="col-sm-3">
                <input name="b_name" type="text" value="${requestScope.book.b_name}" class="form-control"
                       id="inputEmail3" placeholder="b_name">
            </div>
        </div>

        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">作者</label>
            <div class="col-sm-3">
                <input name="b_writer" type="text" value="${requestScope.book.b_writer}" class="form-control" id=""
                       placeholder="b_writer">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">价格</label>
            <div class="col-sm-3">
                <input name="b_price" type="text" value="${requestScope.book.b_price}" class="form-control" id=""
                       placeholder="b_price">
            </div>
        </div>

        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">点击数</label>
            <div class="col-sm-3">
                <input name="b_click" type="text" value="${requestScope.book.b_click}" class="form-control"
                       id="inputPassword3" placeholder="b_click">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">字数</label>
            <div class="col-sm-3">
                <input name="b_num" type="text" value="${requestScope.book.b_num}" class="form-control"
                       id="inputPassword3" placeholder="b_num">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">推荐值</label>
            <div class="col-sm-3">
                <input name="b_recommend" type="text" value="${requestScope.book.b_recommend}" class="form-control"
                       id="inputPassword3" placeholder="b_recommend">
            </div>
        </div>
        <div class="form-group">
            <label for="inputPassword3" class="col-sm-2 control-label">简介</label>
            <div class="col-sm-3">

                <textarea style="width:290px;height:100px;" name="b_describe">${requestScope.book.b_describe}</textarea>
            </div>
        </div>

        <div class="form-group">

            <label for="exampleInputFile" class="col-sm-2 control-label">书本图片</label>
            <div class="col-sm-3">
                <input id="url1" name="b_image" value="${requestScope.book.b_image}" type="text" class="dfinput"
                       value="" readonly="readonly">
                <input type="button" id="image1" class="dfinput" style="width:100px;" value="点我选择图片">
                <a href="#" id="clearImagePath1">清除路径</a>
                <i></i>

            </div>
        </div>

        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-1">
                <button type="submit" style="background-color: #00A1EC;color: #FFFFFF;" class="btn btn-default">确认修改
                </button>

            </div>
            <div class="col-sm-offset-1 col-sm-1">
                <button type="reset" style="background-color: #C30202;color: #FFFFFF;" class="btn btn-default">重置
                </button>

            </div>
        </div>
    </form>

    <!--表单结束-->

    <!--内容结束-->
</div>

</body>

</html>