<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>更改密码</title>
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

<c:set var="current" value="7" scope="request"/>
<jsp:include page="common_header_admin.jsp"/>

<div style="position: relative">
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
<div class="col-xs-6 col-md-offset-3" style="position: relative;top: 60px;">
	<div class="panel panel-primary ">
		<div class="panel-heading">
			<h3 class="panel-title">密码修改</h3>
		</div>
		<div class="panel-body">
			<form method="post" action="admin_repasswd_do" class="form-inline" id="repasswd">
				<div class="input-group">
					<input type="password" id="oldPasswd" name="oldPasswd" placeholder="输入旧密码" class="form-control"
					       class="form-control">
					<input type="password" id="newPasswd" name="newPasswd" placeholder="输入新密码" class="form-control"
					       class="form-control">
					<input type="password" id="reNewPasswd" name="reNewPasswd" placeholder="再次输入新密码"
					       class="form-control" class="form-control">
					<em id="tishi" style="color: red"></em>
					<br/>
					<span>
                            <input type="submit" value="提交" class="btn btn-default">
                    </span>
				</div>
			</form>
		</div>
	</div>
</div>
<script>
    $(document).keyup(function () {
        if ($("#newPasswd").val() != $("#reNewPasswd").val() && $("#newPasswd").val() != "" && $("#reNewPasswd").val() != "" && $("#newPasswd").val().length == $("#reNewPasswd").val().length) {
            $("#tishi").text("两次输入的新密码不同，请检查");
        } else {
            $("#tishi").text("");
        }
    })

    $("#repasswd").submit(function () {
        if ($("#oldPasswd").val() == '' || $("#newPasswd").val() == '' || $("#reNewPasswd").val() == '') {
            $("#tishi").text("请填写完毕后提交");
            return false;
        } else if ($("#newPasswd").val() != $("#reNewPasswd").val()) {
            $("#tishi").text("两次输入的新密码不同，请检查");
            return false;
        }
    })
</script>
</body>
</html>
