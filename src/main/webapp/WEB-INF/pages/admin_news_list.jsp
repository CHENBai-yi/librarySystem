<%--
  Created by IntelliJ IDEA.
  User: 云飘
  Date: 2020/6/4
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>Title</title>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
</head>
<body background="/static/img/1583851799.jpg"
      style=" background-repeat:no-repeat ;background-size:100% 100%;background-attachment: fixed;">
<c:set var="current" value="1" scope="request"/>
<jsp:include page="common_header_admin.jsp"/>

<div class="panel panel-default" style="width: 90%;margin-left: 5%">
	<div class="panel-heading" style="background-color: #fff">
		<h3 class="panel-title">
			全部公告
		</h3>
	</div>
	<div class="panel-body">
		<table class="table table-hover">
			<thead>
			<tr>
				<th>公告标题</th>
				<%--                <th>公告内容</th>--%>
				<th>发布人</th>
				<th>发布时间</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${newsList}" var="news">
			<tr>
				<td><c:out value="${news.newsTitle}"></c:out></td>
					<%--                <td><c:out value="${news.newsContent}"></c:out></td>--%>
				<td><c:out value="${news.newsAdmin}"></c:out></td>
				<td><c:out value="${news.createTime}"></c:out></td>
				<td><a href="admin_news_detail.html?newsId=<c:out value="${news.newsId}"></c:out>">
					<button type="button" class="btn btn-success btn-xs">详情</button>
				</a></td>
				<td><a href="admin_news_edit.html?newsId=<c:out value="${news.newsId}"> </c:out>">
					<button type="button" class="btn btn-info btn-xs">编辑</button>
				</a></td>
				<td><a href="admin_news_delete.html?newsId=<c:out value="${news.newsId}"> </c:out>">
					<button type="button" class="btn btn-danger btn-xs">删除</button>
				</a></td>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>
