<%--
  Created by IntelliJ IDEA.
  User: 云飘
  Date: 2020/6/6
  Time: 0:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>修改发布预约信息</title>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
</head>
<body background="/static/img/1583851799.jpg"
      style=" background-repeat:no-repeat ;background-size:100% 100%;background-attachment: fixed;">
<c:set var="current" value="1" scope="request"/>
<jsp:include page="common_header_admin.jsp"/>

<div class="col-xs-6 col-md-offset-3" style="position:relative;top:150px">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">修改预约信息</h3>
		</div>
		<div class="panel-body">
			<form action="admin_appointinfo_edit_do.html" method="post" id="addAppointInfo">
				
				<div class="input-group">
					<span class="input-group-addon">截止时间</span>
					<input type="date" class="form-control" name="appointTime" id="appointTime"
					       value="${appointInfo.appointTime}">
				</div>
				<div class="input-group">
					<span class="input-group-addon">预约须知</span>
					<textarea class="form-control" rows="4" name="appointText"
					          id="appointText">${appointInfo.appointText}</textarea>
				</div>
				<div class="input-group">
					<span class="input-group-addon">限制预约人数</span>
					<input type="number" class="form-control" name="reappointNum" id="reappointNum"
					       value="${appointInfo.reappointNum}" aria-describedby="sizing-addon1">
				</div>
				<div class="input-group">
					<span class="input-group-addon">预约说明</span>
					<textarea class="form-control" rows="4" name="appointIns"
					          id="appointIns">${appointInfo.appointIns}</textarea>
				</div>
				<div class="input-group">
					<span class="input-group-addon">预约角色说明</span>
					<textarea class="form-control" rows="4" name="appointRole"
					          id="appointRole">${appointInfo.appointRole}</textarea>
				</div>
				
				<input type="submit" value="修改" class="btn btn-success col-lg-2" class="text-left"
				       style="position: relative;top: 10px;">
				<script>
                    $("#addAppointInfo").submit(function () {
                        if ($("#appointTime").val() == '' || $("#appointText").val() == '' || $("#reappointNum").val() == '' || $("#appointIns").val() == '' || $("#appointRole").val() == '') {
                            alert("请填入完整的预约编辑信息！");
                            return false;
                        }
                    })
				</script>
			</form>
		</div>
	</div>
</div>
</body>
</html>
