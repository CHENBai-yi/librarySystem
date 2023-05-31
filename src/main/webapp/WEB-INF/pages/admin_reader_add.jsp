<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>添加读者</title>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
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


<div class="col-xs-6 col-md-offset-3" style="padding-top: 100px;position: relative">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">添加读者</h3>
		</div>
		<div class="panel-body">
			<form action="reader_add_do.html" method="post" id="readeredit">
				<div class="input-group" style="padding-top: 20px;">
					<span class="input-group-addon">密码</span>
					<input type="password" class="form-control" name="password" id="password">
				</div>
				<div class="input-group" style="padding-top: 20px;">
					<span class="input-group-addon">姓名</span>
					<input type="text" class="form-control" name="name" id="name">
				</div>
				<div class="input-group" style="padding-top: 20px;">
					<span class="input-group-addon">性别</span>
					<input type="text" class="form-control" name="sex" id="sex">
				</div>
				<div class="input-group" style="padding-top: 20px;">
					<span class="input-group-addon">生日</span>
					<input type="date" class="form-control" name="birth" id="birth">
				</div>
				<div class="input-group" style="padding-top: 20px;">
					<span class="input-group-addon">地址</span>
					<input type="text" class="form-control" name="address" id="address">
				</div>
				<div class="input-group" style="padding-top: 20px;">
					<span class="input-group-addon">电话</span>
					<input type="text" class="form-control" name="phone" id="phone">
				</div>
				<input style="align-items: center" type="submit" value="添加" class="btn btn-success btn-sm"
				       class="text-left">
				<script>
                    function mySubmit(flag) {
                        return flag;
                    }

                    $("#readeredit").submit(function () {
                        if ($("#password").val() == '' || $("#name").val() == '' || $("#sex").val() == '' || $("#birth").val() == '' || $("#address").val() == '' || $("#phone").val() == '') {
                            alert("请填入完整读者信息！");
                            return mySubmit(false);
                        }
                    })
				</script>
			</form>
		</div>
	</div>

</div>

</body>
</html>
