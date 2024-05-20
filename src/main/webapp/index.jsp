<%--
  Created by IntelliJ IDEA.
  User: pc001
  Date: 2023/4/27
  Time: 15:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<html>--%>
<%--<head>--%>
<%--	<title>Title</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<jsp:forward page="/index"></jsp:forward>--%>
<%--</body>--%>
<%--</html>--%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>上传Bug</title>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>
<h1>上传Bug</h1>
<form id="bugForm">
	<label for="reason">原因：</label>
	<input type="text" id="reason" name="reason" required><br>
	<label for="testEnvironment">测试环境：</label>
	<input type="text" id="testEnvironment" name="testEnvironment" required><br>
	<label for="tester">测试人员：</label>
	<input type="text" id="tester" name="tester" required><br>
	<label for="progress">更改进度：</label>
	<input type="number" id="progress" name="progress" min="0" max="100" required><br>
	<button type="submit">提交</button>
</form>
<div id="result"></div>
<script>
    $(document).ready(function () {
        $("#bugForm").on("submit", function (event) {
            event.preventDefault();
            var reason = $("#reason").val();
            var testEnvironment = $("#testEnvironment").val();
            var tester = $("#tester").val();
            var progress = $("#progress").val();
            $.ajax({
                url: "/uploadBug",
                type: "POST",
                data: {
                    reason: reason,
                    testEnvironment: testEnvironment,
                    tester: tester,
                    progress: progress
                },
                success: function (response) {
                    if (response.status == "success") {
                        $("#result").html("<p>Bug已成功上传！</p >");
                    } else {
                        $("#result").html(`<p>\${response.msg}，上传失败，请重试。</p >`);
                    }
                }
            });
        });
    });
</script>
</body>
</html>
