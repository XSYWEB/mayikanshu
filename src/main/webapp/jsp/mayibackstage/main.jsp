<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>首页</title>

    <link href="<%=basePath%>jsp/mayibackstage/css/bootstrap.css" rel="stylesheet">
    <link href="<%=basePath%>jsp/mayibackstage/css/bootstrap.min.css" rel="stylesheet">
    <script src="<%=basePath%>jsp/mayibackstage/js/jquery-3.3.1.js"></script>

    <style type="text/css">
        .mar-100 {
            margin-left: 30px;
            margin-top: 30px;
        }

        .entrance {
            height: 100px;
            margin: 0 60px 0 15px;
        }

        .middle {
            font-weight: bold;
            font-size: 18px;
            color: #FFFFFF;
        }

        h1 {
            margin-top: 35px;
            display: inline-block;
            vertical-align: middle;
            font-weight: bold;
            color: #FFFFFF;
        }

        .tablelist {
            border: solid 1px #cbcbcb;
            width: 100%;
            clear: both;
        }

        .tablelist th {
            height: 34px;
            line-height: 34px;
            border-bottom: solid 1px #b6cad2;
            text-indent: 11px;
        }

        .tablelist td {
            line-height: 35px;
            text-indent: 11px;
            border-right: dotted 1px #c7c7c7;
        }
        .tablelist tbody tr:hover {
            background: #e5ebee;
        }

        .bt {
            font-size: 20px;
            margin-top: 30px;
        }

        .max-bt {
            margin-top: 20px;
            font-size: 20px;
            font-weight: 800;
        }

        .num-left {
            margin-top: 18px;
        }

        .num {
            font-size: 30px;
            font-weight: 800;
            color: #FFFFFF;
        }

        .num-md {
            font-size: 15px;
            color: #FFFFFF;
        }

        .num-sm {
            font-size: 12px;
            color: #FFFFFF;
        }

        .tubiao {
            color: #FFFFFF;
            font-size: 50px;
            float: right;
            margin-top: 25px;
        }

        .odd {
            background-color: #F5F8FA;
        }
    </style>

    <script language="javascript">

        function getCurDate()
        {
            var d = new Date();
            var week;
            switch (d.getDay()){
                case 1: week="星期一"; break;
                case 2: week="星期二"; break;
                case 3: week="星期三"; break;
                case 4: week="星期四"; break;
                case 5: week="星期五"; break;
                case 6: week="星期六"; break;
                default: week="星期天";
            }
            var years = d.getFullYear();
            var month = add_zero(d.getMonth()+1);
            var days = add_zero(d.getDate());
            var hours = add_zero(d.getHours());
            var minutes = add_zero(d.getMinutes());
            var seconds=add_zero(d.getSeconds());
//          var ndate = years+"年"+month+"月"+days+"日 "+hours+":"+minutes+":"+seconds+" "+week;

            var ndate = years+"-"+month+"-"+days;       //年月日
            var ntime = hours+":"+minutes+":"+seconds;  //时分秒
            var nweek =week;                             //周

            var div1=document.getElementById("logInfo");  //年月日
            var div2=document.getElementById("hours");    //时分秒
            var div3=document.getElementById("week");    //周

            div1.innerHTML= ndate;
            div2.innerHTML= ntime;
            div3.innerHTML= nweek;
        }
        function add_zero(temp)
        {
            if(temp<10) return "0"+temp;
            else return temp;
        }
        setInterval("getCurDate()",100);
    </script>

</head>

<body>
<div class="container-fluid">

    <div class="mar-100 bt">

        <span style="color: red; font-weight: 800;">${sessionScope.admin.a_name} &nbsp;&nbsp; </span>

        <span>欢迎使用蚂蚁看书后台管理系统！</span>

    </div>
    <div class="mar-100">
        <div class="max-bt">
            <span>快捷入口</span>
        </div>
        <hr align="left" width="98%;" color="#FFAC0E"/>

        <div class="row">
            <!--今日新增书籍-->
            <a href="<%=basePath%>mayibackstage/book/booklist" target="mainFrame">
                <div class="row col-xs-2 entrance" style="background-color: #99CCFF;">

                    <div class="col-xs-8 num-left">
                        <span class="num">${sessionScope.yesbook}</span><span class="num-md">本</span>
                        <p class="num-sm">昨日新增书籍</p>
                    </div>
                    <div class="col-xs-4">
                        <span class=" tubiao glyphicon glyphicon-book"></span>
                    </div>

                </div>
            </a>
            <!--今日新增书籍结束-->
            <!--今日新增用户-->
            <a href="<%=basePath%>mayibackstage/user/userlist" target="mainFrame">
                <div class="row col-xs-2 entrance" style="background-color: #FFCC99;">

                    <div class="col-xs-8 num-left">
                        <span class="num">${sessionScope.yesuser}</span><span class="num-md">人</span>
                        <p class="num-sm">昨日新增用户</p>
                    </div>
                    <div class="col-xs-4">
                        <span class=" tubiao glyphicon glyphicon-user"></span>
                    </div>

                </div>
            </a>
            <!--今日新增用户结束-->
            <!--今日新增咨询-->
            <a href="#">
                <div class="row col-xs-2 entrance" style="background-color:#67B168;">

                    <div class="col-xs-8 num-left">
                        <span class="num">68</span><span class="num-md">条</span>
                        <p class="num-sm">今日新增资讯</p>
                    </div>
                    <div class="col-xs-4">
                        <span class=" tubiao glyphicon glyphicon-list-alt"></span>
                    </div>

                </div>
            </a>
            <!--今日新增咨询结束-->

            <!--日期-->
            <div class="col-xs-3" style="height: 100px;">
                <div class="row">
                    <div class="col-xs-5 text-center"
                         style="height: 100px;background-color: #FFAC0E; padding-top: 25px;">
                        <!--周-->
                        <span class="middle" id="week"></span>
                        <!--年月日-->
                        <p><span class="middle" id="logInfo"></span></p>
                    </div>
                    <div class="col-xs-7 float-left text-center" style="height: 100px;background-color: #CCCCCC;padding: 19px;">
                        <!--时分秒-->
                        <span class="" style="font-size: 45px; color: #FFFFFF; " id="hours"></span>
                    </div>
                </div>
            </div>
            <!--日期结束-->
        </div>
    </div>

    <div class="row">
        <div class="col-xs-11">

            <div class="mar-100 text-center" style="margin-right: 73px;">
                <div class="max-bt">
                    <span style="float: left">本周点击数最多的书</span>
                </div>
                <hr align="left" width="100%;" color="#FFAC0E" size="15"/>

                <table class="tablelist">
                    <thead style="background-color: #F0F5F7;">
                    <tr>
                        <th style="width:10%;text-align: center">点击数</th>
                        <th style="width:15%;text-align: center">书名</th>
                        <th style="width:15%;text-align: center">所属分类</th>
                        <th style="width:15%;text-align: center">作者</th>
                        <th style="width:12%;text-align: center">字数</th>
                        <th style="width:28%;text-align: center">收录时间</th>
                    </tr>
                    </thead>
                    <tbody>

                    <c:forEach var="click" items="${sessionScope.clickbook}">
                    <tr>
                        <td>${click.b_click}</td>
                        <td>${click.b_name}</td>
                        <td>${click.t_id.t_name}</td>
                        <td>${click.b_writer}</td>
                        <td>${click.b_num}</td>
                        <td>${click.b_num}</td>
                    </tr>

                    </c:forEach>
                    </tbody>
                </table>
            </div>

        </div>



    </div>

</div>
</body>

</html>