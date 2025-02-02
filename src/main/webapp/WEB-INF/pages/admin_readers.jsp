<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>全部读者</title>
	<link href="<c:url value="<%=Constants.StaticIcon.ICON_PATH%>"/>" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
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

<c:set var="current" value="3" scope="request"/>
<jsp:include page="common_header_admin.jsp"/>


<c:if test="${!empty info}">
	<script>alert("${info}");
    window.location.href = "allreaders.html"
	</script>
</c:if>

<div style="position: relative;top: 15%">
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


<div class="panel panel-default" style="position:relative;top: 110px;width: 90%;margin-left: 5%">
	<div class="panel-heading" style="
	display: flex;
    flex-direction: row;
    justify-content: space-between;">
		<h3 class="panel-title">
			全部读者
		</h3>
		<h3 class="panel-title">
			<a class="btn btn-success btn-xs" style="color: #fff;" href="<c:url value="/download/excel"/>">导出</a>
		</h3>
	</div>
	<div class="panel-body">
		<table class="table table-hover">
			<thead>
			<tr>
				<th>读者号</th>
				<th>姓名</th>
				<th>性别</th>
				<th>生日</th>
				<th>地址</th>
				<th>电话</th>
				<th>编辑</th>
				<th>删除</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${readers}" var="reader">
				<tr>
					<td><c:out value="${reader.readerId}"></c:out></td>
					<td><c:out value="${reader.name}"></c:out></td>
					<td><c:out value="${reader.sex}"></c:out></td>
					<td><c:out value="${reader.birth}"></c:out></td>
					<td><c:out value="${reader.address}"></c:out></td>
					<td><c:out value="${reader.phone}"></c:out></td>
					<td><a href="reader_edit.html?readerId=<c:out value="${reader.readerId}"></c:out>">
						<button type="button" class="btn btn-info btn-xs">编辑</button>
					</a></td>
					<td><a href="reader_delete.html?readerId=<c:out value="${reader.readerId}"></c:out>">
						<button type="button" class="btn btn-danger btn-xs">删除</button>
					</a></td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>
