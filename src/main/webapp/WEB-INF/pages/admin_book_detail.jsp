<%@ page import="com.bai.utils.constants.Constants" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<title>《 ${detail.name}》</title>
	<link href="<c:url value="<%=Constants.StaticIcon.ICON_PATH%>"/>" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
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

<c:set var="current" value="2" scope="request"/>
<jsp:include page="common_header_admin.jsp"/>

<div class="col-xs-6 col-md-offset-3">
	<div class="panel panel-primary" style="position: relative;top: 100px">
		<div class="panel-heading">
			<h3 class="panel-title">《 ${detail.name}》</h3>
		</div>
		<div class="panel-body">
			<table class="table table-hover">
				<tbody>
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
					<th>数量</th>
					<td>${detail.number}</td>
				</tr>
				</tbody>
			</table>
		</div>
	</div>

</div>

</body>
</html>
