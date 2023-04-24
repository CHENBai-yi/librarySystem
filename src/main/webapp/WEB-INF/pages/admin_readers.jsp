<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>全部读者</title>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <script src="/static/js/jquery-3.2.1.js"></script>
    <script src="/static/js/bootstrap.min.js" ></script>
    <script src="/static/js/js.cookie.js"></script>
<%--    <script>--%>
<%--        $(function () {--%>
<%--            $('#header').load('admin_header.html');--%>
<%--        })--%>
<%--    </script>--%>
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
                        借还管理
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="lendlist.html">借还日志</a></li>
                    </ul>
                </li>
                <li >
                    <a href="admin_repasswd.html" style="color: white">
                        密码修改
                    </a>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.html" style="color: white">${admin.username}- 已登录</a>
                </li>
                <li><a href="logout.html" style="color: white">退出</a></li>
            </ul>
        </div>
    </div>
</nav>

<c:if test="${!empty info}">
    <script>alert("${info}");window.location.href="allreaders.html"</script>
</c:if>

<div style="position: relative;top: 15%">
<c:if test="${!empty succ}">
    <div class="alert alert-success alert-dismissable">
        <button type="button" class="close" data-dismiss="alert"
                aria-hidden="true">
            &times;
        </button>
            ${succ}
    </div>
</c:if>
<c:if test="${!empty error}">
    <div class="alert alert-danger alert-dismissable">
        <button type="button" class="close" data-dismiss="alert"
                aria-hidden="true">
            &times;
        </button>
            ${error}
    </div>
</c:if>
</div>


<div class="panel panel-default" style="position:relative;top: 80px;width: 90%;margin-left: 5%">
    <div class="panel-heading">
        <h3 class="panel-title">
            全部读者
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover" >
            <thead>
            <tr>
                <th>读者号</th>
                <th>姓名</th>
                <th>性别</th>
                <th>生日</th>
                <th>地址</th>
                <th>电话</th>
                <th>编辑</th>
                <th>删除</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${readers}" var="reader">
                <tr>
                    <td><c:out value="${reader.readerId}"></c:out></td>
                    <td><c:out value="${reader.name}"></c:out></td>
                    <td><c:out value="${reader.sex}"></c:out></td>
                    <td><c:out value="${reader.birth}"></c:out></td>
                    <td><c:out value="${reader.address}"></c:out></td>
                    <td><c:out value="${reader.phone}"></c:out></td>
                    <td><a href="reader_edit.html?readerId=<c:out value="${reader.readerId}"></c:out>"><button type="button" class="btn btn-info btn-xs">编辑</button></a></td>
                    <td><a href="reader_delete.html?readerId=<c:out value="${reader.readerId}"></c:out>"><button type="button" class="btn btn-danger btn-xs">删除</button></a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
