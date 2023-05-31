<%--
  Created by IntelliJ IDEA.
  User: 云飘
  Date: 2020/6/5
  Time: 12:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>预约</title>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script type="text/javascript" src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<script src="/static/js/js.cookie.js"></script>
	<style>
        .panel-body div {
            margin-top: 20px;
        }

        .panel-body span {
            font-weight: 700;
        }

        .panel-body p {
            color: #669999;
            display: inline;
        }
	</style>
</head>
<body background="/static/img/1583851799.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">


<nav class="navbar navbar-default" role="navigation" style="background-color:#122b40">
	<div class="container-fluid">
		<div class="navbar-header" style="margin-left: 8%;margin-right: 1%">
			<a class="navbar-brand " href="reader_main.html"><p class="text-primary"
			                                                    style="font-family: 华文行楷; font-size: 200%; color: white ">
				我的图书馆</p></a>
		</div>
		<div class="collapse navbar-collapse" id="example-navbar-collapse">
			<ul class="nav navbar-nav navbar-left">
				<li class="active">
					<a href="reader_books.html" style="color: white">
						图书查询
					</a>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
						我的
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="reader_info.html">个人信息</a></li>
						<li class="divider"></li>
						<li><a href="mylend.html"> 我的借还</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown" style="color: white">
						图书馆预约
						<b class="caret"></b>
					</a>
					<ul class="dropdown-menu">
						<li><a href="reader_appoint_list.html">我的预约</a></li>
						<li class="divider"></li>
						<li><a href="reader_appoint_show.html">预约</a></li>
					</ul>
				</li>
				<li>
					<a href="reader_repasswd.html" style="color: white">
						密码修改
					</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="reader_info.html">${readercard.username}, 已登录</a></li>
				<li><a href="logout.html">退出</a></li>
			</ul>
		</div>
	</div>
</nav>


<div class="panel panel-default" style="width: 600px;position: relative;top: 80px;left:300px">
	<div class="panel panel-success">
		<div class="panel-heading">
			<h3 class="panel-title" style="text-align: center;">入馆预约</h3>
		</div>
		<div class="panel-body">
			<div><p>${appointinfo.appointText}</p></div>
			<div><span>预约人数:</span>
				<p>[${appointinfo.appointNum}]</p></div>
			<div><span>状态:</span>
				<c:choose>
					<c:when test="${appointinfo.appointNum < appointinfo.reappointNum}">
						<p>[预约正在进行中]</p>
					</c:when>
					<c:when test="${appointinfo.appointNum > appointinfo.reappointNum}">
						<p>[预约结束]</p>
					</c:when>
				</c:choose>
			</div>
			<div><span>允许预约角色:</span>
				<p>${appointinfo.appointRole}</p></div>
			<div><span>预约截止时间:</span>
				<p>${appointinfo.appointTime}</p></div>
			<div><span>入馆开始时间:</span>
				<p>08:00</p></div>
			<div><span>入馆结束时间:</span>
				<p>21:00</p></div>
			<div><span>入馆地点:</span>
				<p>图书馆</p></div>
			<div><span>入馆说明:</span>
				<p>${appointinfo.appointIns}</p></div>
		</div>
		<a href="reader_appoint.html" class="btn btn-success col-lg-2"
		   style="position: relative;left: 300px; top: 30px;">我要预约</a>
	</div>

</body>
</html>
