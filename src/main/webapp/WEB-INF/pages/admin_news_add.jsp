<%--
  Created by IntelliJ IDEA.
  User: 云飘
  Date: 2020/6/4
  Time: 15:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
	<title>添加公告</title>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<style>
        label {
            font-size: 30px;
        }
	</style>
</head>
<body background="/static/img/1583851799.jpg"
      style=" background-repeat:no-repeat ;background-size:100% 100%;background-attachment: fixed;">

<nav style="position:fixed;z-index: 999;width: 100%;background-color:#122b40" class="navbar navbar-default"
     role="navigation">
	<div class="container-fluid">
		<div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
			<a class="navbar-brand" href="admin_main.html" style="font-family: 华文行楷; font-size: 250%; color: white">图书管理系统</a>
		</div>
		<div class="collapse navbar-collapse">
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
				<li class="dropdown">
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
				<li>
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


<form role="form" action="/admin_news_add_do.html" method="post">
	<div class="form-group" style="position: relative; top: 100px;left: 300px;">
		<label for="newsTitle">公告标题</label>
		<input type="text" class="form-control" placeholder="输入标题...." style="width: 300px;" name="newsTitle"
		       id="newsTitle">
		<br>
		<label for="exampleSelect">公告类型</label>
		<select class="form-control" name="newsType" id="exampleSelect" style="width: auto">
			<c:forEach items="${newsList}" var="news" varStatus="s">
				<option
						<c:if test="${news.code eq 0}">selected</c:if> value="${news.code}">
						${news.type}
				</option>
			</c:forEach>
		</select>
		<br>
		<label for="newsContent">公告内容</label>
		<textarea class="form-control" rows="15" cols="20" placeholder="输入公告的内容...." style="width: 600px;"
		          name="newsContent" id="newsContent"></textarea>
		<button class="btn bg-primary col-lg-1" type="submit" style="position: relative; top: 20px;">提交</button>
	</div>
</form>
</body>
</html>
