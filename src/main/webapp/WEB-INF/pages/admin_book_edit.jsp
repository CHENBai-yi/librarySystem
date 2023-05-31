<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>编辑《 ${detail.name}》</title>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
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


<div class="col-xs-6 col-md-offset-3" style="position: relative;">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">编辑《 ${detail.name}》</h3>
		</div>
		<div class="panel-body">
			<form action="book_edit_do.html?bookId=${detail.bookId}" method="post" id="addbook">
				
				<div class="input-group">
					<span class="input-group-addon">书名</span>
					<input type="text" class="form-control" name="name" id="name" value="${detail.name}">
				</div>
				<div class="input-group">
					<span class="input-group-addon">作者</span>
					<input type="text" class="form-control" name="author" id="author" value="${detail.author}">
				</div>
				<div class="input-group">
					<span class="input-group-addon">出版社</span>
					<input type="text" class="form-control" name="publish" id="publish" value="${detail.publish}">
				</div>
				<div class="input-group">
					<span class="input-group-addon">ISBN</span>
					<input type="text" class="form-control" name="ISBN" id="ISBN" value="${detail.ISBN}">
				</div>
				<div class="input-group">
					<span class="input-group-addon">简介</span>
					<input type="text" class="form-control" name="introduction" id="introduction"
					       value="${detail.introduction}">
				</div>
				<div class="input-group">
					<span class="input-group-addon">语言</span>
					<input type="text" class="form-control" name="language" id="language" value="${detail.language}">
				</div>
				<div class="input-group">
					<span class="input-group-addon">价格</span>
					<input type="text" class="form-control" name="price" id="price" value="${detail.price}">
				</div>
				<div class="input-group">
					<span class="input-group-addon">出版日期</span>
					<input type="date" class="form-control" name="pubstr" id="pubstr" value="${detail.pubDate}">
				</div>
				<div class="input-group">
					<span class="input-group-addon">分类号</span>
					<input type="text" class="form-control" name="classId" id="classId" value="${detail.classId}">
				</div>
				<div class="input-group">
					<span class="input-group-addon">数量</span>
					<input type="text" class="form-control" name="number" id="number" value="${detail.number}">
				</div>
				<input type="submit" value="确定" class="btn btn-success btn-sm" class="text-left">
				<script>
                    $("#addbook").submit(function () {
                        if ($("#name").val() == '' || $("#author").val() == '' || $("#publish").val() == '' || $("#ISBN").val() == '' || $("#introduction").val() == '' || $("#language").val() == '' || $("#price").val() == '' || $("#pubstr").val() == '' || $("#classId").val() == '' || $("#number").val() == '') {
                            alert("请填入完整图书信息！");
                            return false;
                        }
                    })
				</script>
			</form>
		</div>
	</div>

</div>

</body>
</html>
