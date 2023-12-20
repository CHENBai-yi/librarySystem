<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>我的预约记录</title>
	<link href="<c:url value="<%=Constants.StaticIcon.ICON_PATH%>"/>" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>

</head>


<c:set var="current" value="3" scope="request"/>
<jsp:include page="common_header_reader.jsp"/>

<div class="panel panel-default" style="width: 90%;margin-left: 5%;margin-top: 5%">
	<div class="panel-heading">
		<h3 class="panel-title">
			我的预约
		</h3>
	</div>
	<div class="panel-body">
		<table class="table table-hover">
			<thead>
			<tr>
				<th>预约位置</th>
				<th>预约书本</th>
				<th>预约时间</th>
				<%--                <th>状态</th>--%>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${appoints}" var="appoint">
			<tr>
				<td>${appoint.location}</td>
				<td>${appoint.bookName}</td>
				<td>${appoint.appointTime}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>

</div>

</body>
</html>
