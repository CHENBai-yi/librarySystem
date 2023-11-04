<%@ page import="com.bai.utils.constants.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
	<title>添加读者</title>
	<link href="<c:url value="<%=Constants.StaticIcon.icon_path%>"/>" rel="shortcut icon"
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
<c:set var="padding_add" value="true" scope="request"/>
<jsp:include page="common_header_admin.jsp"/>

<div class="col-xs-6 col-md-offset-3">
	<div class="panel panel-primary">
		<div class="panel-heading">
			<h3 class="panel-title">添加读者</h3>
		</div>
		<div class="panel-body">
			<form action="reader_add_do.html" method="post" id="readeredit">
				<div class="input-group" style="padding-top: 20px;">
					<span class="input-group-addon">密码</span>
					<input type="password" class="form-control" name="password" id="password">
				</div>
				<div class="input-group" style="padding-top: 20px;">
					<span class="input-group-addon">姓名</span>
					<input type="text" class="form-control" name="name" id="name">
				</div>
				<div class="input-group" style="padding-top: 20px;">
					<span class="input-group-addon">性别</span>
					<input type="text" class="form-control" name="sex" id="sex">
				</div>
				<div class="input-group" style="padding-top: 20px;">
					<span class="input-group-addon">生日</span>
					<input type="date" class="form-control" name="birth" id="birth">
				</div>
				<div class="input-group" style="padding-top: 20px;">
					<span class="input-group-addon">地址</span>
					<input type="text" class="form-control" name="address" id="address">
				</div>
				<div class="input-group" style="padding-top: 20px;">
					<span class="input-group-addon">电话</span>
					<input type="text" class="form-control" name="phone" id="phone">
				</div>
				<input style="align-items: center" type="submit" value="添加" class="btn btn-success btn-sm"
				       class="text-left">
				<script>
                    function mySubmit(flag) {
                        return flag;
                    }

                    $("#readeredit").submit(function () {
                        if ($("#password").val() == '' || $("#name").val() == '' || $("#sex").val() == '' || $("#birth").val() == '' || $("#address").val() == '' || $("#phone").val() == '') {
                            alert("请填入完整读者信息！");
                            return mySubmit(false);
                        }
                    })
				</script>
			</form>
		</div>
	</div>

</div>
<div class="col-xs-6 col-md-offset-3">
	<div class="panel panel-default">
		<div class="panel-heading">
			<h3 class="panel-title"> 批量导入 </h3>
		</div>
		<form action="<c:url value="/upload/excel"/>" method="post" enctype="multipart/form-data" id="boundFile_form">
			<div class="panel-body">
				<div class="form-group form-group col-xs-11 ">
					<div class="input-group">
						<script type="text/javascript">
                            function getFileName(even) {
                                console.log(even)
                                let file = even.files
                                console.log(file)
                                if (!!file && file.length > 0) {
                                    let name = file[0].name;
                                    let size = file[0].size;
                                    let number = Math.ceil(size / 1024 / 1024);
                                    $("#readonly_control")[0].value = name + "   " + number + "MB"
                                }
                            }
						</script>
						<label class="input-group-btn" for="boundFile">
                                <span class="btn btn-default">
                                    选择文件<input type="file" name="boundFile" id="boundFile"
                                                   style="display: none;" onchange="getFileName(this)">
	                                
                                </span>
						</label>
						<input type="text" class="form-control" value="" readonly id="readonly_control">
					</div>
				</div>
				<button class="btn btn-success" type="submit">上传</button>
				<h3 class="alert-info">${Message}</h3>
			</div>
		</form>
	</div>
</div>

</body>
</html>
