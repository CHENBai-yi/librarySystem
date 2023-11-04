<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>公告详情</title>
	<link href="<c:url value="<%=Constants.StaticIcon.icon_path%>"/>" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<style>
        .panel a {
            position: relative;
            top: 25px;
        }
	</style>
</head>

<c:set var="current" value="1" scope="request"/>
<jsp:include page="common_header_admin.jsp"/>
<div style="width: 600px;position: relative;left: 25%;top: 100px">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">${detail.newsTitle}</h3>
		</div>
		<div class="panel-body">
			${detail.newsContent}
		</div>
		<div class="panel-footer">发布时间:${detail.createTime}</div>
		<a href="admin_main.html" class="btn btn-primary col-lg-2">返回主页</a>
	</div>
</div>
</body>
</html>
