<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>${readercard.username}的主页</title>
	<link href="<c:url value="<%=Constants.StaticIcon.ICON_PATH%>"/>" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<script src="/static/js/js.cookie.js"></script>
	<script>
        $(function () {
            $('#header').load('reader_header.html');
        })
	</script>
</head>


<c:set var="current" value="2" scope="request"/>
<jsp:include page="common_header_reader.jsp"/>

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
<div class="col-xs-5 col-md-offset-3">
	<div class="panel panel-default" style="position: relative;top: 80px">
		<div class="panel-heading">
			<h3 class="panel-title">
				我的信息
			</h3>
		</div>
		<div class="panel-body">
			<table class="table table-hover">
				<tr>
					<th width="20%">读者证号</th>
					<td>${readerinfo.readerId}</td>
				</tr>
				<tr>
					<th>姓名</th>
					<td>${readerinfo.name}</td>
				</tr>
				<tr>
					<th>性别</th>
					<td>${readerinfo.sex}</td>
				</tr>
				<tr>
					<th>生日</th>
					<td>${readerinfo.birth}</td>
				</tr>
				<tr>
					<th>地址</th>
					<td>${readerinfo.address}</td>
				</tr>
				<tr>
					<th>电话</th>
					<td>${readerinfo.phone}</td>
				</tr>
				</tbody>
			</table>
		</div>
		<a class="btn btn-success btn-sm" href="reader_info_edit.html" role="button">修改</a>
	</div>
</div>


</body>
</html>
