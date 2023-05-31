<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>${readercard.username}的主页</title>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<script src="/static/js/js.cookie.js"></script>
	<script>
        $(function () {
            $('#header').load('reader_header.html');
        })
	</script>
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
<div class="col-xs-5 col-md-offset-3">
	<div class="panel panel-default" style="position: relative;top: 80px">
		<div class="panel-heading">
			<h3 class="panel-title">
				我的信息
			</h3>
		</div>
		<div class="panel-body">
			<table class="table table-hover">
				<tr>
					<th width="20%">读者证号</th>
					<td>${readerinfo.readerId}</td>
				</tr>
				<tr>
					<th>姓名</th>
					<td>${readerinfo.name}</td>
				</tr>
				<tr>
					<th>性别</th>
					<td>${readerinfo.sex}</td>
				</tr>
				<tr>
					<th>生日</th>
					<td>${readerinfo.birth}</td>
				</tr>
				<tr>
					<th>地址</th>
					<td>${readerinfo.address}</td>
				</tr>
				<tr>
					<th>电话</th>
					<td>${readerinfo.phone}</td>
				</tr>
				</tbody>
			</table>
		</div>
		<a class="btn btn-success btn-sm" href="reader_info_edit.html" role="button">修改</a>
	</div>
</div>


</body>
</html>
