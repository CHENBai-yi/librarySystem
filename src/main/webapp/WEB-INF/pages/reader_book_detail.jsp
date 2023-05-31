<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>《 ${detail.name}》</title>
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


<div class="col-xs-6 col-md-offset-3" style="position: relative;top: 8%">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">《 ${detail.name}》</h3>
		</div>
		<div class="panel-body">
			<table class="table table-hover">
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
					<th>状态</th>
					<c:if test="${detail.number>1}">
						<td>在馆</td>
					</c:if>
					<c:if test="${detail.number==0}">
						<td>借出</td>
					</c:if>
				
				</tr>
				</tbody>
			</table>
		</div>
	</div>

</div>

</body>
</html>
