<%@ page import="com.bai.utils.constants.Constants" %><%--
  Created by IntelliJ IDEA.
  User: 云飘
  Date: 2020/6/19
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<link href="<c:url value="<%=Constants.StaticIcon.icon_path%>"/>" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<title>注册</title>
</head>
<body background="/static/img/1583851799.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<c:if test="${not empty readerId}">
	<div class="alert alert-success" role="alert">
		<div>
			<p>恭喜注册成功</p>
		</div>
		<div>
			<p>登录账号：${readerId}</p>
		</div>
		<a href="<c:url value="/new_login"/> " class="alert-link">返回登录页面</a>
	</div>
</c:if>

<div class="panel panel-default" style="width: 50%;position: relative; top: 100px; left: 300px;">
	<!-- Default panel contents -->
	<div class="panel-heading">注册借阅证</div>
	<div class="panel-body">
		<form class="form-horizontal" action="/reader_register.do" method="post">
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">姓名:</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="name" name="name" placeholder="姓名">
				</div>
			</div>
			<div class="form-group">
				<label for="sex" class="col-sm-2 control-label">性别</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="sex" id="sex" placeholder="性别">
				</div>
			</div>
			<div class="form-group">
				<label for="birth" class="col-sm-2 control-label">生日</label>
				<div class="col-sm-10">
					<input type="date" class="form-control" name="birth" id="birth" placeholder="生日">
				</div>
			</div>
			<div class="form-group">
				<label for="address" class="col-sm-2 control-label">地址</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="address" id="address" placeholder="地址">
				</div>
			</div>
			<div class="form-group">
				<label for="phone" class="col-sm-2 control-label">电话</label>
				<div class="col-sm-10">
					<input type="tel" class="form-control" id="phone" name="phone" name="password"
					       placeholder="电话">
				</div>
			</div>
			<!-- <div class="form-group">
				<label for="readerId" class="col-sm-2 control-label">学号</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="readerId" id="readerId" placeholder="学号">
				</div>
			</div> -->
			<div class="form-group">
				<label for="password" class="col-sm-2 control-label">登录密码</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" id="password" name="password" placeholder="密码">
				</div>
			</div>
			
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-primary">注册</button>
				</div>
			</div>
		</form>
	</div>
</div>
</body>
</html>
