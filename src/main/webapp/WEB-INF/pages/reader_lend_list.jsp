<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>我的借还</title>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<script src="/static/js/js.cookie.js"></script>

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


<div style="position: relative;top: 10%">
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

<div class="panel panel-default" style="width: 90%;margin-left: 5%;margin-top: 5%">
	<div class="panel-heading">
		<h3 class="panel-title">
			我的借还日志
		</h3>
	</div>
	<div class="panel-body">
		<table class="table table-hover">
			<thead>
			<tr>
				<th>图书号</th>
				<th>借出日期</th>
				<th>归还日期</th>
				<th>状态</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${list}" var="alog">
				<tr>
					<td><c:out value="${alog.bookId}"></c:out></td>
					<td><c:out value="${alog.lendDate}"></c:out></td>
					<td><c:out value="${alog.backDate}"></c:out></td>
					<c:if test="${empty alog.backDate}">
						<td>未还</td>
					</c:if>
					<c:if test="${!empty alog.backDate}">
						<td>已还</td>
					</c:if>
					<c:if test="">
						<td>超期</td>
					</c:if>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</div>

</body>
</html>
