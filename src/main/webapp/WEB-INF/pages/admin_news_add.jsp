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

<jsp:include page="common_header_admin.jsp"/>

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
