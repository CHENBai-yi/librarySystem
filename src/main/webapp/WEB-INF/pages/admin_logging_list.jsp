<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>登录日志</title>
	<link href="<c:url value="<%=Constants.StaticIcon.icon_path%>"/>" rel="shortcut icon"
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
<body background="/static/img/1583851799.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<c:set var="current" value="4" scope="request"/>
<jsp:include page="common_header_admin.jsp"/>

<div style="position: relative;padding-top: 100px">
	<c:if test="${!empty succ}">
		<div class="alert alert-success alert-dismissable">
			<button type="button" class="close" data-dismiss="alert"
			        aria-hidden="true">
				&times;
			</button>
				${succ}
		</div>
	</c:if>
	<c:if test="${!empty error}">
		<div class="alert alert-danger alert-dismissable">
			<button type="button" class="close" data-dismiss="alert"
			        aria-hidden="true">
				&times;
			</button>
				${error}
		</div>
	</c:if>
</div>
<div class="panel panel-default" style="width: 90%;margin-left: 5%">
	<div class="panel-heading">
		<h3 class="panel-title">
			登录日志
		</h3>
	</div>
	<div class="panel-body">
		<table class="table table-hover">
			<thead>
			<tr>
				<th>IP地址</th>
				<th>国家</th>
				<th>地区</th>
				<th>省份</th>
				<th>城市</th>
				<th>运营商</th>
				<th>日期</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${list}" var="alog">
				<tr>
					<td><c:out value="${alog.ipAddress}"></c:out></td>
					<td><c:out value="${alog.country}"></c:out></td>
					<td><c:out value="${alog.region}"></c:out></td>
					<td><c:out value="${alog.province}"></c:out></td>
					<td><c:out value="${alog.city}"></c:out></td>
					<td><c:out value="${alog.isp}"></c:out></td>
					<td><c:out value="${alog.date}"></c:out></td>
					<td>
						<a href="deletelogging.html?serNum=<c:out value='${alog.ipAddress}'></c:out>">
							<button type="button" class="btn btn-danger btn-xs">删除</button>
						</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</div>

</body>
</html>
