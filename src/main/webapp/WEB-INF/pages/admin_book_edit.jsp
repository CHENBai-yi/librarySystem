<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<html>
<head>
	<title>编辑《 ${detail.name}》</title>
	<link rel="stylesheet" href="/static/css/bootstrap.min.css">
	<script src="/static/js/jquery-3.2.1.js"></script>
	<script src="/static/js/bootstrap.min.js"></script>
	<script src="/static/js/js.cookie.js"></script>
	<style type="text/css">
        .btn-upload {
            background-color: #337ab7;
            color: #fff;
            border-radius: 0;
            border: none;
        }

        .btn-upload:hover, .btn-upload:focus {
            background-color: #286090;
            color: #fff;
            border: none;
            outline: none;
        }

        #bookCoverPreview {
            max-width: 200px;
            max-height: 300px;
            margin: 10px auto;
            display: block;
        }
	</style>
	<script>
        $(function () {
            $('#header').load('admin_header.html');
        })

        $(document).ready(function () {
            $("#bookCoverInp").change(function () {
                readURL(this);
            });
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#bookCoverPreview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
	</script>
</head>
<body background="/static/img/1583851799.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<c:set var="current" value="2" scope="request"/>
<jsp:include page="common_header_admin.jsp"/>
<div class="container">
	<div class="panel panel-primary" style="position: relative; top: 100px">
		<div class="panel-heading">
			<h3 class="panel-title">编辑《 ${detail.name}》</h3>
		</div>
		<div class="panel-body">
			<form action="book_edit_do.html?bookId=${detail.bookId}" method="post" id="addbook"
			      enctype="multipart/form-data">
				<div class="row">
					<div class="col-md-6 ">
						<div class="input-group">
							<span class="input-group-addon">书名</span>
							<input type="text" class="form-control" name="name" id="name" value="${detail.name}">
						</div>
						<div class="input-group">
							<span class="input-group-addon">作者</span>
							<input type="text" class="form-control" name="author" id="author" value="${detail.author}">
						</div>
						<div class="input-group">
							<span class="input-group-addon">出版社</span>
							<input type="text" class="form-control" name="publish" id="publish"
							       value="${detail.publish}">
						</div>
						<div class="input-group">
							<span class="input-group-addon">ISBN</span>
							<input type="text" class="form-control" name="ISBN" id="ISBN" value="${detail.ISBN}">
						</div>
						<div class="input-group">
							<span class="input-group-addon">简介</span>
							<input type="text" class="form-control" name="introduction" id="introduction"
							       value="${detail.introduction}">
						</div>
						<div class="input-group">
							<span class="input-group-addon">语言</span>
							<input type="text" class="form-control" name="language" id="language"
							       value="${detail.language}">
						</div>
						<div class="input-group">
							<span class="input-group-addon">价格</span>
							<input type="text" class="form-control" name="price" id="price" value="${detail.price}">
						</div>
						<div class="input-group">
							<span class="input-group-addon">出版日期</span>
							<input type="date" class="form-control" name="pubstr" id="pubstr"
							       value="<fmt:formatDate value="${detail.pubDate}" pattern="yyyy-MM-dd"/>">
						</div>
						<div class="input-group">
							<span class="input-group-addon">分类号</span>
							<input type="text" class="form-control" name="classId" id="classId"
							       value="${detail.classId}">
						</div>
						<div class="input-group">
							<span class="input-group-addon">数量</span>
							<input type="text" class="form-control" name="number" id="number" value="${detail.number}">
						</div>
						<input type="submit" value="确定" class="btn btn-success btn-sm" class="text-left">
						<script>
                            $("#addbook").submit(function () {
                                if ($("#name").val() == '' || $("#author").val() == '' || $("#publish").val() == '' || $("#ISBN").val() == '' || $("#introduction").val() == '' || $("#language").val() == '' || $("#price").val() == '' || $("#pubstr").val() == '' || $("#classId").val() == '' || $("#number").val() == '') {
                                    alert("请填入完整图书信息！");
                                    return false;
                                }
                            })
						</script>
					
					</div>
					<div class="col-md-4 ">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h3 class="panel-title"> Book Cover Upload </h3>
							</div>
							<div class="panel-body">
								<div class="form-group">
									<label for="bookCoverInp">选择图书封面：</label>
									<div class="input-group">
										<label class="input-group-btn">
                                <span class="btn btn-default">
                                    选择文件<input type="file" name="bookCoverInp" id="bookCoverInp"
                                                   style="display: none;">
                                </span>
										</label>
										<input type="text" class="form-control" readonly>
									</div>
								</div>
								<div class="form-group text-center">
									<img id="bookCoverPreview" alt="预览图书封面"
									<c:choose>
									     <c:when test="${detail.coverImg!=null}">src="${detail.coverImg}"</c:when>
									     <c:otherwise>src="#" </c:otherwise>
									</c:choose>
									>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	
	</div>
</div>


</body>
</html>
