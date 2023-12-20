<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>编辑读者信息《 ${readerInfo.readerId}》</title>
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

<%--<div id="header" style="padding-bottom: 80px"></div>--%>
<c:set var="current" value="3" scope="request"/>
<jsp:include page="common_header_admin.jsp"/>

<div class="col-xs-6 col-md-offset-3" style="position: relative;top: 80px">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">编辑读者信息《 ${readerInfo.readerId}》</h3>
		</div>
		<div class="panel-body">
			<form action="reader_edit_do.html?readerId=${readerInfo.readerId}" method="post" id="readeredit">
				<div class="input-group">
					<span class="input-group-addon">姓名</span>
					<input type="text" class="form-control" name="name" id="name" value="${readerInfo.name}">
				</div>
				<div class="input-group">
					<span class="input-group-addon">性别</span>
					<input type="text" class="form-control" name="sex" id="sex" value="${readerInfo.sex}">
				</div>
				<div class="input-group">
					<span class="input-group-addon">生日</span>
					<input type="date" class="form-control" name="birth" id="birth" value="${readerInfo.birth}">
				</div>
				<div class="input-group">
					<span class="input-group-addon">地址</span>
					<input type="text" class="form-control" name="address" id="address" value="${readerInfo.address}">
				</div>
				<div class="input-group">
					<span class="input-group-addon">电话</span>
					<input type="text" class="form-control" name="phone" id="phone" value="${readerInfo.phone}">
				</div>
				<input type="submit" value="确定" class="btn btn-success btn-sm" class="text-left">
				<script>
                    $("#readeredit").submit(function () {
                        if ($("#name").val() == '' || $("#sex").val() == '' || $("#birth").val() == '' || $("#address").val() == '' || $("#phone").val() == '') {
                            alert("请填入完整读者信息！");
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
