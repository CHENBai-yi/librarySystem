<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>《 ${detail.name}》</title>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <script src="/static/js/jquery-3.2.1.js"></script>
    <script src="/static/js/bootstrap.min.js" ></script>
    <script src="/static/js/js.cookie.js"></script>
    <script>
        $(function () {
            $('#header').load('admin_header.html');
        })
    </script>
</head>
<body background="/static/img/1583851799.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<nav style="position:fixed;z-index: 999;width: 100%;background-color:#122b40" class="navbar navbar-default"
     role="navigation">
    <div class="container-fluid">
        <div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
            <a class="navbar-brand" href="admin_main.html" style="font-family: 华文行楷; font-size: 250%; color: white">图书管理系统</a>
        </div>
        <div class="collapse navbar-collapse" >
            <ul class="nav navbar-nav navbar-left">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
                        图书馆管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="admin_news_add.html">发布公告</a></li>
                        <li class="divider"></li>
                        <li><a href="admin_news_list.html">公告管理</a></li>
                        <li class="divider"></li>
                        <li><a href="admin_appoint_add.html">发布预约信息</a></li>
                        <li class="divider"></li>
                        <li><a href="admin_appoint_info.html">预约管理</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
                        图书管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="admin_books.html">全部图书</a></li>
                        <li class="divider"></li>
                        <li><a href="book_add.html">增加图书</a></li>
                    </ul>
                </li>
                <li class="dropdown" >
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
                        读者管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="allreaders.html">全部读者</a></li>
                        <li class="divider"></li>
                        <li><a href="reader_add.html">增加读者</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
                        日志管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="lendlist.html">借还日志</a></li>
                        <li><a href="admin_appoint_list.html">预约日志</a></li>
                    </ul>
                </li>
                <li >
                    <a href="admin_repasswd.html" style="color: white">
                        密码修改
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.html" style="color: white">${admin.username}-已登录</a>
                </li>
                <li><a href="logout.html" style="color: white">退出</a></li>
            </ul>
        </div>
    </div>
</nav>


<div class="col-xs-6 col-md-offset-3">
    <div class="panel panel-primary" style="position: relative;top: 100px">
        <div class="panel-heading">
            <h3 class="panel-title">《 ${detail.name}》</h3>
        </div>
        <div class="panel-body">
            <table class="table table-hover">
                <tbody>
                <tr>
                    <th width="15%">书名</th>
                    <td>${detail.name}</td>
                </tr>
                <tr>
                    <th>作者</th>
                    <td>${detail.author}</td>
                </tr>
                <tr>
                    <th>出版社</th>
                    <td>${detail.publish}</td>
                </tr>
                <tr>
                    <th>ISBN</th>
                    <td>${detail.ISBN}</td>
                </tr>
                <tr>
                    <th>简介</th>
                    <td>${detail.introduction}</td>
                </tr>
                <tr>
                    <th>语言</th>
                    <td>${detail.language}</td>
                </tr>
                <tr>
                    <th>价格</th>
                    <td>${detail.price}</td>
                </tr>
                <tr>
                    <th>出版日期</th>
                    <td>${detail.pubDate}</td>
                </tr>
                <tr>
                    <th>分类号</th>
                    <td>${detail.classId}</td>
                </tr>
                <tr>
                    <th>数量</th>
                    <td>${detail.number}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

</div>

</body>
</html>
