<%--
  Created by IntelliJ IDEA.
  User: 云飘
  Date: 2020/6/5
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>预约管理</title>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <script src="/static/js/jquery-3.2.1.js"></script>
    <script src="/static/js/bootstrap.min.js" ></script>
</head>
<body  background="/static/img/1583851799.jpg" style=" background-repeat:no-repeat ;
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


<div class="panel panel-default" style="width: 90%;margin-left: 5%">
    <div class="panel-heading" style="background-color: #fff">
        <h3 class="panel-title">
            全部预约公告
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>发布人</th>
                <th>发布时间</th>
                <th>修改时间</th>
                <th>状态</th>

            </tr>
            </thead>
            <tbody>
                <tr>
                    <td><c:out value="${appointInfo.adminName}"></c:out></td>
                    <td><c:out value="${appointInfo.createTime}"></c:out></td>
                    <td>${appointInfo.updateTime}</td>
                    <td>
                        <c:choose>

                            <c:when test="${appointInfo.createTime !=null}">
                             发布成功
                            </c:when>
                            <c:otherwise>
                                发布失败
                            </c:otherwise>
                        </c:choose>
                    </td>
                    <td><a href="admin_appointinfo_edit.html" class="btn btn-sm btn-primary">编辑</a></td>
                </tr>
            </tbody>
        </table>
        <a href="admin_main.html" class="btn col-lg-2 btn-success">返回首页</a>
    </div>
</div>
</body>
</html>
