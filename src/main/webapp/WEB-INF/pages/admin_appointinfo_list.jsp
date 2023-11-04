<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>预约管理</title>
	<link href="<c:url value="<%=Constants.StaticIcon.icon_path%>"/>" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
</head>

<c:set var="current" value="1" scope="request"/>
<jsp:include page="common_header_admin.jsp"/>


<div class="panel panel-default" style="width: 90%;margin-left: 5%">
	<div class="panel-heading" style="background-color: #fff">
		<h3 class="panel-title">
			全部预约公告
		</h3>
	</div>
	<div class="panel-body">
		<table class="table table-hover">
			<thead>
			<tr>
				<th>发布人</th>
				<th>发布时间</th>
				<th>修改时间</th>
				<th>状态</th>
			
			</tr>
			</thead>
			<tbody>
			<tr>
				<td><c:out value="${appointInfo.adminName}"></c:out></td>
				<td><c:out value="${appointInfo.createTime}"></c:out></td>
				<td>${appointInfo.updateTime}</td>
				<td>
					<c:choose>
						<c:when test="${appointInfo.createTime !=null}">
							发布成功
						</c:when>
						<c:otherwise>
							发布失败
						</c:otherwise>
					</c:choose>
				</td>
				<td><a href="<c:url value="/admin_appointinfo_edit.html"/>" class="btn btn-sm btn-primary">编辑</a></td>
			</tr>
			</tbody>
		</table>
		<a href="<c:url value="/admin_main.html"/> " class="btn col-lg-2 btn-success">返回首页</a>
	</div>
</div>
</body>
</html>
