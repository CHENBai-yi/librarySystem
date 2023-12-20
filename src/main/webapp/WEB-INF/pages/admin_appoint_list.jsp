<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>所有预约记录</title>
	<link href="<c:url value="<%=Constants.StaticIcon.ICON_INDEX%>"/>" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>

</head>

<c:set var="current" value="4" scope="request"/>
<jsp:include page="common_header_admin.jsp"/>


<div class="panel panel-default" style="width: 90%;position: relative;top: 120px;left: 50px">
	<div class="panel-heading">
		<h3 class="panel-title">
			预约记录列表
		</h3>
	</div>
	<div class="panel-body">
		<table class="table table-hover">
			<thead>
			<tr>
				<th>预约的账号</th>
				<th>预约人</th>
				<th>预约位置</th>
				<th>预约书本</th>
				<th>状态</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${appointList}" var="appoint">
				<tr>
					<td>${appoint.readerId}</td>
					<td>${appoint.username}</td>
					<td>${appoint.location}</td>
					<td>${appoint.bookName}</td>
					
					<c:choose>
						<c:when test="${appoint.bookName !=null}">
							<td>成功</td>
						</c:when>
						<c:otherwise>
							<td>失败</td>
						</c:otherwise>
					</c:choose>
					<td><a href="delete_appoint_do?appointId=${appoint.appointId}"
					       class="btn btn-sm btn-danger">删除</a></td>
				</tr>
			</c:forEach>
			
			</tbody>
		</table>
	</div>

</div>

</body>
</html>
