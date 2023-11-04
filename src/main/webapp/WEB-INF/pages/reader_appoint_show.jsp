<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>预约</title>
	<link href="<c:url value="<%=Constants.StaticIcon.icon_path%>"/>" rel="shortcut icon"
	      type="image/vnd.microsoft.icon"/>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script type="text/javascript" src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<script src="/static/js/js.cookie.js"></script>
	<style>
        .panel-body div {
            margin-top: 20px;
        }

        .panel-body span {
            font-weight: 700;
        }

        .panel-body p {
            color: #669999;
            display: inline;
        }
	</style>
</head>


<c:set var="current" value="3" scope="request"/>
<jsp:include page="common_header_reader.jsp"/>


<div class="panel panel-default" style="width: 600px;position: relative;top: 80px;left:300px">
	<div class="panel panel-success">
		<div class="panel-heading">
			<h3 class="panel-title" style="text-align: center;">入馆预约</h3>
		</div>
		<div class="panel-body">
			<div><p>${appointinfo.appointText}</p></div>
			<div><span>预约人数:</span>
				<p>[${appointinfo.appointNum}]</p></div>
			<div><span>状态:</span>
				<c:choose>
					<c:when test="${appointinfo.appointNum < appointinfo.reappointNum}">
						<p>[预约正在进行中]</p>
					</c:when>
					<c:when test="${appointinfo.appointNum > appointinfo.reappointNum}">
						<p>[预约结束]</p>
					</c:when>
				</c:choose>
			</div>
			<div><span>允许预约角色:</span>
				<p>${appointinfo.appointRole}</p></div>
			<div><span>预约截止时间:</span>
				<p>${appointinfo.appointTime}</p></div>
			<div><span>入馆开始时间:</span>
				<p>08:00</p></div>
			<div><span>入馆结束时间:</span>
				<p>21:00</p></div>
			<div><span>入馆地点:</span>
				<p>图书馆</p></div>
			<div><span>入馆说明:</span>
				<p>${appointinfo.appointIns}</p></div>
		</div>
		<a href="reader_appoint.html" class="btn btn-success col-lg-2"
		   style="position: relative;left: 300px; top: 30px;">我要预约</a>
	</div>

</body>
</html>
